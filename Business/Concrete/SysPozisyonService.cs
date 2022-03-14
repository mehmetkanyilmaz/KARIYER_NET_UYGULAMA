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
    public class SysPozisyonService : ISysPozisyonService
    {
        private ISysPozisyonDal _sysPozisyonDal;
        public SysPozisyonService(ISysPozisyonDal sysPozisyonDal)
        {
            _sysPozisyonDal = sysPozisyonDal;
        }
        public IDataResult<List<SysPozisyon>> GetList()
        {
            var result = _sysPozisyonDal.GetList();
            if (result == null)
                return new ErrorDataResult<List<SysPozisyon>>();

            return new SuccessDataResult<List<SysPozisyon>>(result.ToList());
        }
    }
}
