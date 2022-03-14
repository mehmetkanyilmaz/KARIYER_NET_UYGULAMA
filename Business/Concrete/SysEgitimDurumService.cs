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
    public class SysEgitimDurumService : ISysEgitimDurumService
    {
        private ISysEgitimDurumDal _sysEgitimDurumDal;
        public SysEgitimDurumService(ISysEgitimDurumDal sysEgitimDurumDal)
        {
            _sysEgitimDurumDal = sysEgitimDurumDal;
        }
        public IDataResult<List<SysEgitimDurum>> GetList()
        {
            var result = _sysEgitimDurumDal.GetList();
            if (result == null)
                return new ErrorDataResult<List<SysEgitimDurum>>();

            return new SuccessDataResult<List<SysEgitimDurum>>(result.ToList());
        }
    }
}
