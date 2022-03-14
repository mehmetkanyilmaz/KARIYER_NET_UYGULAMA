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
    public class KullaniciEhliyetService : IKullaniciEhliyetService
    {
        private IKullaniciEhliyetDal _kullaniciEhliyetDal;
        public KullaniciEhliyetService(IKullaniciEhliyetDal kullaniciEhliyetDal)
        {
            _kullaniciEhliyetDal = kullaniciEhliyetDal;
        }

        public IDataResult<List<KullaniciEhliyet>> GetList(int userId)
        {
            if (String.IsNullOrEmpty(userId.ToString()))
                return new ErrorDataResult<List<KullaniciEhliyet>>(Messages.ValueEmpty);

            var result = _kullaniciEhliyetDal.GetList(x => x.kullaniciId == userId);
            if (result == null)
                return new ErrorDataResult<List<KullaniciEhliyet>>(Messages.UserDriverLicenseError);

            return new SuccessDataResult<List<KullaniciEhliyet>>(result.ToList());
        }
    }
}
