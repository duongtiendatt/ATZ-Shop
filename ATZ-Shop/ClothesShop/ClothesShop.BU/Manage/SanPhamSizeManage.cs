using ClothesShop.BU.Convert;
using ClothesShop.BU.DTO;
using ClothesShop.Model.DAO;
using ClothesShop.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.BU.Manage
{
    public class SanPhamSizeManage
    {
        readonly SanPhamSizeConvert _convert = new SanPhamSizeConvert();
        readonly SanPhamSizeDAO _dao = new SanPhamSizeDAO();

        ClothesShopEntities db = null;

        public SanPhamSizeManage()
        {
            db = new ClothesShopEntities();
        }

        public bool Insert(SanPhamSizeDTO dto)
        {
            return _dao.Insert(_convert.ConvertToEF(dto));
        }

        public bool UpdateSoLuong(SanPhamSizeDTO dto)
        {
            return _dao.UpdateSoLuong(_convert.ConvertToEF(dto));
        }
    }
}
