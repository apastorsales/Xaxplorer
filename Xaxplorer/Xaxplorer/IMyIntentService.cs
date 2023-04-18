using System;
using System.Collections.Generic;
using System.Text;

namespace Xaxplorer
{
    public interface IMyIntentService
    {
        void StartActivity(string path);
        void StartActivityForResult(string activityName, int requestCode);
    }
}
