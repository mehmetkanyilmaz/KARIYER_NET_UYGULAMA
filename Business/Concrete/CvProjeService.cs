using Business.Abstract;
using Core.Utilities.Results;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Concrete
{
    public class CvProjeService : ICvProjeService
    {
        public IDataResult<List<CvProje>> GetList()
        {
            throw new NotImplementedException();
        }
    }
}
