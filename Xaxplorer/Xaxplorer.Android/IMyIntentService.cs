using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using Xaxplorer.Droid;

[assembly: Dependency(typeof(MyIntentService))]
namespace Xaxplorer.Droid
{
    public class MyIntentService : IMyIntentService
    {
        public void StartActivity(string path)
        {
            
                Android.Net.Uri uri = Android.Net.Uri.Parse(path);
                
                var context = Android.App.Application.Context;
                var activity = new Intent();
                activity.SetAction(Intent.ActionGetContent);
                activity.SetType("*/*");
                activity.PutExtra(Android.Provider.DocumentsContract.ExtraInitialUri, uri);
                activity.SetFlags(ActivityFlags.NewTask);
                context.StartActivity(activity);
            
            
        }

        public void StartActivityForResult(string activityName, int requestCode)
        {
            var context = Android.App.Application.Context;
            var activity = new Intent(context, Type.GetType(activityName));
            activity.SetFlags(ActivityFlags.NewTask);
            ((Activity)context).StartActivityForResult(activity, requestCode);
        }
    }
}