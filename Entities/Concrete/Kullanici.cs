using Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Kullanici: IEntity
    {
        [Key]
        public int id { get; set; }
        public int sehirId { get; set; }
        public string fotograf { get; set; }
        public string ad { get; set; }
        public string soyad { get; set; }

        [EmailAddress]
        [DisplayName("E-Posta")]
        [Required(ErrorMessage = "E-Posta zorunlu")]
        public string eposta { get; set; }

        [PasswordPropertyText]
        [DisplayName("Şifre")]
        [Required(ErrorMessage = "Şifre zorunlu")]
        [MinLength(6, ErrorMessage = "Şifre en az 6 karakter olmadıdır")]
        public string sifre { get; set; }
        public string unvan { get; set; }
        public DateTime dogumTarihi { get; set; }
        public string telefon { get; set; }
        public string kisiselWebSite { get; set; }
        public bool cinsiyet { get; set; }
        public int askerlikDurum { get; set; }
        public bool durum { get; set; }
    }
}
