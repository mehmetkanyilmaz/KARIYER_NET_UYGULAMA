using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace WebUI.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult SolMenu(string seciliSayfa)
        {
            string rol = User.FindFirstValue(ClaimTypes.Role);
            if(rol == "Kullanici" || rol == "Firma")
            {
                ViewBag.SeciliSayfa = seciliSayfa;
                ViewBag.Rol = rol;
                return View();
            }
            return Redirect("/Kullanici/Login");
        }
    }
}
