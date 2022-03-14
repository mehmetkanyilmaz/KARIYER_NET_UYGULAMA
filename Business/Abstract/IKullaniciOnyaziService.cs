using Core.Utilities.Results;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Abstract
{
    public interface IKullaniciOnyaziService
    {
        public IDataResult<List<KullaniciOnyazi>> GetList(int kullaniciId);
        public IDataResult<KullaniciOnyazi> Add(KullaniciOnyazi kullaniciOnyazi);
    }
}
