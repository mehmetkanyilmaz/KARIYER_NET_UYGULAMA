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
    public class SysYetenekService : ISysYetenekService
    {
        private ISysYetenekDal _sysYetenekDal;
        public SysYetenekService(ISysYetenekDal sysYetenekDal)
        {
            _sysYetenekDal = sysYetenekDal;
        }
        public IDataResult<List<SysYetenek>> GetList()
        {
            var result = _sysYetenekDal.GetList();
            if (result == null)
                return new ErrorDataResult<List<SysYetenek>>();

            return new SuccessDataResult<List<SysYetenek>>(result.ToList());
        }
    }
}
