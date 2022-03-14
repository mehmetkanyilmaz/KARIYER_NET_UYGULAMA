using Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class KullaniciOnyazi: IEntity
    {
        [Key]
        public int id { get; set; }
        public int kullaniciId { get; set; }
        public string onyaziAdi { get; set; }
        public string aciklama { get; set; }
    }
}
