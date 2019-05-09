using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.BU.DTO
{
    public class ChiTietDonHangDTO
    {
        public int MaDon { get; set; }
        public int MaSanPham { get; set; }
        public string HinhAnh { get; set; }
        public string TenSanPham { get; set; }
        public int MaSize { get; set; }
        public string TenSize { get; set; }
        public int Gia { get; set; }
        public Nullable<int> SoLuong { get; set; }
    }
}
