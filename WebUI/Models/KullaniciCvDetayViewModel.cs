using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebUI.Models
{
    public class KullaniciCvDetayViewModel
    {
        public Kullanici kullanici { get; set; }
        public KullaniciCv kullaniciCv { get; set; }
        public List<KullaniciDeneyim> kullaniciDeneyim { get; set; }
        public List<SysSehir> sehirler { get; set; }
        public List<SysEhliyetTur> tumEhliyetler { get; set; }
        public List<int> kullaniciEhliyet { get; set; }
        public List<SysAskerlikDurum> askerlikDurumlari { get; set; }
        public List<SysPozisyon> tumPozisyonlar { get; set; }
        public List<SysSektor> tumSektorler { get; set; }
        public List<SysCalismaTur> tumCalismaTurleri { get; set; }
        public List<KullaniciEgitim> kullaniciEgitim { get; set; }
        public List<SysEgitimDurum> tumEgitimdurumlari { get; set; }
        public List<SysOgretimTur> tumOgretimTurleri { get; set; }
        public List<SysDil> tumDiller { get; set; }
        public List<int> kullaniciDil { get; set; }
        public List<SysBursTur> tumBursTurleri { get; set; }
        public List<int> cvYetenek { get; set; }
        public List<SysYetenek> tumYetenekler { get; set; }
    }
}
