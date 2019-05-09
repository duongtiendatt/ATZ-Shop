using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.BU.Common
{
    public class EnumCommon
    {
        public enum Menu
        {
            TrangChu,
            GioiThieu,
            SanPham,
            LienHe
        }

        public enum Product
        {
            TatCa,
            HangMoiVe,
            HangDangSale,
            ThoiTrangNam,
            ThoiTrangNu,
            ThoiTrangTreEm,
            PhuKien
        }


        public enum Status
        {
            TonTai = 1,
            Xoa = 0
        }
        
        public enum Size
        {
            S = 1,
            M = 2,
            L = 3,
            XL = 4,
            XXL = 5
        }

        public enum SapXep
        {
            MacDinh,
            CaoXuongThap,
            ThapLenCao
        }

        public enum StatusCart
        {
            Xoa,
            HoanThanh,
            DoiGiaoHang
        }
    }
}
