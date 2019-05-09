using ClothesShop.BU.Common;
using ClothesShop.BU.Convert;
using ClothesShop.BU.DTO;
using ClothesShop.Model.DAO;
using ClothesShop.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.BU.Manage
{
    public class DonHangManage
    {
        readonly DonHangConvert _convert = new DonHangConvert();
        readonly DonHangDAO _dao = new DonHangDAO();

        ClothesShopEntities db = null;

        public DonHangManage()
        {
            db = new ClothesShopEntities();
        }

        public List<DonHangDTO> GetAll()
        {
            var listEF = db.DonHangs.Where(x => x.TrangThai != (int)EnumCommon.StatusCart.Xoa).OrderByDescending(x => x.NgayTao).ToList();
            var listDTO = new List<DonHangDTO>();
            foreach (var ef in listEF)
            {
                listDTO.Add(_convert.ConvertToDTO(ef));
            }
            return listDTO;
        }

        public List<DonHangDTO> GetAllSearch(string txt)
        {
            var listEF = db.DonHangs.Where(x => x.TrangThai != (int)EnumCommon.StatusCart.Xoa && x.HoTenNN.ToLower().Contains(txt.ToLower())).OrderByDescending(x => x.NgayTao).ToList();
            var listDTO = new List<DonHangDTO>();
            foreach (var ef in listEF)
            {
                listDTO.Add(_convert.ConvertToDTO(ef));
            }
            return listDTO;
        }

        public DonHangDTO GetById(int maDonHang)
        {
            var ef = db.DonHangs.Find(maDonHang);
            var dto = _convert.ConvertToDTO(ef);
            return dto;
        }

        public DonHangDTO GetDetail(DonHangDTO donHangDTO)
        {
            var ef = db.DonHangs.FirstOrDefault(x => x.DienThoaiNN.Equals(donHangDTO.DienThoaiNN) && x.HoTenNN.Equals(donHangDTO.HoTenNN));
            if (ef != null)
            {
                return _convert.ConvertToDTO(ef);
            }
            return null;
        }


        #region Xử lý Thêm, Sửa, Xóa
        public bool Insert(DonHangDTO DonHangDTO)
        {
            DonHang DonHang = _convert.ConvertToEF(DonHangDTO);
            try
            {
                db.DonHangs.Add(DonHang);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Update(DonHangDTO DonHangDTO)
        {
            DonHang DonHang = _convert.ConvertToEF(DonHangDTO);
            return _dao.Update(DonHang);
        }

        public bool Delete(int maDonHang)
        {
            return _dao.Delete(maDonHang);
        }
        #endregion
    }
}
