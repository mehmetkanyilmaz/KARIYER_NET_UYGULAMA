using Core.Utilities.Results;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Abstract
{
    public interface IKullaniciService
    {
        public IDataResult<Kullanici> Login(string eposta, string sifre);
        public IDataResult<Kullanici> GetById(int id);
        public IDataResult<List<Kullanici>> GetListByEposta(string eposta);

        public IDataResult<Kullanici> Update(Kullanici kullanici);
    }
}
