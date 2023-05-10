using ImTools;
using Prism.Commands;
using System;
using System.Collections.Generic;
using System.IO;

using Xamarin.Forms;
using Xaxplorer.Models;

namespace Xaxplorer.ViewModels
{

    public class MainPageViewModel : ViewModelBase
    {
        private string _myCurrentDirectory;
        private bool _myCanSave,_myIsTapped,_myIsMove,_myIsRefreshing;
        private FileSystemItem _myFSysItem,_myTappedItem,_myHoldItem;
        private List<FileSystemItem> _myFileSystemItemsList;

        //Es la variable utilizada para obtener el directorio en el que nos situamos.
        //El campo "Title View" de la vista obtiene el texto de aquí.
        public string CurrentDirectory
        {

            get
            {

                return _myCurrentDirectory;

            }
            set
            {
                _myCurrentDirectory = value;
                ListDirectory();
                RaisePropertyChanged(nameof(CurrentDirectory));
            }

        }

        //Es el bool encargado de determinar si los botones "Save" y "Cancel" dirigidos a las acciones "Copiar" y "Mover" estan activados o no.
        public bool CanSave
        {
            get => _myCanSave;
            set { _myCanSave = value; }
        }

        //Es el bool encargado de diferenciar si el elemento de la "Collection View" ha sido pulsado o sigue presionandose.
        public bool IsTapped
        {
            get { return _myIsTapped; }
            set { _myIsTapped = value; }
        }

        //Es el bool encargado de determinar si la accion llevada por el metodo "CopyItem" es realizar una copia o de mover el item.
        public bool IsMove
        {
            get { return _myIsMove; }
            set { _myIsMove = value; }
        }

        //Bool encargado de determinar cuando empieza y acaba el efecto de "refrescar" de la Refresh View.
        public bool IsRefreshing
        {
            get { return _myIsRefreshing; }
            set { _myIsRefreshing = value; RaisePropertyChanged(nameof(IsRefreshing)); }
        }

        public FileSystemItem FSysItem
        {
            get { return _myFSysItem; }
            set { _myFSysItem = value; }
        }
        public FileSystemItem TappedItem
        {
            get { return _myTappedItem; }
            set { _myTappedItem = value; }
        }
        public FileSystemItem HoldItem
        {
            get { return _myHoldItem; }
            set { _myHoldItem = value; }
        }
        public List<FileSystemItem> FileSystemItemsList
        {

            get
            {

                return _myFileSystemItemsList;

            }

            set
            {

                _myFileSystemItemsList = value;
                RaisePropertyChanged(nameof(FileSystemItemsList));
            }
        }
        public DelegateCommand CreateFileCommand { get; set; }
        public DelegateCommand CreateDirectoryCommand { get;  set; }
        public DelegateCommand<object> ItemTappedCommand { get; set; }
        public DelegateCommand<object> ItemHoldCommand { get; set; }
        public DelegateCommand GoBackCommand { get; set; }
        public DelegateCommand RefreshCommand { get; set; }
        public Command SaveItemCommand { get; }
        public Command CancelSaveCommand { get; }

        public MainPageViewModel()
        {
            CurrentDirectory = "/storage/emulated/0";
            

            IsTapped = true;
            CreateFileCommand = new DelegateCommand(CreateFile);
            CreateDirectoryCommand = new DelegateCommand(CreateDirectory);
            ItemTappedCommand = new DelegateCommand<object>(ItemTapped);
            ItemHoldCommand = new DelegateCommand<object>(ItemHold);
            GoBackCommand = new DelegateCommand(GoBack);
            RefreshCommand = new DelegateCommand(Refresh);
            SaveItemCommand = new Xamarin.Forms.Command(SaveItem, CanExecute);
            CancelSaveCommand = new Xamarin.Forms.Command(CancelSave, CanExecute);
        }

