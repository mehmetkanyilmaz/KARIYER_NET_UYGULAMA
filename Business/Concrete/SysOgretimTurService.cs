using Business.Abstract;
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
    class SysOgretimTurService : ISysOgretimTurService
    {
        private ISysOgretimTurDal _sysOgretimTurDal;
        public SysOgretimTurService(ISysOgretimTurDal sysOgretimTurDal)
        {
            _sysOgretimTurDal = sysOgretimTurDal;
        }
        public IDataResult<List<SysOgretimTur>> GetList()
        {
            var result = _sysOgretimTurDal.GetList();
            if (result == null)
                return new ErrorDataResult<List<SysOgretimTur>>();

            return new SuccessDataResult<List<SysOgretimTur>>(result.ToList());
        }
    }
}
