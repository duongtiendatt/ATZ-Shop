using ClothesShop.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.Model.DAO
{
    public class SanPhamSizeDAO
    {
        ClothesShopEntities db = null;

        public SanPhamSizeDAO()
        {
            db = new ClothesShopEntities();
        }

        public bool Insert(SanPhamSize sanPhamSize)
        {
            try
            {
                db.SanPhamSizes.Add(sanPhamSize);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Update(SanPhamSize sanPhamSize)
        {
            try
            {
                var old = db.SanPhamSizes.Find(sanPhamSize.ID);
                old.MaSanPham = sanPhamSize.MaSanPham;
                old.MaSize = sanPhamSize.MaSize;
                old.SoLuong = sanPhamSize.SoLuong;
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
                var del = db.SanPhamSizes.Find(id);
                db.SanPhamSizes.Remove(del);
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
