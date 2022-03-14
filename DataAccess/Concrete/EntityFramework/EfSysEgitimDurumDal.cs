﻿using Core.EntityFramework;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Context;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Concrete.EntityFramework
{
    public class EfSysEgitimDurumDal : EfEntityRepositoryBase<SysEgitimDurum, KariyerNetContext>, ISysEgitimDurumDal
    {
    }
}
