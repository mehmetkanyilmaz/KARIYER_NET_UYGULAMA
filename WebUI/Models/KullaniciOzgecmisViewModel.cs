using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebUI.Models
{
    public class KullaniciOzgecmisViewModel
    {
        public List<KullaniciCv> kullaniciCv { get; set; }
        public List<KullaniciOnyazi> kullaniciOnyazi { get; set; }
        public string fotograf { get; set; }
    }

}
