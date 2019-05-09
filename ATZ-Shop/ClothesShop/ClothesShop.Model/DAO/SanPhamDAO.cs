using ClothesShop.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.Model.DAO
{
    public class SanPhamDAO
    {
        ClothesShopEntities db = null;

        public SanPhamDAO()
        {
            db = new ClothesShopEntities();
        }

        public bool Insert(SanPham sanPham)
        {
            try
            {
                db.SanPhams.Add(sanPham);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        //InsertProduct
        public SanPham InsertProduct(SanPham sanPham)
        {
            try
            {
                var sp = db.SanPhams.Add(sanPham);
                db.SaveChanges();
                return sp;
            }
            catch
            {
                return null;
            }
        }

        public bool Update(SanPham sanPham)
        {
            try
            {
                var old = db.SanPhams.Find(sanPham.MaSanPham);
                old.AnhSanPham = sanPham.AnhSanPham;
                old.GiaBan = sanPham.GiaBan;
                old.GiaSale = sanPham.GiaSale;
                old.GioiTinh = sanPham.GioiTinh;
                old.MaDanhMuc = sanPham.MaDanhMuc;
                old.MoTa = sanPham.MoTa;
                old.NamSanXuat = sanPham.NamSanXuat;
                old.NgayTao = sanPham.NgayTao;
                old.TenSanPham = sanPham.TenSanPham;
                old.TrangThai = sanPham.TrangThai;
                old.HangSanXuat = sanPham.HangSanXuat;
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Delete(int id)
        {
            try
            {
                var del = db.SanPhams.Find(id);
                db.SanPhams.Remove(del);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
