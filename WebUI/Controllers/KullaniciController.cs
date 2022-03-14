using Business.Abstract;
using Business.Contants;
using Core.Utilities.Results;
using Entities;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using WebUI.Models;

namespace WebUI.Controllers
{
    [AllowAnonymous]
    public class KullaniciController : Controller
    {
        private IKullaniciService _kullaniciService;
        private IKullaniciCvService _kullaniciCvService;
        private IKullaniciOnyaziService _kullaniciOnyaziService;
        private IKullaniciEhliyetService _kullaniciEhliyetService;
        private ISysEhliyetTurService _sysEhliyetTurService;
        private ISysSehirService _sysSehirService;
        private ISysAskerlikDurumService _sysAskerlikDurumService;
        private IKullaniciDeneyimService _kullaniciDeneyimService;
        private ISysPozisyonService _sysPozisyonService;
        private ISysSektorService _sysSektorService;
        private ISysCalismaTurService _sysCalismaTurService;
        private IKullaniciEgitimService _kullaniciEgitimService;
        private ISysEgitimDurumService _sysEgitimDurumService;
        private ISysOgretimTurService _sysOgretimTurService;
        private ISysDilService _sysDilService;
        private ISysBursTurService _sysBursTurService;
        private IKullaniciDilService _kullaniciDilService;
        private ICvYetenekService _cvYetenekService;
        private ISysYetenekService _sysYetenekService;
        public KullaniciController(IKullaniciService kullaniciService, IKullaniciCvService kullaniciCvService, IKullaniciOnyaziService kullaniciOnyaziService, ISysSehirService sysSehirService, ISysEhliyetTurService sysEhliyetTurService, IKullaniciEhliyetService kullaniciEhliyetService, ISysAskerlikDurumService sysAskerlikDurumService, IKullaniciDeneyimService kullaniciDeneyimService, ISysPozisyonService sysPozisyonService, ISysSektorService sysSektorService, ISysCalismaTurService sysCalismaTurService, IKullaniciEgitimService kullaniciEgitimService, ISysEgitimDurumService sysEgitimDurumService, ISysOgretimTurService sysOgretimTurService, ISysDilService sysDilService, ISysBursTurService sysBursTurService, IKullaniciDilService kullaniciDilService, ICvYetenekService cvYetenekService, ISysYetenekService sysYetenekService)
        {
            _kullaniciService = kullaniciService;
            _kullaniciCvService = kullaniciCvService;
            _kullaniciOnyaziService = kullaniciOnyaziService;
            _sysEhliyetTurService = sysEhliyetTurService;
            _sysSehirService = sysSehirService;
            _kullaniciEhliyetService = kullaniciEhliyetService;
            _sysAskerlikDurumService = sysAskerlikDurumService;
            _kullaniciDeneyimService = kullaniciDeneyimService;
            _sysPozisyonService = sysPozisyonService;
            _sysSektorService = sysSektorService;
            _sysCalismaTurService = sysCalismaTurService;
            _kullaniciEgitimService = kullaniciEgitimService;
            _sysEgitimDurumService = sysEgitimDurumService;
            _sysOgretimTurService = sysOgretimTurService;
            _sysDilService = sysDilService;
            _sysBursTurService = sysBursTurService;
            _kullaniciDilService = kullaniciDilService;
            _cvYetenekService = cvYetenekService;
            _sysYetenekService = sysYetenekService;
        }
        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Login(Kullanici model)
        {
            if (!ModelState.IsValid)
            {
                //Model doğrulama yapılmadıysa.
                return View();
            }

            var result = _kullaniciService.Login(model.eposta, model.sifre);
            if (result.Success)
            {
                var claims = new List<Claim>();
                claims.Add(new Claim(ClaimTypes.NameIdentifier, result.Data.id.ToString()));
                claims.Add(new Claim(ClaimTypes.Role, "Kullanici"));

                var useridentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);
                ClaimsPrincipal principal = new ClaimsPrincipal(useridentity);

                HttpContext.SignInAsync(principal);

                return Redirect("/Ilan/Index");
            }

            ViewBag.mesaj = result.Message;
            return View();
        }

