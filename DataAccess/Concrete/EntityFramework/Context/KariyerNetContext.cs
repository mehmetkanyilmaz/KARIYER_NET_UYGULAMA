using Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Concrete.EntityFramework.Context
{
    public class KariyerNetContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Data Source=.\SQLEXPRESS; Initial Catalog=KARIYER_NET_DB; Integrated Security=True");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
        }

        public DbSet<CvProje> CvProje { get; set; }
        public DbSet<CvReferans> CvReferans { get; set; }
        public DbSet<CvYetenek> CvYetenek { get; set; }
        public DbSet<Firma> Firma { get; set; }
        public DbSet<Ilan> Ilan { get; set; }
        public DbSet<IlanBasvuru> IlanBasvuru { get; set; }
        public DbSet<IlanDil> IlanDil { get; set; }
        public DbSet<IlanEgitim> IlanEgitim { get; set; }
        public DbSet<IlanEhliyet> IlanEhliyet { get; set; }
        public DbSet<Kullanici> Kullanici { get; set; }
        public DbSet<KullaniciCv> KullaniciCv { get; set; }
        public DbSet<KullaniciDeneyim> KullaniciDeneyim { get; set; }
        public DbSet<KullaniciDil> KullaniciDil { get; set; }
        public DbSet<KullaniciEgitim> KullaniciEgitim { get; set; }
        public DbSet<KullaniciEhliyet> KullaniciEhliyet { get; set; }
        public DbSet<KullaniciOnyazi> KullaniciOnyazi { get; set; }
        public DbSet<SysAskerlikDurum> SysAskerlikDurum { get; set; }
        public DbSet<SysBursTur> SysBursTur { get; set; }
        public DbSet<SysCalismaTur> SysCalismaTur { get; set; }
        public DbSet<SysDepartman> SysDepartman { get; set; }
        public DbSet<SysDil> SysDil { get; set; }
        public DbSet<SysEgitimDurum> SysEgitimDurum { get; set; }
        public DbSet<SysEhliyetTur> SysEhliyetTur { get; set; }
        public DbSet<SysOgretimTur> SysOgretimTur { get; set; }
        public DbSet<SysPozisyon> SysPozisyon { get; set; }
        public DbSet<SysSehir> SysSehir { get; set; }
        public DbSet<SysSektor> SysSektor { get; set; }
        public DbSet<SysYetenek> SysYetenek { get; set; }
    }
}
