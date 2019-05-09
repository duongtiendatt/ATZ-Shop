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
    public class ChiTietDonHangManage
    {
        readonly ChiTietDonHangConvert _convert = new ChiTietDonHangConvert();
        readonly ChiTietDonHangDAO _dao = new ChiTietDonHangDAO();

        ClothesShopEntities db = null;

        public ChiTietDonHangManage()
        {
            db = new ClothesShopEntities();
        }

        public List<ChiTietDonHangDTO> GetAll()
        {
            var listEF = db.ChiTietDonHangs.ToList();
            var listDTO = new List<ChiTietDonHangDTO>();
            foreach (var ef in listEF)
            {
                listDTO.Add(_convert.ConvertToDTO(ef));
            }
            return listDTO;
        }

        public ChiTietDonHangDTO GetById(int maChiTietDonHang)
        {
            var ef = db.ChiTietDonHangs.Find(maChiTietDonHang);
            var dto = _convert.ConvertToDTO(ef);
            return dto;
        }



        #region Xử lý Thêm, Sửa, Xóa
        public bool Insert(ChiTietDonHangDTO ChiTietDonHangDTO)
        {
            ChiTietDonHang ChiTietDonHang = _convert.ConvertToEF(ChiTietDonHangDTO);
            try
            {
                db.ChiTietDonHangs.Add(ChiTietDonHang);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Update(ChiTietDonHangDTO ChiTietDonHangDTO)
        {
            ChiTietDonHang ChiTietDonHang = _convert.ConvertToEF(ChiTietDonHangDTO);
            return _dao.Update(ChiTietDonHang);
        }

        public bool Delete(ChiTietDonHangDTO chiTietDonHangDTO)
        {
            ChiTietDonHang ChiTietDonHang = _convert.ConvertToEF(chiTietDonHangDTO);
            return _dao.Delete(ChiTietDonHang);
        }
        #endregion
    }
}
