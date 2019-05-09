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
    public class ThongKeDateConvert
    {
        public List<ThongKeDateDTO> ConvertDTO(List<DonHangDTO> listDH)
        {
            List<ThongKeDateDTO> listTKDate = new List<ThongKeDateDTO>();
            var hdGroup = listDH.GroupBy(x => x.NgayTao);
            foreach(var g in hdGroup)
            {
                ThongKeDateDTO tk = new ThongKeDateDTO();
                tk.Ngay = (DateTime)g.FirstOrDefault().NgayTao;
                tk.SoLuong = g.Count();
                tk.TongTien = g.Sum(x => x.TongTien).Value;
                tk.TienDaNhan = g.Where(x => x.TrangThai == (int)EnumCommon.StatusCart.HoanThanh).Sum(x => x.TongTien).Value;
                listTKDate.Add(tk);
            }
            return listTKDate;
        }
    }
}
