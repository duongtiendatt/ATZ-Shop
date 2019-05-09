using ClothesShop.BU.Common;
using ClothesShop.BU.DTO;
using ClothesShop.BU.Manage;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ClothesShop.Web.Controllers
{
    public class ProductController : Controller
    {
        readonly SanPhamManage _sanPhamManage = new SanPhamManage();

        // GET: Product
        public ActionResult Index(int? page, int product = 0, int sort = 0, int sx = 0)
        {
            ViewBag.Product = product;
            ViewBag.SX = sx;
            Session["menu"] = (int)EnumCommon.Menu.SanPham;
            int pageSize = 9;
            int pageNumber = (page ?? 1);
            var model = _sanPhamManage.GetPagingByMaDanhMuc(pageNumber, pageSize, product, sx);
            ViewBag.TatCa = _sanPhamManage.GetAll((int)EnumCommon.Product.TatCa).Count;
            ViewBag.HangMoiVe = _sanPhamManage.GetAll((int)EnumCommon.Product.HangMoiVe).Count;
            ViewBag.HangDangSale = _sanPhamManage.GetAll((int)EnumCommon.Product.HangDangSale).Count;
            ViewBag.PhuKien = _sanPhamManage.GetAll((int)EnumCommon.Product.PhuKien).Count;
            ViewBag.ThoiTrangNam = _sanPhamManage.GetAll((int)EnumCommon.Product.ThoiTrangNam).Count;
            ViewBag.ThoiTrangNu = _sanPhamManage.GetAll((int)EnumCommon.Product.ThoiTrangNu).Count;
            ViewBag.ThoiTrangTreEm = _sanPhamManage.GetAll((int)EnumCommon.Product.ThoiTrangTreEm).Count;

            return View(model);
        }

        // GET: Product/Detail
        public ActionResult Detail(int productId = 1)
        {
            Session["menu"] = (int)EnumCommon.Menu.SanPham;

            var model = _sanPhamManage.GetById(productId);

            ViewBag.SizeS = model.SoLuongSize;
            ViewBag.ListProduct = _sanPhamManage.GetSkipNumber(model.MaDanhMuc).ToList();

            return View(model);
        }

        // POST: Product/NumberSize
        [HttpPost]
        public JsonResult NumberSize(int valSize, int idProduct)
        {
            int numberSize = _sanPhamManage.GetNumberSize(valSize, idProduct);
            return Json(numberSize, JsonRequestBehavior.AllowGet);
        }

        // GET: Product/Search
        public ActionResult Search(int? page, string txt)
        {
            Session["menu"] = (int)EnumCommon.Menu.SanPham;
            ViewBag.Text = txt;
            int pageSize = 12;
            int pageNumber = (page ?? 1);
            int numberSearch = 0;
            var model = _sanPhamManage.GetProductBySearch(txt);
            if(model.Count() != 0 && model != null)
            {
                numberSearch = model.Count();
            }
            ViewBag.NumberSearch = numberSearch;
            return View(model.ToPagedList(pageNumber, pageSize));
        }

        
    }
}