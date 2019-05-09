using ClothesShop.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.Model.DAO
{
    public class DanhMucDAO
    {
        ClothesShopEntities db = null;

        public DanhMucDAO()
        {
            db = new ClothesShopEntities();
        }

        public bool Insert(DanhMuc dmuc)
        {
            try
            {
                db.DanhMucs.Add(dmuc);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Update(DanhMuc dmuc)
        {
            try
            {
                var old = db.DanhMucs.Find(dmuc.MaDanhMuc);
                old.TenDanhMuc = dmuc.TenDanhMuc;
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
                var del = db.DanhMucs.Find(id);
                db.DanhMucs.Remove(del);
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
