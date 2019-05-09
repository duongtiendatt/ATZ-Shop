using ClothesShop.BU.DTO;
using ClothesShop.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.BU.Convert
{
    public class SanPhamSizeConvert
    {
        public SanPhamSizeDTO ConvertToDTO(SanPhamSize ef)
        {
            var dto = new SanPhamSizeDTO()
            {
                ID = ef.ID,
                MaSanPham = ef.MaSanPham,
                MaSize = ef.MaSize,
                SoLuong = ef.SoLuong
            };
            
            return dto;
        }

        public SanPhamSize ConvertToEF(SanPhamSizeDTO dto)
        {
            var ef = new SanPhamSize()
            {
                ID = dto.ID,
                MaSanPham = dto.MaSanPham,
                MaSize = dto.MaSize,
                SoLuong = dto.SoLuong
            };

            return ef;
        }
    }
}