        public IActionResult Profil()
        {
            //Oturum açan kullanıcı kontrol ediliyor.
            int userId = int.Parse(User.FindFirstValue(ClaimTypes.NameIdentifier));
            var kullanici = _kullaniciService.GetById(userId);
            if (kullanici.Success == false)
                return Redirect("/Kullanici/Login");

            //En güncel cv nin bilgileri ve kullanıcı resmi modele aktarılıyor.
            KullaniciProfilViewModel model = new KullaniciProfilViewModel();

            var kullaniciCv = _kullaniciCvService.GetList(userId);
            if (kullaniciCv.Success && kullaniciCv.Data.Count > 0)
            {
                var data = kullaniciCv.Data.ToList().OrderByDescending(x => x.olusturmaTarihi).FirstOrDefault();
                model.cvId = data.id;
                model.cvAdi = data.cvAdi;
                model.fotograf = kullanici.Data.fotograf;
            }
            return View(model);
        }

        public IActionResult OzGecmis()
        {
            //Oturum kontrol
            int userId = int.Parse(User.FindFirstValue(ClaimTypes.NameIdentifier));
            var kullanici = _kullaniciService.GetById(userId);
            if (kullanici.Success == false)
                return Redirect("/Kullanici/Login");

            //Cv listesi ve kullanıcı resmi modele aktarılıyor.
            KullaniciOzgecmisViewModel model = new KullaniciOzgecmisViewModel();

            var kullaniciCv = _kullaniciCvService.GetList(userId);
            var kullaniciOnyazi = _kullaniciOnyaziService.GetList(userId);
            if (kullaniciCv.Success && kullaniciOnyazi.Success)
            {
                model.kullaniciCv = kullaniciCv.Data.ToList();
                model.kullaniciOnyazi = kullaniciOnyazi.Data.ToList();
                model.fotograf = kullanici.Data.fotograf;
            }

            return View(model);
        }

        public IActionResult OzgecmisDetay(int id)
        {
            //Oturum kontrol
            int userId = int.Parse(User.FindFirstValue(ClaimTypes.NameIdentifier));
            var kullanici = _kullaniciService.GetById(userId);
            var kullaniciCv = _kullaniciCvService.Get(id);
            if (kullanici.Success == false || kullaniciCv.Success == false)
                return Redirect("/Kullanici/Login");

            KullaniciCvDetayViewModel model = new KullaniciCvDetayViewModel();
            model.kullanici = kullanici.Data;
            model.kullaniciCv = kullaniciCv.Data;
            model.sehirler = _sysSehirService.GetList().Data;
            model.tumEhliyetler = _sysEhliyetTurService.GetList().Data;
            model.kullaniciEhliyet = _kullaniciEhliyetService.GetList(userId).Data.Select(x => x.ehliyetTurId).ToList();
            model.askerlikDurumlari = _sysAskerlikDurumService.GetList().Data;
            model.kullaniciDeneyim = _kullaniciDeneyimService.GetListByCvId(id).Data;
            model.tumPozisyonlar = _sysPozisyonService.GetList().Data;
            model.tumSektorler = _sysSektorService.GetList().Data;
            model.tumCalismaTurleri = _sysCalismaTurService.GetList().Data;
            model.kullaniciEgitim = _kullaniciEgitimService.GetList(userId).Data;
            model.tumEgitimdurumlari = _sysEgitimDurumService.GetList().Data;
            model.tumOgretimTurleri = _sysOgretimTurService.GetList().Data;
            model.tumDiller = _sysDilService.GetList().Data;
            model.kullaniciDil = _kullaniciDilService.GetList(userId).Data.Select(x => x.dilId).ToList();
            model.tumBursTurleri = _sysBursTurService.GetList().Data;
            model.cvYetenek = _cvYetenekService.GetList(id).Data.Select(x => x.yetenekId).ToList();
            model.tumYetenekler = _sysYetenekService.GetList().Data;
            return View(model);
        }

        public IResult OzgecmisOlustur(string ozgecmisAdi)
        {
            int userId = int.Parse(User.FindFirstValue(ClaimTypes.NameIdentifier));
            if (String.IsNullOrEmpty(userId.ToString()))
                return new ErrorResult(Messages.CvAddError);

            KullaniciCv kullaniciCv = new KullaniciCv()
            {
                cvAdi = ozgecmisAdi,
                kullaniciId = userId,
                olusturmaTarihi = DateTime.Now.Date
            };

            var result = _kullaniciCvService.Add(kullaniciCv);
            if (result.Success)
                return new SuccessResult(result.Data.id.ToString());

            return new ErrorResult(result.Message);
        }

