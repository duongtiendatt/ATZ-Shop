using ClothesShop.BU.DTO;
using ClothesShop.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.BU.Convert
{
    public class LienHeConvert
    {
        public LienHeDTO ConvertToDTO(LienHe ef)
        {
            var dto = new LienHeDTO()
            {
                ID = ef.ID,
                Email = ef.Email,
                NoiDung = ef.NoiDung,
                TenKH = ef.TenKH
            };
            return dto;
        }

        public LienHe ConvertToEF(LienHeDTO dto)
        {
            var ef = new LienHe()
            {
                TenKH = dto.TenKH,
                NoiDung = dto.NoiDung,
                Email = dto.Email
            };
            if (dto.ID > 0)
            {
                ef.ID = dto.ID;
            }
            return ef;
        }
    }
}
