using ClothesShop.BU.Common;
using ClothesShop.BU.DTO;
using ClothesShop.BU.Manage;
using PagedList;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ClothesShop.Web.Areas.admin.Controllers
{
    public class ManageController : Controller
    {
        readonly SanPhamManage _sanPhamManage = new SanPhamManage();
        readonly TaiKhoanManage _taiKhoanManage = new TaiKhoanManage();
        readonly DonHangManage _donHangManage = new DonHangManage();

        // GET: admin/Manage
        public ActionResult Account(int? page, string txt)
        {
            int pageSize = 12;
            int pageNumber = (page ?? 1);
            ViewBag.pageNumber = pageNumber;
            ViewBag.pageSize = pageSize;
            ViewBag.Txt = txt;
            var model = new List<TaiKhoanDTO>();
            if (!string.IsNullOrEmpty(txt))
            {
                model = _taiKhoanManage.GetSearch(txt);
            }
            else
            {
                model = _taiKhoanManage.GetAll();
            }
            return View(model.ToPagedList(pageNumber, pageSize));
        }

        // GET: admin/product
        public ActionResult Product(int? page, string txt, int danhMuc = 0)
        {
            ViewBag.DanhMuc = danhMuc;
            ViewBag.Txt = txt;
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            ViewBag.pageNumber = pageNumber;
            ViewBag.pageSize = pageSize;
            var model = _sanPhamManage.GetAllSearch(danhMuc, txt);
            return View(model.ToPagedList(pageNumber, pageSize));
        }

        // GET: admin/AddProduct
        public ActionResult AddProduct()
        {
            return View();
        }

        // POST: admin/AddProduct
        [HttpPost]
        public JsonResult AddProduct(SanPhamDTO sanPhamDTO, HttpPostedFileBase anh)
        {
            string imgPath = Path.Combine(HttpContext.Server.MapPath("/App_Data"),
                                              Path.GetFileName(anh.FileName));
            anh.SaveAs(imgPath);

            var pathAnh = "/Assets/client/image/" + anh.FileName;
            sanPhamDTO.AnhSanPham = pathAnh;
            sanPhamDTO.NgayTao = DateTime.Now;
            sanPhamDTO.TrangThai = (int)EnumCommon.Status.TonTai;

            //var addBool = _sanPhamManage.Insert(sanPhamDTO);

            return Json(true, JsonRequestBehavior.AllowGet);
        }

        // GET: admin/EditProduct
        public ActionResult EditProduct(int maSP)
        {
            return View();
        }

        // GET: admin/Cart
        public ActionResult Cart(int? page, string txt)
        {
            ViewBag.Txt = txt;
            int pageSize = 12;
            int pageNumber = (page ?? 1);
            ViewBag.pageNumber = pageNumber;
            ViewBag.pageSize = pageSize;
            var model = new List<DonHangDTO>();
            if (!string.IsNullOrEmpty(txt))
            {
                model = _donHangManage.GetAllSearch(txt);
            }
            else
            {
                model = _donHangManage.GetAll();
            }

            return View(model.ToPagedList(pageNumber, pageSize));
        }

        // GET: admin/DetailCart
        public ActionResult DetailCart(int? maHD)
        {
            var model = new List<DonHangDTO>();

            return View(model);
        }

    }
}