using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.BU.DTO
{
    public class TaiKhoanDTO
    {
        public int MaTaiKhoan { get; set; }
        public string HoTen { get; set; }
        public Nullable<System.DateTime> NgaySinh { get; set; }
        public string Email { get; set; }
        public string SoDienThoai { get; set; }
        public string DiaChi { get; set; }
        public Nullable<int> TrangThai { get; set; }
        public Nullable<int> IsAdmin { get; set; }
        public string IdAspNetUser { get; set; }
        public string User { get; set; }
    }
}
