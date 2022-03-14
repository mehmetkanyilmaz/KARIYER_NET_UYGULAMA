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
    public class KullaniciDilService : IKullaniciDilService
    {
        private IKullaniciDilDal _kullaniciDilDal;
        public KullaniciDilService(IKullaniciDilDal kullaniciDilDal)
        {
            _kullaniciDilDal = kullaniciDilDal;
        }

        public IDataResult<List<KullaniciDil>> GetList(int userId)
        {
            if (String.IsNullOrEmpty(userId.ToString()))
                return new ErrorDataResult<List<KullaniciDil>>(Messages.ValueEmpty);

            var result = _kullaniciDilDal.GetList(x => x.kullaniciId == userId);
            if (result == null)
                return new ErrorDataResult<List<KullaniciDil>>();

            return new SuccessDataResult<List<KullaniciDil>>(result.ToList());
        }
    }
}
