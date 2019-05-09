using ClothesShop.BU.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ClothesShop.Web.Controllers
{
    public class AboutUsController : Controller
    {
        // GET: AboutUs
        public ActionResult Index()
        {
            Session["menu"] = (int)EnumCommon.Menu.GioiThieu;
            return View();
        }
    }
}