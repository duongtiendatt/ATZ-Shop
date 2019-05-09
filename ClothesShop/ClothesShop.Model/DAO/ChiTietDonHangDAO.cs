using ClothesShop.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.Model.DAO
{
    public class ChiTietDonHangDAO
    {
        ClothesShopEntities db = null;

        public ChiTietDonHangDAO()
        {
            db = new ClothesShopEntities();
        }

        public bool Insert(ChiTietDonHang ctdh)
        {
            try
            {
                db.ChiTietDonHangs.Add(ctdh);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Update(ChiTietDonHang ctdh)
        {
            try
            {
                var old = db.ChiTietDonHangs.FirstOrDefault(x=>x.MaSanPham == ctdh.MaSanPham && x.MaDon == ctdh.MaDon);
                old.SoLuong = ctdh.SoLuong;
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Delete(ChiTietDonHang ctdh)
        {
            try
            {
                var del = db.ChiTietDonHangs.FirstOrDefault(x => x.MaSanPham == ctdh.MaSanPham && x.MaDon == ctdh.MaDon);
                db.ChiTietDonHangs.Remove(del);
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
