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

namespace Chinook.Data.DTOs
{
    public class GenreDTO
    {
        public string genre { get; set; }
        public IEnumerable<AlbumDTO> albums { get; set; }
    }
}
