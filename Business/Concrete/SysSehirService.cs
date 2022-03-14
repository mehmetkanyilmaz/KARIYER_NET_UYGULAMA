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
    public class SysSehirService : ISysSehirService
    {
        private ISysSehirDal _sysSehirDal;
        public SysSehirService(ISysSehirDal sysSehirDal)
        {
            _sysSehirDal = sysSehirDal;
        }
        public IDataResult<List<SysSehir>> GetList()
        {
            var result = _sysSehirDal.GetList();
            if (result == null)
                return new ErrorDataResult<List<SysSehir>>();

            return new SuccessDataResult<List<SysSehir>>(result.OrderBy(x => x.sira).ToList());
        }
    }
}
