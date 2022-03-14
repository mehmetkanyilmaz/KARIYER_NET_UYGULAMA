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
    public class KullaniciDeneyimService : IKullaniciDeneyimService
    {
        private IKullaniciDeneyimDal _kullaniciDeneyimDal;
        public KullaniciDeneyimService(IKullaniciDeneyimDal kullaniciDeneyimDal)
        {
            _kullaniciDeneyimDal = kullaniciDeneyimDal;
        }
        public IDataResult<List<KullaniciDeneyim>> GetListByCvId(int cvId)
        {
            if (String.IsNullOrEmpty(cvId.ToString()))
                return new ErrorDataResult<List<KullaniciDeneyim>>(Messages.ValueEmpty);

            var result = _kullaniciDeneyimDal.GetList(x => x.cvId == cvId);
            if (result == null)
                return new ErrorDataResult<List<KullaniciDeneyim>>(Messages.UserNotFound);

            return new SuccessDataResult<List<KullaniciDeneyim>>(result.ToList());
        }
    }
}
