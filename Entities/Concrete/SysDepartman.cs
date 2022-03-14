using Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class SysDepartman: IEntity
    {
        [Key]
        public int id { get; set; }
        public string ad { get; set; }
    }
}
