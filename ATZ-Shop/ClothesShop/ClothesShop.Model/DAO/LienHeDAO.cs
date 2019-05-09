using ClothesShop.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.Model.DAO
{
    public class LienHeDAO
    {
        ClothesShopEntities db = null;

        public LienHeDAO()
        {
            db = new ClothesShopEntities();
        }

        public bool Insert(LienHe lh)
        {
            try
            {
                db.LienHes.Add(lh);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Update(LienHe lh)
        {
            try
            {
                var old = db.LienHes.Find(lh.ID);
                old.Email = lh.Email;
                old.NoiDung = lh.NoiDung;
                old.TenKH = lh.TenKH;
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
                var del = db.LienHes.Find(id);
                db.LienHes.Remove(del);
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
