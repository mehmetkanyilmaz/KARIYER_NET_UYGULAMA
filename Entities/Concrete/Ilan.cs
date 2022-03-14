using Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Ilan : IEntity
    {
        [Key]
        public int id { get; set; }
        public int firmaId { get; set; }
        public int sehirId { get; set; }
        public string ilanAdi { get; set; }
        public int calismaTur { get; set; }
        public int pozisyonId { get; set; }
        public int departmanId { get; set; }
        public int minTecrube { get; set; }
        public int maxTecrube { get; set; }
        public string tanim { get; set; }
        public int askerlikId { get; set; }
        public int egitimId { get; set; }
        public bool ilanDurum { get; set; }
    }
}
