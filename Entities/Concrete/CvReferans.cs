using Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class CvReferans: IEntity
    {
        [Key]
        public int id { get; set; }
        public int cvId { get; set; }
        public int firmaPozisyonId { get; set; }
        public string referansAdi { get; set; }
        public string referansSoyadi { get; set; }
        public string firma { get; set; }
        public string eposta { get; set; }
        public string telefon { get; set; }
    }
}
