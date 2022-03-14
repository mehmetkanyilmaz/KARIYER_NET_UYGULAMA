using Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class CvProje: IEntity
    {
        [Key]
        public int id { get; set; }
        public int cvId { get; set; }
        public string projeAdi { get; set; }
        public DateTime projeTarih { get; set; }
        public string projeUrl { get; set; }
        public string projeAciklama { get; set; }
    }
}
