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
    [Authorize]
    public class ManageController : Controller
    {
        readonly SanPhamManage _sanPhamManage = new SanPhamManage();
        readonly SanPhamSizeManage _sanPhamSizeManage = new SanPhamSizeManage();
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

        // POST: admin/UpdateProduct
        public JsonResult UpdateProduct(SanPhamDTO sanPhamDTO, HttpPostedFileBase anh, int type)
        {
            var result = false;
            if (type == 1)
            {
                string imgPath = Path.Combine(HttpContext.Server.MapPath("/Assets/client/image/"),
                                              Path.GetFileName(anh.FileName));
                anh.SaveAs(imgPath);

                var pathAnh = "/Assets/client/image/" + anh.FileName;
                sanPhamDTO.AnhSanPham = pathAnh;
                sanPhamDTO.NgayTao = DateTime.Now;
                sanPhamDTO.TrangThai = (int)EnumCommon.Status.TonTai;

                var addProduct = _sanPhamManage.InsertProduct(sanPhamDTO);

                //add size s
                var SpSizeS = new SanPhamSizeDTO()
                {
                    MaSanPham = addProduct.MaSanPham,
                    MaSize = (int)EnumCommon.Size.S,
                    SoLuong = sanPhamDTO.SizeS
                };
                result = _sanPhamSizeManage.Insert(SpSizeS);


                //add size M
                var SpSizeM = new SanPhamSizeDTO()
                {
                    MaSanPham = addProduct.MaSanPham,
                    MaSize = (int)EnumCommon.Size.M,
                    SoLuong = sanPhamDTO.SizeM  
                };
                result = _sanPhamSizeManage.Insert(SpSizeM);


                //add size L
                var SpSizeL = new SanPhamSizeDTO()
                {
                    MaSanPham = addProduct.MaSanPham,
                    MaSize = (int)EnumCommon.Size.L,
                    SoLuong = sanPhamDTO.SizeL
                };
                result = _sanPhamSizeManage.Insert(SpSizeL);



                //add size XL
                var SpSizeXL = new SanPhamSizeDTO()
                {
                    MaSanPham = addProduct.MaSanPham,
                    MaSize = (int)EnumCommon.Size.XL,
                    SoLuong = sanPhamDTO.SizeXL
                };
                result = _sanPhamSizeManage.Insert(SpSizeXL);

                //add size m
                var SpSizeXXL = new SanPhamSizeDTO()
                {
                    MaSanPham = addProduct.MaSanPham,
                    MaSize = (int)EnumCommon.Size.XXL,
                    SoLuong = sanPhamDTO.SizeXXL
                };
                result = _sanPhamSizeManage.Insert(SpSizeXXL);
            }
            else
            {
                var getSP = _sanPhamManage.GetById(sanPhamDTO.MaSanPham);
                if (anh == null)
                    sanPhamDTO.AnhSanPham = getSP.AnhSanPham;
                else
                {
                    string imgPath = Path.Combine(HttpContext.Server.MapPath("/Assets/client/image/"),
                              Path.GetFileName(anh.FileName));
                    anh.SaveAs(imgPath);

                    var pathAnh = "/Assets/client/image/" + anh.FileName;
                    sanPhamDTO.AnhSanPham = pathAnh;
                    
                }
                sanPhamDTO.NgayTao = getSP.NgayTao;
                sanPhamDTO.TrangThai = getSP.TrangThai;
                sanPhamDTO.GioiTinh = getSP.GioiTinh;
                result = _sanPhamManage.Update(sanPhamDTO);

                //update size s
                var SpSizeS = new SanPhamSizeDTO()
                {
                    MaSanPham = getSP.MaSanPham,
                    MaSize = (int)EnumCommon.Size.S,
                    SoLuong = sanPhamDTO.SizeS
                };
                result = _sanPhamSizeManage.UpdateSoLuong(SpSizeS);

                //update size M
                var SpSizeM = new SanPhamSizeDTO()
                {
                    MaSanPham = getSP.MaSanPham,
                    MaSize = (int)EnumCommon.Size.M,
                    SoLuong = sanPhamDTO.SizeM
                };
                result = _sanPhamSizeManage.UpdateSoLuong(SpSizeM);

                //update size L
                var SpSizeL = new SanPhamSizeDTO()
                {
                    MaSanPham = getSP.MaSanPham,
                    MaSize = (int)EnumCommon.Size.L,
                    SoLuong = sanPhamDTO.SizeL
                };
                result = _sanPhamSizeManage.UpdateSoLuong(SpSizeL);

                //update size XL
                var SpSizeXL = new SanPhamSizeDTO()
                {
                    MaSanPham = getSP.MaSanPham,
                    MaSize = (int)EnumCommon.Size.XL,
                    SoLuong = sanPhamDTO.SizeXL
                };
                result = _sanPhamSizeManage.UpdateSoLuong(SpSizeXL);

                //update size m
                var SpSizeXXL = new SanPhamSizeDTO()
                {
                    MaSanPham = getSP.MaSanPham,
                    MaSize = (int)EnumCommon.Size.XXL,
                    SoLuong = sanPhamDTO.SizeXXL
                };
                result = _sanPhamSizeManage.UpdateSoLuong(SpSizeXXL);

                //if(sanPhamDTO.AnhSanPham)
            }
            
            return Json(result, JsonRequestBehavior.AllowGet);
        }

        //Confirm cart
        public JsonResult DeleteProduct(int idProduct)
        {
            var status = "error";
            var message = "";
            var getInfoProduct = _sanPhamManage.GetById(idProduct);
            getInfoProduct.TrangThai = (int)EnumCommon.Status.Xoa;
            var result = _sanPhamManage.Update(getInfoProduct);
            switch (result)
            {
                case true:
                    {
                        status = "success";
                        message = "Xóa thành công";
                    }
                    break;
                default:
                    message = "Đã xảy ra lỗi, thử lại sau";
                    break;
            }
            return Json(new { message = message, status = status }, JsonRequestBehavior.AllowGet);
        }

        // GET: admin/EditProduct
        public ActionResult EditProduct(int maSP)
        {
            var model = _sanPhamManage.GetById(maSP);
            return View(model);
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
            var model = _donHangManage.GetById((int)maHD);

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
    }
}