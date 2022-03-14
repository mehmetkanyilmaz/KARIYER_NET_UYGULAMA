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
    public class KullaniciService : IKullaniciService
    {
        private IKullaniciDal _kullaniciDal;
        public KullaniciService(IKullaniciDal kullaniciDal)
        {
            _kullaniciDal = kullaniciDal;
        }

        public IDataResult<Kullanici> GetById(int id)
        {
            if (String.IsNullOrEmpty(id.ToString()))
                return new ErrorDataResult<Kullanici>(Messages.ValueEmpty);

            var kullanici = _kullaniciDal.Get(x => x.id == id);

            if (kullanici == null)
            {
                return new ErrorDataResult<Kullanici>(Messages.UserNotFound);
            }

            return new SuccessDataResult<Kullanici>(kullanici);
        }

        public IDataResult<List<Kullanici>> GetListByEposta(string eposta)
        {
            //Eğer birden fazla aynı eposta varsa log tablosuna kayıt atılabilir.
            if (String.IsNullOrEmpty(eposta))
                return new ErrorDataResult<List<Kullanici>>(Messages.ValueEmpty);

            var kullanici = _kullaniciDal.GetList(x => x.eposta == eposta);

            if (kullanici == null)
            {
                return new ErrorDataResult<List<Kullanici>>(Messages.UserNotFound);
            }

            return new SuccessDataResult<List<Kullanici>>(kullanici.ToList());
        }

        public IDataResult<Kullanici> Login(string eposta, string sifre)
        {
            if (String.IsNullOrEmpty(eposta) || String.IsNullOrEmpty(sifre))
                return new ErrorDataResult<Kullanici>(Messages.ValueEmpty);

            var kullanici = _kullaniciDal.Get(x => x.eposta == eposta && x.sifre == sifre);

            if (kullanici == null)
            {
                return new ErrorDataResult<Kullanici>(Messages.UserNotFound);
            }

            return new SuccessDataResult<Kullanici>(kullanici);
        }

        public IDataResult<Kullanici> Update(Kullanici kullanici)
        {
            var result = _kullaniciDal.Update(kullanici);
            if (result == null)
                return new ErrorDataResult<Kullanici>(Messages.UserUpdateError);

            return new SuccessDataResult<Kullanici>(kullanici, Messages.UserUpdateSuccess);
        }
    }
}
