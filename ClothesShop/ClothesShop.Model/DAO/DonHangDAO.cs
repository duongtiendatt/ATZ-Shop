using ClothesShop.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.Model.DAO
{
    public class DonHangDAO
    {
        ClothesShopEntities db = null;

        public DonHangDAO()
        {
            db = new ClothesShopEntities();
        }

        public bool Insert(DonHang dh)
        {
            try
            {
                db.DonHangs.Add(dh);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Update(DonHang dh)
        {
            try
            {
                var old = db.DonHangs.Find(dh.MaDon);
                old.DiaChiNN = dh.DiaChiNN;
                old.DienThoaiNN = dh.DienThoaiNN;
                old.EmailNN = dh.EmailNN;
                old.GhiChu = dh.GhiChu;
                old.HoTenNN = dh.HoTenNN;
                old.MaTaiKhoan = dh.MaTaiKhoan;
                old.NgayTao = dh.NgayTao;
                old.TongTien = dh.TongTien;
                old.TrangThai = dh.TrangThai;
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
                var del = db.DonHangs.Find(id);
                db.DonHangs.Remove(del);
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
