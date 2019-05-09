using ClothesShop.BU.Common;
using ClothesShop.BU.DTO;
using ClothesShop.BU.Manage;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ClothesShop.Web.Controllers
{
    public class CartController : Controller
    {
        readonly SanPhamManage _sanPhamManage = new SanPhamManage();
        // GET: Cart
        public ActionResult Index()
        {
            Session["menu"] = -1;
            return View();
        }

        // POST: Cart/ThemGioHang
        [HttpPost]
        public JsonResult ThemGioHang(int quantity, int valSize, int idSanPham)
        {
            var productDetail = _sanPhamManage.GetById(idSanPham);
            ChiTietDonHangDTO chiTietDonHangDTO = new ChiTietDonHangDTO()
            {
                HinhAnh = productDetail.AnhSanPham,
                MaSanPham = productDetail.MaSanPham,
                MaSize = valSize,
                TenSize = _sanPhamManage.GetNameSize(valSize),
                SoLuong = quantity,
                TenSanPham = productDetail.TenSanPham
            };
            if (productDetail.GiaSale != null)
            {
                chiTietDonHangDTO.Gia = (int)productDetail.GiaSale;
            }
            else
            {
                chiTietDonHangDTO.Gia = (int)productDetail.GiaBan;
            }
            var cartList = (List<ChiTietDonHangDTO>)Session["GioHang"];
            if (cartList != null)
            {
                if (cartList.Any(x => x.MaSanPham == idSanPham && x.MaSize == valSize))
                {
                    cartList.FirstOrDefault(x => x.MaSanPham == idSanPham && x.MaSize == valSize).SoLuong += quantity;
                }
                else
                {
                    cartList.Add(chiTietDonHangDTO);
                }
            }
            else
            {
                cartList = new List<ChiTietDonHangDTO>();
                cartList.Add(chiTietDonHangDTO);
            }
            Session["GioHang"] = cartList;
            return Json(cartList, JsonRequestBehavior.AllowGet);
        }

        // POST: Cart/CapNhat
        [HttpPost]
        public JsonResult CapNhat(List<ChiTietDonHangDTO> cart, int type)
        {
            var cartList = new List<ChiTietDonHangDTO>();
            if (type == 1)
            {
                foreach (var c in cart)
                {
                    var productDetail = _sanPhamManage.GetById(c.MaSanPham);
                    ChiTietDonHangDTO chiTietDonHangDTO = new ChiTietDonHangDTO()
                    {
                        HinhAnh = productDetail.AnhSanPham,
                        MaSanPham = productDetail.MaSanPham,
                        MaSize = c.MaSize,
                        TenSize = _sanPhamManage.GetNameSize(c.MaSize),
                        SoLuong = c.SoLuong,
                        TenSanPham = productDetail.TenSanPham
                    };
                    if (productDetail.GiaSale != null)
                    {
                        chiTietDonHangDTO.Gia = (int)productDetail.GiaSale;
                    }
                    else
                    {
                        chiTietDonHangDTO.Gia = (int)productDetail.GiaBan;
                    }
                    cartList.Add(chiTietDonHangDTO);
                }
            }
            Session["GioHang"] = cartList;
            return Json(true, JsonRequestBehavior.AllowGet);
        }

        // POST: Cart/ThanhToan
        [HttpPost]
        public ActionResult ThanhToan(DonHangDTO donHangDTO)
        {
            var cartList = (List<ChiTietDonHangDTO>)Session["GioHang"];
            int priceTotal = 0;
            foreach (var product in cartList)
            {
                priceTotal += (int)product.SoLuong * (int)product.Gia;
            }
            donHangDTO.TongTien = priceTotal;
            donHangDTO.NgayTao = DateTime.Now;
            donHangDTO.TrangThai = (int)EnumCommon.StatusCart.DoiGiaoHang;
            if (!string.IsNullOrEmpty(User.Identity.GetUserName()))
            {
                donHangDTO.MaTaiKhoan = new TaiKhoanManage().GetMaTaiKhoanByIdentity(User.Identity.GetUserId());
            }
            var checkInsert = new DonHangManage().Insert(donHangDTO);
            if (checkInsert)
            {
                DonHangDTO donHangNew = new DonHangManage().GetDetail(donHangDTO);
                if (donHangNew != null)
                {
                    foreach (var product in cartList)
                    {
                        product.MaDon = donHangNew.MaDon;
                        var a = new ChiTietDonHangManage().Insert(product);
                    }
                    TempData["Notify"] = "Thành công. Chúng tôi sẽ liên lạc với bạn!";
                    Session["GioHang"] = new List<ChiTietDonHangDTO>();
                }
            }
            else
            {
                TempData["Notify"] = "Thất bại!";
            }
            return RedirectToAction("Index", "Home");
        }
    }
}