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
    public class SysEhliyetTurService : ISysEhliyetTurService
    {
        private ISysEhliyetTurDal _sysEhliyetTurDal;
        public SysEhliyetTurService(ISysEhliyetTurDal sysEhliyetTurDal)
        {
            _sysEhliyetTurDal = sysEhliyetTurDal;
        }
        public IDataResult<List<SysEhliyetTur>> GetList()
        {
            var result = _sysEhliyetTurDal.GetList();
            if (result == null)
                return new ErrorDataResult<List<SysEhliyetTur>>(Messages.UserDriverLicenseError);

            return new SuccessDataResult<List<SysEhliyetTur>>(result.ToList());
        }
    }
}
