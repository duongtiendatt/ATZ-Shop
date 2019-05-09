using ClothesShop.BU.DTO;
using ClothesShop.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.BU.Convert
{
    public class DanhMucConvert
    {
        public DanhMucDTO ConvertToDTO(DanhMuc ef)
        {
            var dto = new DanhMucDTO()
            {
                MaDanhMuc = ef.MaDanhMuc,
                TenDanhMuc = ef.TenDanhMuc
            };
            return dto;
        }

        public DanhMuc ConvertToEF(DanhMucDTO dto)
        {
            var ef = new DanhMuc()
            {
                TenDanhMuc = dto.TenDanhMuc
            };
            if (dto.MaDanhMuc > 0)
            {
                ef.MaDanhMuc = dto.MaDanhMuc;
            }
            return ef;
        }
    }
}