        //Metodo que solicita al usuario un nombre y extension de archivo para crearlo.
        private async void CreateFile()
        {
            string name = await App.Current.MainPage.DisplayPromptAsync("Create a File", "Input the name and the extension of your desired file");
            if (name == null)
            {

                name = "New text file.txt";

            }
            Boolean check = false;

            string[] arrayNombre = new string[2];
            try
            {
                arrayNombre[0] = name.Substring(0, name.LastIndexOf('.'));
            }
            catch (Exception)
            {
                arrayNombre[0] = name;
                name = name + ".txt";
            }
            string[] arrayAuxiliar = name.Split('.');
            arrayNombre[1] = name.Substring(name.LastIndexOf('.'), arrayAuxiliar[arrayAuxiliar.Length - 1].Length + 1);

            while (File.Exists(CurrentDirectory + "/" + name))
            {
                if (!check)
                {
                    name = arrayNombre[0] + " (1)" + arrayNombre[1];
                    check = true;
                }
                else
                {
                    name = name.Replace("(", "/").Replace(")", "/");
                    arrayAuxiliar = name.Split('/');
                    arrayAuxiliar[1] = (int.Parse(arrayAuxiliar[1]) + 1).ToString();

                    name = arrayAuxiliar[0] + "(" + arrayAuxiliar[1] + ")" + arrayNombre[1];
                }
            }
            File.Create(CurrentDirectory + "/" + name);
            ListDirectory();
        }

        //Metodo que solicita al usuario un nombre para crear un directorio.
        private async void CreateDirectory()
        {
            string name = await App.Current.MainPage.DisplayPromptAsync("Create a Folder", "Input your desired folder name");
            if (name == null)
            {

                name = "New Folder";

            }

            Boolean check = false;
            string[] arrayAuxiliar;

            while (Directory.Exists(CurrentDirectory + "/" + name))
            {

                if (!check)
                {

                    name += " (1)";
                    check = true;

                }
                else
                {

                    name = name.Replace("(", "/").Replace(")", "/");
                    arrayAuxiliar = name.Split('/');
                    arrayAuxiliar[1] = (int.Parse(arrayAuxiliar[1]) + 1).ToString();

                    name = arrayAuxiliar[0] + "(" + arrayAuxiliar[1] + ")";

                }
            }

            Directory.CreateDirectory(CurrentDirectory + "/" + name);
            ListDirectory();

        }

        //Metodo llamado por el ItemTappedCommand.
        //Controla el codigo que se tiene que ejecutar tras una interacción de tipo "Tap" sobre un elemento del "Collection View".
        private void ItemTapped(object obj)
        {
            if (IsTapped)
            {
                TappedItem = (FileSystemItem)obj;

                if (Directory.Exists(TappedItem.path))
                {
                    if (TappedItem.path.Equals("/storage/emulated/0/Android/data") | TappedItem.path.Equals("/storage/emulated/0/Android/obb"))
                    {
                        var myIntentService = DependencyService.Get<IMyIntentService>();
                        myIntentService.StartActivity(TappedItem.path);
                    }
                    else
                    {
                        CurrentDirectory = TappedItem.path;
                    }
                }
                else
                {
                    //var myFileSelectorIntent = DependencyService.Get<IMyFileSelectorIntent>();
                    //myFileSelectorIntent.StartActivity(TappedItem.path);

                }
            }
        }

        //Metodo llamado por el "ItemHoldCommand", y que se encarga de ejecutar codigo cuando algun elemento del "Collection View" es presionado durante cierto tiempo.
        //Abre un menu contextual que permite al usuario elegir entre "Renombrar","Eliminar","Mover" o "Copiar" un item.
        private async void ItemHold(object sender)
        {
            IsTapped = false;

            HoldItem = sender as FileSystemItem;

            string action = await App.Current.MainPage.DisplayActionSheet(HoldItem.name, "Cancel", "Delete", "Rename", "Copy", "Move");
            switch (action)
            {
                case "Delete":
                    if(await App.Current.MainPage.DisplayAlert("Confirmation", "Are you sure you want to delete this item?", "Yes", "No"))
                    {
                        DeleteItem(HoldItem.path);
                    }
                    break;
                case "Move":
                    IsMove = true;
                    CanSave = true;
                    SaveItemCommand.ChangeCanExecute();
                    CancelSaveCommand.ChangeCanExecute();
                    break;
                case "Copy":
                    IsMove = false;
                    CanSave = true;
                    SaveItemCommand.ChangeCanExecute();
                    CancelSaveCommand.ChangeCanExecute();
                    break;
                case "Rename":
                    string newName = await App.Current.MainPage.DisplayPromptAsync("Input the new name","",placeholder:HoldItem.name);
                    if(newName != null)
                    {
                        RenameItem(HoldItem.path, newName);
                    }
                    break;
                default: break;
            }

            IsTapped = true;
        }

