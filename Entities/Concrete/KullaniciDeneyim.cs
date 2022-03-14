using Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class KullaniciDeneyim : IEntity
    {
        [Key]
        public int id { get; set; }
        public int cvId { get; set; }
        public int kullaniciId { get; set; }
        public int sehirId { get; set; }
        public string firmaAdi { get; set; }
        public int pozisyonId { get; set; }
        public int firmaSektorId { get; set; }
        public int calismaTur { get; set; }
        public string isTanim { get; set; }
        public DateTime baslangicTarihi { get; set; }
        public DateTime? bitisTarihi { get; set; }
        public bool devamDurum { get; set; }
    }
}
