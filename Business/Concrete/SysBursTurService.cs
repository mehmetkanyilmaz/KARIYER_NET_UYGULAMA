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
    public class SysBursTurService : ISysBursTurService
    {
        private ISysBursTurDal _sysBursTurDal;
        public SysBursTurService(ISysBursTurDal sysBursTurDal)
        {
            _sysBursTurDal = sysBursTurDal;
        }
        public IDataResult<List<SysBursTur>> GetList()
        {
            var result = _sysBursTurDal.GetList();
            if (result == null)
                return new ErrorDataResult<List<SysBursTur>>();

            return new SuccessDataResult<List<SysBursTur>>(result.ToList());
        }
    }
}
