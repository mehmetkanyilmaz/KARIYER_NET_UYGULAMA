using Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Firma : IEntity
    {
        [Key]
        public int id { get; set; }
        public int sehirId { get; set; }
        public int sektorId { get; set; }
        public string ad { get; set; }
        public string telefon { get; set; }
        public string eposta { get; set; }
        public string sifre { get; set; }
        public string adres { get; set; }
        public string vergiNumarasi { get; set; }
        public string hakkinda { get; set; }
        public DateTime kurulusTarihi { get; set; }
        public string kurumsalWebSite { get; set; }
        public string logo { get; set; }
    }
}