        //Metodo async que llaman otros metodos para realizar la copia o la transferencia de un item.
        //Interactua con el usuario en caso de encontrarse con archivos duplicados.
        private async void CopyItem(string oldPath, string newPath)

        {
            if (Directory.Exists(oldPath))
            {

                foreach (string dir in Directory.GetDirectories(oldPath))
                {
                    string nuevoPath = Path.Combine(newPath, Path.GetFileName(dir));

                    Directory.CreateDirectory(nuevoPath);

                    CopyItem(dir, nuevoPath);
                }

                foreach (string file in Directory.GetFiles(oldPath))
                {
                    string nuevoArchivo = newPath + "/" + Path.GetFileName(file);

                    if (File.Exists(nuevoArchivo))
                    {
                        string action = await App.Current.MainPage.DisplayActionSheet("Warning, there's already the same item here", "Cancel", "Overwrite");
                        if (action == "Overwrite")
                        {
                            File.Delete(nuevoArchivo);
                        }
                    }
                    if (!File.Exists(nuevoArchivo))
                    {

                        File.Copy(file, Path.Combine(newPath, Path.GetFileName(file)));
                    }
                }
                
            }
            else if (File.Exists(oldPath))
            {
                string nuevoArchivo = newPath + "/" + Path.GetFileName(oldPath);
                if (File.Exists(nuevoArchivo))
                {
                    string action = await App.Current.MainPage.DisplayActionSheet("Warning, there's already the same item here", "Cancel", "Overwrite");
                    if (action == "Overwrite")
                    {
                        File.Delete(nuevoArchivo);
                    }
                }

                if (!File.Exists(nuevoArchivo))
                {
                    File.Copy(oldPath, newPath + "/" + Path.GetFileName(oldPath));

                    
                }
            }
        }

        private async void MoveItem(string oldPath, string newPath)
        {

            if (Directory.Exists(oldPath))
            {
                if(Directory.Exists(newPath))
                {
                    string action = await App.Current.MainPage.DisplayActionSheet("Warning, there's already the same item here", "Cancel", "Overwrite");
                    if (action == "Overwrite")
                    {
                        Directory.Delete(newPath, true);
                        
                    }

                }
                if (!Directory.Exists(newPath))
                {
                    Directory.Move(oldPath, newPath);
                }

            }
            else if (File.Exists(oldPath))
            {
                if (File.Exists(newPath))
                {
                    string action = await App.Current.MainPage.DisplayActionSheet("Warning, there's already the same item here", "Cancel", "Overwrite");
                    if (action == "Overwrite")
                    {
                        File.Delete(newPath);
                    }

                }
                if (!File.Exists(newPath))
                {
                    File.Move(oldPath, newPath);
                }
                
            }
            ListDirectory();

        } 

        //Metodo llamado en el constructor los Command "SaveItemCommand" y "CancelSaveCommand".
        //Devuelve el valor de CanSave, encargado de determinar si los dos comandos antes mencionados estan activos o no.
        private bool CanExecute(object obj)
        {
            return CanSave;
        }

        //Metodo encargado de la funcionalidad de "guardar" los elementos copiados o seleccionados para mover, en la carpeta actual.
        //Es llamado por el comando "SaveItemCommand".
        private void SaveItem(object obj)
        {

            if (Directory.Exists(HoldItem.path))
            {
                string nuevoItem = CurrentDirectory + "/" + HoldItem.name;
                if(IsMove)
                {
                    MoveItem(HoldItem.path, nuevoItem);
                }
                else {
                    if (!Directory.Exists(nuevoItem))
                    {
                        Directory.CreateDirectory(nuevoItem);
                    }
                    CopyItem(HoldItem.path, nuevoItem);
                }
                
            }
            else
            {
                if (IsMove)
                {
                    MoveItem(HoldItem.path, CurrentDirectory);
                }
                else
                {
                    CopyItem(HoldItem.path, CurrentDirectory);
                }
                
            }

            CanSave = false;
            SaveItemCommand.ChangeCanExecute();
            CancelSaveCommand.ChangeCanExecute();
            ListDirectory();

        }

