using ClothesShop.BU.Common;
using ClothesShop.BU.DTO;
using ClothesShop.BU.Manage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ClothesShop.Web.Controllers
{
    public class ContactController : Controller
    {
        readonly LienHeManage _lienHeManage = new LienHeManage();

        // GET: Contact
        public ActionResult Index()
        {
            Session["menu"] = (int)EnumCommon.Menu.LienHe;
            return View();
        }

        // POST: Contact/GuiLienHe
        [HttpPost]
        public JsonResult GuiLienHe(LienHeDTO lienHeDTO)
        {
            var result = false;
            if (!string.IsNullOrEmpty(lienHeDTO.TenKH) && !string.IsNullOrEmpty(lienHeDTO.NoiDung) && !string.IsNullOrEmpty(lienHeDTO.Email))
            {
                result = _lienHeManage.Insert(lienHeDTO);
            }
            return Json(result, JsonRequestBehavior.AllowGet);
        }
    }
}