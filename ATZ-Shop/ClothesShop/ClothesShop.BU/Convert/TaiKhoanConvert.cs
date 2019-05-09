using ClothesShop.BU.DTO;
using ClothesShop.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.BU.Convert
{
    public class TaiKhoanConvert
    {
        public TaiKhoanDTO ConvertToDTO(TaiKhoan ef)
        {
            var dto = new TaiKhoanDTO()
            {
                DiaChi = ef.DiaChi,
                Email = ef.Email,
                HoTen = ef.HoTen,
                IdAspNetUser = ef.IdAspNetUser,
                IsAdmin = ef.IsAdmin,
                MaTaiKhoan = ef.MaTaiKhoan,
                NgaySinh = ef.NgaySinh,
                SoDienThoai = ef.SoDienThoai,
                TrangThai = ef.TrangThai,
                User = ef.AspNetUser.UserName
            };
            return dto;
        }

        public TaiKhoan ConvertToEF(TaiKhoanDTO dto)
        {
            var ef = new TaiKhoan()
            {
                TrangThai = dto.TrangThai,
                SoDienThoai = dto.SoDienThoai,
                NgaySinh = dto.NgaySinh,
                DiaChi = dto.DiaChi,
                Email = dto.Email,
                HoTen = dto.HoTen,
                IsAdmin = dto.IsAdmin,
                IdAspNetUser = dto.IdAspNetUser
            };
            if(dto.MaTaiKhoan > 0)
            {
                ef.MaTaiKhoan = dto.MaTaiKhoan;
            }
            return ef;
        }
    }
}
