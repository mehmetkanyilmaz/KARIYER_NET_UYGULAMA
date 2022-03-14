using Autofac;
using Business.Abstract;
using Business.Concrete;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.DependencyResolvers.Autofac
{
    public class AutofacBusinessModule : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            builder.RegisterType<CvProjeService>().As<ICvProjeService>();
            builder.RegisterType<EfCvProjeDal>().As<ICvProjeDal>();

            builder.RegisterType<KullaniciService>().As<IKullaniciService>();
            builder.RegisterType<EfKullaniciDal>().As<IKullaniciDal>();

            builder.RegisterType<KullaniciCvService>().As<IKullaniciCvService>();
            builder.RegisterType<EfKullaniciCvDal>().As<IKullaniciCvDal>();

            builder.RegisterType<KullaniciOnyaziService>().As<IKullaniciOnyaziService>();
            builder.RegisterType<EfKullaniciOnyaziDal>().As<IKullaniciOnyaziDal>();

            builder.RegisterType<SysSehirService>().As<ISysSehirService>();
            builder.RegisterType<EfSysSehirDal>().As<ISysSehirDal>();

            builder.RegisterType<SysEhliyetTurService>().As<ISysEhliyetTurService>();
            builder.RegisterType<EfSysEhliyetTurDal>().As<ISysEhliyetTurDal>();

            builder.RegisterType<KullaniciEhliyetService>().As<IKullaniciEhliyetService>();
            builder.RegisterType<EfKullaniciEhliyetDal>().As<IKullaniciEhliyetDal>();

            builder.RegisterType<SysAskerlikDurumService>().As<ISysAskerlikDurumService>();
            builder.RegisterType<EfSysAskerlikDurumDal>().As<ISysAskerlikDurumDal>();

            builder.RegisterType<KullaniciDeneyimService>().As<IKullaniciDeneyimService>();
            builder.RegisterType<EfKullaniciDeneyimDal>().As<IKullaniciDeneyimDal>();

            builder.RegisterType<SysPozisyonService>().As<ISysPozisyonService>();
            builder.RegisterType<EfSysPozisyonDal>().As<ISysPozisyonDal>();

            builder.RegisterType<SysSektorService>().As<ISysSektorService>();
            builder.RegisterType<EfSysSektorDal>().As<ISysSektorDal>();

            builder.RegisterType<SysCalismaTurService>().As<ISysCalismaTurService>();
            builder.RegisterType<EfSysCalismaTurDal>().As<ISysCalismaTurDal>();

            builder.RegisterType<KullaniciEgitimService>().As<IKullaniciEgitimService>();
            builder.RegisterType<EfKullaniciEgitimDal>().As<IKullaniciEgitimDal>();

            builder.RegisterType<SysEgitimDurumService>().As<ISysEgitimDurumService>();
            builder.RegisterType<EfSysEgitimDurumDal>().As<ISysEgitimDurumDal>();

            builder.RegisterType<SysOgretimTurService>().As<ISysOgretimTurService>();
            builder.RegisterType<EfSysOgretimTurDal>().As<ISysOgretimTurDal>();

            builder.RegisterType<SysDilService>().As<ISysDilService>();
            builder.RegisterType<EfSysDilDal>().As<ISysDilDal>();

            builder.RegisterType<SysBursTurService>().As<ISysBursTurService>();
            builder.RegisterType<EfSysBursTurDal>().As<ISysBursTurDal>();

            builder.RegisterType<KullaniciDilService>().As<IKullaniciDilService>();
            builder.RegisterType<EfKullaniciDilDal>().As<IKullaniciDilDal>();

            builder.RegisterType<CvYetenekService>().As<ICvYetenekService>();
            builder.RegisterType<EfCvYetenekDal>().As<ICvYetenekDal>();

            builder.RegisterType<SysYetenekService>().As<ISysYetenekService>();
            builder.RegisterType<EfSysYetenekDal>().As<ISysYetenekDal>();
        }
    }
}
