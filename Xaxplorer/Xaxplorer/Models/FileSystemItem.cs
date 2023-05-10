
using System;
using System.Collections.Generic;
using System.IO;
using System.Net.NetworkInformation;
using System.Text;
using System.Text.RegularExpressions;
using Xamarin.Essentials;
using Xamarin.Essentials.Interfaces;

namespace Xaxplorer.Models
{
    public class FileSystemItem
    {

        public string name {  get; set; }

        public string path { get; set; }

        public DateTime creationDate { get; set; }

        public DateTime lastModificationDate { get; set; }

        public string iconPath { get; set; }

        public Boolean isDirectory { get; set; }

        public override string ToString()
        {
            return path;
        }

        public void IconSetting(string itemPath)
        {
            string iconURL = "unknown.png";
            

            if (File.Exists(itemPath))
            {
                
                iconURL = "file.png";
            }
            else if(Directory.Exists(itemPath)) 
            {

                iconURL = "folder.png";

            }

            this.iconPath = iconURL;
        }
        


       

        

    }
}
