using Core.Utilities.Results;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Abstract
{
    public interface ISysAskerlikDurumService
    {
        public IDataResult<List<SysAskerlikDurum>> GetList();
    }
}
