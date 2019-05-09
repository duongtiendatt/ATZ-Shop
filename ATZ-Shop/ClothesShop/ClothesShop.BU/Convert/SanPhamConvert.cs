using ClothesShop.BU.Common;
using ClothesShop.BU.DTO;
using ClothesShop.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.BU.Convert
{
    public class SanPhamConvert
    {
        public SanPhamDTO ConvertToDTO(SanPham ef)
        {
            var dto = new SanPhamDTO()
            {
                AnhSanPham = ef.AnhSanPham,
                GiaBan = ef.GiaBan,
                GiaSale = ef.GiaSale,
                GioiTinh = ef.GioiTinh,
                MaDanhMuc = ef.MaDanhMuc,
                MaSanPham = ef.MaSanPham,
                MoTa = ef.MoTa,
                NamSanXuat = ef.NamSanXuat,
                NgayTao = ef.NgayTao,
                TenSanPham = ef.TenSanPham,
                TrangThai = ef.TrangThai,
                HangSanXuat = ef.HangSanXuat,
                LoaiSanPham = ef.DanhMuc.TenDanhMuc,
                TenDanhMuc = ef.DanhMuc.TenDanhMuc
            };
            if(ef.SanPhamSizes.Any(x=>x.MaSize == (int)EnumCommon.Size.S))
            {
                dto.SoLuongSize = (int)ef.SanPhamSizes.FirstOrDefault(x => x.MaSize == (int)EnumCommon.Size.S).SoLuong;
            }
            else
            {
                dto.SoLuongSize = 0;
            }
            return dto;
        }

        public SanPham ConvertToEF(SanPhamDTO dto)
        {
            var ef = new SanPham()
            {
                TrangThai = dto.TrangThai,
                TenSanPham = dto.TenSanPham,
                NgayTao = dto.NgayTao,
                NamSanXuat = dto.NamSanXuat,
                MoTa = dto.MoTa,
                MaDanhMuc = dto.MaDanhMuc,
                GioiTinh = dto.GioiTinh,
                GiaSale = dto.GiaSale,
                GiaBan = dto.GiaBan,
                AnhSanPham = dto.AnhSanPham,
                HangSanXuat = dto.HangSanXuat
            };
            if (dto.MaSanPham > 0)
            {
                ef.MaSanPham = dto.MaSanPham;
            }
            return ef;
        }
    }
}
