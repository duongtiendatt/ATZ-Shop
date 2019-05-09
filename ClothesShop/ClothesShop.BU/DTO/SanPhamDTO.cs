using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.BU.DTO
{
    public class SanPhamDTO
    {
        public int MaSanPham { get; set; }
        public Nullable<int> MaDanhMuc { get; set; }
        public string TenSanPham { get; set; }
        public string AnhSanPham { get; set; }
        public Nullable<int> GiaBan { get; set; }
        public Nullable<int> GiaSale { get; set; }
        public string MoTa { get; set; }
        public Nullable<int> GioiTinh { get; set; }
        public Nullable<int> TrangThai { get; set; }
        public Nullable<int> NamSanXuat { get; set; }
        public Nullable<System.DateTime> NgayTao { get; set; }
        public string HangSanXuat { get; set; }
        public string LoaiSanPham { get; set; }
        public int SoLuongSize { get; set; }
        public string TenDanhMuc { get; set; }
        public int SizeS { get; set; }
        public int SizeM { get; set; }
        public int SizeL { get; set; }
        public int SizeXL { get; set; }
        public int SizeXXL { get; set; }
    }
}
