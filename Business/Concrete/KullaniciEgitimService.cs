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
    public class KullaniciEgitimService : IKullaniciEgitimService
    {
        private IKullaniciEgitimDal _kullaniciEgitimDal;
        public KullaniciEgitimService(IKullaniciEgitimDal kullaniciEgitimDal)
        {
            _kullaniciEgitimDal = kullaniciEgitimDal;
        }
        public IDataResult<List<KullaniciEgitim>> GetList(int userId)
        {
            if (String.IsNullOrEmpty(userId.ToString()))
                return new ErrorDataResult<List<KullaniciEgitim>>(Messages.ValueEmpty);

            var result = _kullaniciEgitimDal.GetList(x => x.kullaniciId == userId);
            if (result == null)
                return new ErrorDataResult<List<KullaniciEgitim>>();

            return new SuccessDataResult<List<KullaniciEgitim>>(result.ToList());
        }
    }
}
