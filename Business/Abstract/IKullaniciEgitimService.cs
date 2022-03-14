using Core.Utilities.Results;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Abstract
{
    public interface IKullaniciEgitimService
    {
        public IDataResult<List<KullaniciEgitim>> GetList(int userId);
    }
}
