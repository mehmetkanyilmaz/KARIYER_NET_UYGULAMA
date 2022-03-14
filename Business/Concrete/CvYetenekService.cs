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
    public class CvYetenekService : ICvYetenekService
    {
        private ICvYetenekDal _cvYetenekDal;
        public CvYetenekService(ICvYetenekDal cvYetenekDal)
        {
            _cvYetenekDal = cvYetenekDal;
        }
        public IDataResult<List<CvYetenek>> GetList(int cvId)
        {
            if (String.IsNullOrEmpty(cvId.ToString()))
                return new ErrorDataResult<List<CvYetenek>>(Messages.ValueEmpty);

            var result = _cvYetenekDal.GetList(x => x.cvId == cvId);
            if (result == null)
                return new ErrorDataResult<List<CvYetenek>>();

            return new SuccessDataResult<List<CvYetenek>>(result.ToList());
        }
    }
}
