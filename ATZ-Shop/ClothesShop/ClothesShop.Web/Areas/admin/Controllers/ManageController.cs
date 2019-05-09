using ClothesShop.BU.Common;
using ClothesShop.BU.Convert;
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
    [Authorize]
    public class ManageController : Controller
    {
        readonly SanPhamManage _sanPhamManage = new SanPhamManage();
        readonly TaiKhoanManage _taiKhoanManage = new TaiKhoanManage();
        readonly DonHangManage _donHangManage = new DonHangManage();
        readonly ChiTietDonHangManage _chiTietDonHangManage = new ChiTietDonHangManage();
        readonly ThongKeDateConvert _tkDateConvert = new ThongKeDateConvert();

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

        // POST: admin/UpdateProduct
        public JsonResult UpdateProduct(SanPhamDTO sanPhamDTO, HttpPostedFileBase anh)
        {
            string imgPath = Path.Combine(HttpContext.Server.MapPath("/Assets/client/image/"),
                                              Path.GetFileName(anh.FileName));
            anh.SaveAs(imgPath);

            var pathAnh = "/Assets/client/image/" + anh.FileName;
            sanPhamDTO.AnhSanPham = pathAnh;
            sanPhamDTO.NgayTao = DateTime.Now;
            sanPhamDTO.TrangThai = (int)EnumCommon.Status.TonTai;

            var addProduct = _sanPhamManage.Insert(sanPhamDTO);

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
            var model = _chiTietDonHangManage.GetAllByMaDonHang((int)maHD);

            return View(model);
        }


        //Confirm cart
        public JsonResult ConfirmCart(int idCart)
        {
            var status = "error";
            var message = "";
            var getInfoCart = _donHangManage.GetById(idCart);
            getInfoCart.TrangThai = (int)EnumCommon.StatusCart.HoanThanh;
            var result = _donHangManage.Update(getInfoCart);
            switch (result)
            {
                case true:
                    {
                        status = "success";
                        message = "Xác nhận thành công";
                    }
                    break;
                default:
                    message = "Đã xảy ra lỗi, thử lại sau";
                    break;
            }
            return Json(new { message = message, status = status }, JsonRequestBehavior.AllowGet);
        }


        // Thống kê
        public ActionResult Statictis()
        {
            var listDH = _donHangManage.GetAll();
            ViewBag.TKDate = _tkDateConvert.ConvertDTO(listDH);
            return View();
        }
        
    }
}