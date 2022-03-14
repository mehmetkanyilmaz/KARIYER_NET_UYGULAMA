using Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class KullaniciEgitim: IEntity
    {
        [Key]
        public int id { get; set; }
        public int kullaniciId { get; set; }
        public int egitimDurum { get; set; }
        public DateTime baslangicTarihi { get; set; }
        public DateTime bitisTarihi { get; set; }
        public bool devamDurum { get; set; }
        public string okul { get; set; }
        public string bolum { get; set; }
        public double diplomaNotu { get; set; }
        public string aciklama { get; set; }
        public int ogretimTur { get; set; }
        public int ogretimDil { get; set; }
        public int bursTur { get; set; }
    }
}
