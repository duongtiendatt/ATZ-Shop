using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.BU.DTO
{
    public class SanPhamSizeDTO
    {
        public int ID { get; set; }
        public Nullable<int> MaSanPham { get; set; }
        public Nullable<int> MaSize { get; set; }
        public Nullable<int> SoLuong { get; set; }
    }
}
