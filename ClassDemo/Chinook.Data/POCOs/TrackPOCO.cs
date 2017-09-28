using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using Chinook.Data.Entities;
using System.ComponentModel; //Expose methods for ODS wizard
using Chinook.Data.POCOs;
#endregion

namespace Chinook.Data.POCOs
{
    public class TrackPOCO
    {
        public string song { get; set; }
        public int milliseconds { get; set; }
        public string length
        {
            get
            {
                int minutes = milliseconds / 60000;
                int seconds = (milliseconds % 60000) / 1000;
                return string.Format("{0}:{1:00}", minutes, seconds);
            }
        }
    }
}
