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
    public class SysSektorService : ISysSektorService
    {
        private ISysSektorDal _sysSektorDal;
        public SysSektorService(ISysSektorDal sysSektorDal)
        {
            _sysSektorDal = sysSektorDal;
        }
        public IDataResult<List<SysSektor>> GetList()
        {
            var result = _sysSektorDal.GetList();
            if (result == null)
                return new ErrorDataResult<List<SysSektor>>();

            return new SuccessDataResult<List<SysSektor>>(result.ToList());
        }
    }
}
