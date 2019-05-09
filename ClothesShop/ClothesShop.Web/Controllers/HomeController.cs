using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ClothesShop.BU.Common;
using ClothesShop.BU.DTO;
using ClothesShop.BU.Manage;

namespace ClothesShop.Web.Controllers
{
    public class HomeController : Controller
    {
        readonly SanPhamManage _sanPhamManage = new SanPhamManage();

        public ActionResult Index()
        {
            Session["menu"] = (int)EnumCommon.Menu.TrangChu;

            ViewBag.ProductNew = _sanPhamManage.GetAllByMaDanhMuc((int)EnumCommon.Product.HangMoiVe);
            ViewBag.ProductSale = _sanPhamManage.GetAllByMaDanhMuc((int)EnumCommon.Product.HangDangSale);

            return View();
        }
        
    }
}