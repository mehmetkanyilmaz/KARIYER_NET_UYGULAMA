using Business.Abstract;
using Business.Contants;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Concrete
{
    public class SysAskerlikDurumService : ISysAskerlikDurumService
    {
        private ISysAskerlikDurumDal _sysAskerlikDurumDal;
        public SysAskerlikDurumService(ISysAskerlikDurumDal sysAskerlikDurumDal)
        {
            _sysAskerlikDurumDal = sysAskerlikDurumDal;
        }
        public IDataResult<List<SysAskerlikDurum>> GetList()
        {
            var result = _sysAskerlikDurumDal.GetList();
            if (result == null)
                return new ErrorDataResult<List<SysAskerlikDurum>>(Messages.MilitaryError);

            return new SuccessDataResult<List<SysAskerlikDurum>>(result.ToList());
        }
    }
}
