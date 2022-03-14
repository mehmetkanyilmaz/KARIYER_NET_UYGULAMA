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
    public class SysDilService : ISysDilService
    {
        private ISysDilDal _sysDilDal;
        public SysDilService(ISysDilDal sysDilDal)
        {
            _sysDilDal = sysDilDal;
        }
        public IDataResult<List<SysDil>> GetList()
        {
            var result = _sysDilDal.GetList();
            if (result == null)
                return new ErrorDataResult<List<SysDil>>();

            return new SuccessDataResult<List<SysDil>>(result.ToList());
        }
    }
}
