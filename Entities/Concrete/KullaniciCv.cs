using Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class KullaniciCv: IEntity
    {
        [Key]
        public int id { get; set; }
        public int kullaniciId { get; set; }
        public string cvAdi { get; set; }
        public string ozetBilgi { get; set; }
        public string bilgisayarBilgisi { get; set; }
        public DateTime olusturmaTarihi { get; set; }
    }
}
