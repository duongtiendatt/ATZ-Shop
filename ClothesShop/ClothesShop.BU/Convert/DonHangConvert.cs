using ClothesShop.BU.DTO;
using ClothesShop.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.BU.Convert
{
    public class DonHangConvert
    {
        public DonHangDTO ConvertToDTO(DonHang ef)
        {
            var dto = new DonHangDTO()
            {
                DiaChiNN = ef.DiaChiNN,
                DienThoaiNN = ef.DienThoaiNN,
                EmailNN = ef.EmailNN,
                GhiChu = ef.GhiChu,
                HoTenNN = ef.HoTenNN,
                MaDon = ef.MaDon,
                MaTaiKhoan = ef.MaTaiKhoan,
                NgayTao = ef.NgayTao,
                TongTien = ef.TongTien,
                TrangThai = ef.TrangThai
            };
            return dto;
        }

        public DonHang ConvertToEF(DonHangDTO dto)
        {
            var ef = new DonHang()
            {
                TrangThai = dto.TrangThai,
                TongTien = dto.TongTien,
                NgayTao = dto.NgayTao,
                MaTaiKhoan = dto.MaTaiKhoan,
                HoTenNN = dto.HoTenNN,
                GhiChu = dto.GhiChu,
                EmailNN = dto.EmailNN,
                DienThoaiNN = dto.DienThoaiNN,
                DiaChiNN = dto.DiaChiNN
            };
            if (dto.MaDon > 0)
            {
                ef.MaDon = dto.MaDon;
            }
            return ef;
        }
    }
}
