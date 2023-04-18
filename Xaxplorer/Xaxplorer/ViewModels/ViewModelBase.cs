using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace Xaxplorer.ViewModels
{

    public class ViewModelBase : INotifyPropertyChanged
    {

        

        protected void RaisePropertyChanged([CallerMemberName] string propertyName = null)
        {

            var handler = PropertyChanged;

            if (handler != null)
            {
                handler(this, new PropertyChangedEventArgs(propertyName));
            }

        }

        public event PropertyChangedEventHandler PropertyChanged;


    }


}