        public IResult OnyaziOlustur(string onyaziAdi, string aciklama)
        {
            int userId = int.Parse(User.FindFirstValue(ClaimTypes.NameIdentifier));
            if (String.IsNullOrEmpty(userId.ToString()))
                return new ErrorResult(Messages.CoverLetterAddError);

            KullaniciOnyazi kullaniciOnyazi = new KullaniciOnyazi()
            {
                kullaniciId = userId,
                onyaziAdi = onyaziAdi,
                aciklama = aciklama
            };

            var result = _kullaniciOnyaziService.Add(kullaniciOnyazi);
            if (result.Success)
                return new SuccessResult(result.Data.id.ToString());

            return new ErrorResult(result.Message);
        }

        public IActionResult OnyaziDetay(int id)
        {
            return View();
        }

        public IActionResult Basvuru()
        {
            return View();
        }

        public IActionResult Ayar()
        {
            int userId = int.Parse(User.FindFirstValue(ClaimTypes.NameIdentifier));
            if (String.IsNullOrEmpty(userId.ToString()))
                return Redirect("/Kullanici/Login");

            var kullanici = _kullaniciService.GetById(userId);
            if (kullanici.Success)
                return View(kullanici.Data);

            return Redirect("/Kullanici/Login");
        }

        public IResult KullaniciBilgiDuzenle(string ad, string soyad, string eposta, string telefon)
        {
            int userId = int.Parse(User.FindFirstValue(ClaimTypes.NameIdentifier));
            if (String.IsNullOrEmpty(userId.ToString()))
                return new ErrorResult(Messages.UserUpdateError);

            var kullanici = _kullaniciService.GetById(userId);
            if (kullanici.Success == false)
                return new ErrorResult(Messages.UserUpdateError);

            kullanici.Data.ad = ad;
            kullanici.Data.soyad = soyad;
            kullanici.Data.eposta = eposta;
            kullanici.Data.telefon = telefon;

            var kullaniciGuncelle = _kullaniciService.Update(kullanici.Data);
            return new Result(kullaniciGuncelle.Success, kullaniciGuncelle.Message);
        }

        public IResult KullaniciSifreDegistir(string eskiSifre, string yeniSifre)
        {
            int userId = int.Parse(User.FindFirstValue(ClaimTypes.NameIdentifier));
            if (String.IsNullOrEmpty(userId.ToString()))
                return new ErrorResult(Messages.UserPasswordUpdateError);

            var kullanici = _kullaniciService.GetById(userId);
            if (kullanici.Success == false)
                return new ErrorResult(Messages.UserPasswordUpdateError);

            if (kullanici.Data.sifre != eskiSifre)
                return new ErrorResult("Eski şifre hatalı!");

            kullanici.Data.sifre = yeniSifre;
            var kullaniciGuncelle = _kullaniciService.Update(kullanici.Data);
            return new Result(kullaniciGuncelle.Success, Messages.UserPasswordUpdateSuccess);
        }

        public IResult IletisimBilgiDuzenle(Kullanici kullaniciData)
        {
            int userId = int.Parse(User.FindFirstValue(ClaimTypes.NameIdentifier));
            var kullanici = _kullaniciService.GetById(userId);
            if (kullanici.Success == false)
                return new ErrorResult("Lütfen çıkış yapıp tekrar giriniz.");

            var epostaKontrol = _kullaniciService.GetListByEposta(kullaniciData.eposta);
            if (epostaKontrol.Success)
            {
                if (epostaKontrol.Data.Where(x => x.id != kullanici.Data.id).Count() > 0)
                {
                    //Gönderilen eposta başkası tarafından kullanılıyor demektir.
                    return new ErrorResult("Eposta kullanılmaktadır.");
                }

                kullanici.Data.ad = kullaniciData.ad;
                kullanici.Data.soyad = kullaniciData.soyad;
                kullanici.Data.eposta = kullaniciData.eposta;
                kullanici.Data.unvan = kullaniciData.unvan;
                kullanici.Data.telefon = kullaniciData.telefon;
                kullanici.Data.sehirId = kullaniciData.sehirId;
                kullanici.Data.dogumTarihi = kullaniciData.dogumTarihi;
                kullanici.Data.kisiselWebSite = kullaniciData.kisiselWebSite;

                var kullaniciGuncelle = _kullaniciService.Update(kullanici.Data);
                return new Result(kullaniciGuncelle.Success, kullaniciGuncelle.Message);
            }
            return new ErrorResult("Eposta bilgisine erişilemedi.");
        }
    }
}
