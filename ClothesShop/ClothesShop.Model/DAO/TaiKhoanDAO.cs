using ClothesShop.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.Model.DAO
{
    public class TaiKhoanDAO
    {
        ClothesShopEntities db = null;

        public TaiKhoanDAO()
        {
            db = new ClothesShopEntities();
        }

        public bool Insert(TaiKhoan taiKhoan)
        {
            try
            {
                db.TaiKhoans.Add(taiKhoan);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Update(TaiKhoan taiKhoan)
        {
            try
            {
                var old = db.TaiKhoans.Find(taiKhoan.MaTaiKhoan);
                old.HoTen = taiKhoan.HoTen;
                old.IsAdmin = taiKhoan.IsAdmin;
                old.NgaySinh = taiKhoan.NgaySinh;
                old.SoDienThoai = taiKhoan.SoDienThoai;
                old.TrangThai = taiKhoan.TrangThai;
                old.Email = taiKhoan.Email;
                old.DiaChi = taiKhoan.DiaChi;
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
                var del = db.TaiKhoans.Find(id);
                db.TaiKhoans.Remove(del);
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
