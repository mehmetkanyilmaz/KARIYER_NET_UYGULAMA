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
    public class KullaniciOnyaziService : IKullaniciOnyaziService
    {
        private IKullaniciOnyaziDal _kullaniciOnyaziDal;
        public KullaniciOnyaziService(IKullaniciOnyaziDal kullaniciOnyaziDal)
        {
            _kullaniciOnyaziDal = kullaniciOnyaziDal;
        }

        public IDataResult<KullaniciOnyazi> Add(KullaniciOnyazi kullaniciOnyazi)
        {
            var result = _kullaniciOnyaziDal.Add(kullaniciOnyazi);
            if (result == null)
                return new ErrorDataResult<KullaniciOnyazi>(Messages.CoverLetterAddError);

            return new SuccessDataResult<KullaniciOnyazi>(result);
        }

        public IDataResult<List<KullaniciOnyazi>> GetList(int kullaniciId)
        {
            if (String.IsNullOrEmpty(kullaniciId.ToString()))
                return new ErrorDataResult<List<KullaniciOnyazi>>(Messages.ValueEmpty);

            var result = _kullaniciOnyaziDal.GetList(x => x.kullaniciId == kullaniciId);
            if (result == null)
                return new ErrorDataResult<List<KullaniciOnyazi>>(Messages.UserNotFound);

            return new SuccessDataResult<List<KullaniciOnyazi>>(result.ToList());
        }
    }
}
