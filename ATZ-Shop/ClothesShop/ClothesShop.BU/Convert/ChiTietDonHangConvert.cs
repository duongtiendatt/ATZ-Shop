using ClothesShop.BU.DTO;
using ClothesShop.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.BU.Convert
{
    public class ChiTietDonHangConvert
    {
        public ChiTietDonHangDTO ConvertToDTO(ChiTietDonHang ef)
        {
            var dto = new ChiTietDonHangDTO()
            {
                MaDon = (int)ef.MaDon,
                MaSanPham = (int)ef.MaSanPham, 
                SoLuong = ef.SoLuong,
                HinhAnh = ef.SanPham.AnhSanPham,
                MaSize = ef.Size.MaSize,
                TenSanPham = ef.SanPham.TenSanPham,
                TenSize = ef.Size.TenSize
            };
            if(ef.SanPham.GiaSale != null)
            {
                dto.Gia = (int)ef.SanPham.GiaSale;
            }
            else
            {
                dto.Gia = (int)ef.SanPham.GiaBan;
            }
            return dto;
        }

        public ChiTietDonHang ConvertToEF(ChiTietDonHangDTO dto)
        {
            var ef = new ChiTietDonHang()
            {
                SoLuong = dto.SoLuong,
                MaDon = dto.MaDon,
                MaSanPham = dto.MaSanPham,
                MaSize = dto.MaSize
            };
            return ef;
        }
    }
}