        //Metodo utilizado para desactivar las opciones de "Save" (Guardar) o "Cancel" (Cancelar) durante una copia o traspaso de item, de forma que no hace falta ejecutar la acción final.
        private void CancelSave(object obj)
        {
            CanSave = false;
            SaveItemCommand.ChangeCanExecute();
            CancelSaveCommand.ChangeCanExecute();
        }

        //Metodo llamado para renombrar un item, ya sea directorio o archivo.
        //En su llamada, recibe la ruta del item en cuestion, asi como el nuevo nombre.
        private void RenameItem(string oldItemPath, string newItemName)
        {
            if(newItemName != "")
            {
                newItemName = Path.Combine(Directory.GetParent(oldItemPath).FullName, newItemName);

                if (Directory.Exists(oldItemPath))
                {
                    Directory.Move(oldItemPath, newItemName);

                }
                else if (File.Exists(oldItemPath))
                {
                    File.Move(oldItemPath, newItemName);
                }
                ListDirectory();
            }

        }

        //Metodo utilizado para la eliminación de un item.
        //Es llamado en el "DisplayActionSheet" del metodo "ItemHold"
        private void DeleteItem(string path)
        {
            Boolean result = false;
            if (Directory.Exists(path))
            {
                Directory.Delete(path, true);
                if (!Directory.Exists(path))
                {
                    result = true;
                }
            }
            else if (File.Exists(path))
            {
                File.Delete(path);
                if (!File.Exists(path))
                {
                    result = true;
                }
            }
            if (result)
            {
                ListDirectory();
            }
            else
            {
                //PopUp de error en la eliminación
            }
        }

        //Metodo que utilizan el resto de metodos para actualizar la Collection View de la vista.
        //Crea una lista de los directorios y archivos que contiene a partir del valor actual de la variable "CurrentDirectory" 
        private void ListDirectory()
        {

            string[] FileSystemItemsDirs = Directory.GetDirectories(CurrentDirectory);
            string[] FileSystemItemsFiles = Directory.GetFiles(CurrentDirectory);

            List<FileSystemItem> FileSystemItemList = new List<FileSystemItem>();
            FileSystemItem f;

            foreach (string fPath in FileSystemItemsDirs)
            {
                f = new FileSystemItem();
                f.name = System.IO.Path.GetFileName(fPath);
                f.path = fPath;
                f.creationDate = Directory.GetCreationTimeUtc(fPath);
                f.lastModificationDate = Directory.GetLastWriteTimeUtc(fPath);
                f.IconSetting(fPath);
                f.isDirectory = true;

                FileSystemItemList.Add(f);

            }

            foreach (string fPath in FileSystemItemsFiles)
            {
                f = new FileSystemItem();
                f.name = System.IO.Path.GetFileName(fPath);
                f.path = fPath;
                f.creationDate = Directory.GetCreationTimeUtc(fPath);
                f.lastModificationDate = Directory.GetLastWriteTimeUtc(fPath);
                f.IconSetting(fPath);

                FileSystemItemList.Add(f);

            }
            FileSystemItemsList = FileSystemItemList;
        }

        //Metodo utilizado en la navegación de los archivos.
        //Su funcionalidad principal es la de regresar a directorio anterior / padre.
        private void GoBack()
        {
            if (CurrentDirectory != "/storage/emulated/0")
            {
                string parentDir = Directory.GetParent(CurrentDirectory).FullName;

                CurrentDirectory = parentDir;
                
            }
        }

        //Metodo llamado por el comando RefreshCommand, actualiza la lista de items al hacer scroll.
        private void Refresh()
        {

            ListDirectory();

            IsRefreshing = false;

        }
    }
}