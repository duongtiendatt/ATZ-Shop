using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.BU.DTO
{
    public class DonHangDTO
    {
        public int MaDon { get; set; }
        public Nullable<int> MaTaiKhoan { get; set; }
        public string HoTenNN { get; set; }
        public string DienThoaiNN { get; set; }
        public string EmailNN { get; set; }
        public string DiaChiNN { get; set; }
        public string GhiChu { get; set; }
        public Nullable<int> TongTien { get; set; }
        public Nullable<System.DateTime> NgayTao { get; set; }
        public Nullable<int> TrangThai { get; set; }
    }
}
