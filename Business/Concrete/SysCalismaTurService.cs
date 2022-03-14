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
    public class SysCalismaTurService : ISysCalismaTurService
    {
        private ISysCalismaTurDal _sysCalismaTurDal;
        public SysCalismaTurService(ISysCalismaTurDal sysCalismaTurDal)
        {
            _sysCalismaTurDal = sysCalismaTurDal;
        }
        public IDataResult<List<SysCalismaTur>> GetList()
        {
            var result = _sysCalismaTurDal.GetList();
            if (result == null)
                return new ErrorDataResult<List<SysCalismaTur>>();

            return new SuccessDataResult<List<SysCalismaTur>>(result.ToList());
        }
    }
}
