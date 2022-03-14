using Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class SysSehir : IEntity
    {
        [Key]
        public int id { get; set; }
        public string ad { get; set; }
        public int sira { get; set; }
    }
}
