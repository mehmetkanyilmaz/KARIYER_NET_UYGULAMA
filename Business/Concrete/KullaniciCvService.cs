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
    public class KullaniciCvService : IKullaniciCvService
    {
        private IKullaniciCvDal _kullaniciCvDal;
        public KullaniciCvService(IKullaniciCvDal kullaniciCvDal)
        {
            _kullaniciCvDal = kullaniciCvDal;
        }

        public IDataResult<KullaniciCv> Add(KullaniciCv kullaniciCv)
        {
            var result = _kullaniciCvDal.Add(kullaniciCv);
            if (result == null)
                return new ErrorDataResult<KullaniciCv>(Messages.CvAddError);

            return new SuccessDataResult<KullaniciCv>(result);
        }

        public IDataResult<KullaniciCv> Get(int cvId)
        {
            if (String.IsNullOrEmpty(cvId.ToString()))
                return new ErrorDataResult<KullaniciCv>(Messages.ValueEmpty);

            var result = _kullaniciCvDal.Get(x => x.id == cvId);
            if (result == null)
                return new ErrorDataResult<KullaniciCv>(Messages.UserCvError);

            return new SuccessDataResult<KullaniciCv>(result);
        }

        public IDataResult<List<KullaniciCv>> GetList(int kullaniciId)
        {
            if (String.IsNullOrEmpty(kullaniciId.ToString()))
                return new ErrorDataResult<List<KullaniciCv>>(Messages.ValueEmpty);

            var result = _kullaniciCvDal.GetList(x => x.kullaniciId == kullaniciId);
            if (result == null)
                return new ErrorDataResult<List<KullaniciCv>>(Messages.UserNotFound);

            return new SuccessDataResult<List<KullaniciCv>>(result.ToList());
        }
    }
}
