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
    public class TaiKhoanManage
    {
        readonly TaiKhoanConvert _convert = new TaiKhoanConvert();
        readonly TaiKhoanDAO _dao = new TaiKhoanDAO();

        ClothesShopEntities db = null;

        public TaiKhoanManage()
        {
            db = new ClothesShopEntities();
        }

        public List<TaiKhoanDTO> GetAll()
        {
            var listEF = db.TaiKhoans.ToList();
            var listDTO = new List<TaiKhoanDTO>();
            foreach (var ef in listEF)
            {
                listDTO.Add(_convert.ConvertToDTO(ef));
            }
            return listDTO;
        }

        public List<TaiKhoanDTO> GetSearch(string txt)
        {
            var listEF = db.TaiKhoans.ToList();
            var listDTO = new List<TaiKhoanDTO>();
            foreach (var ef in listEF)
            {
                listDTO.Add(_convert.ConvertToDTO(ef));
            }
            listDTO = listDTO.Where(x => x.User.ToLower().Contains(txt.ToLower()) || x.HoTen.ToLower().Contains(txt.ToLower())).ToList();
            return listDTO;
        }

        public TaiKhoanDTO GetById(int maTaiKhoan)
        {
            var ef = db.TaiKhoans.Find(maTaiKhoan);
            var dto = _convert.ConvertToDTO(ef);
            return dto;
        }

        public int GetMaTaiKhoanByIdentity(string idIdentity)
        {
            var ef = db.TaiKhoans.FirstOrDefault(x => x.IdAspNetUser.Equals(idIdentity));
            return ef.MaTaiKhoan;
        }

        public TaiKhoanDTO GetTaiKhoanByIdentity(string idIdentity)
        {
            var ef = db.TaiKhoans.FirstOrDefault(x => x.IdAspNetUser.Equals(idIdentity));
            var dto = new TaiKhoanDTO();
            if (ef == null)
                return null;
            dto = _convert.ConvertToDTO(ef);
            return dto;
        }


        #region Xử lý Thêm, Sửa, Xóa
        public bool Insert(TaiKhoanDTO taiKhoanDTO)
        {
            TaiKhoan taiKhoan = _convert.ConvertToEF(taiKhoanDTO);
            return _dao.Insert(taiKhoan);
        }

        public bool Update(TaiKhoanDTO taiKhoanDTO)
        {
            TaiKhoan taiKhoan = _convert.ConvertToEF(taiKhoanDTO);
            return _dao.Update(taiKhoan);
        }

        public bool Delete(int maTaiKhoan)
        {
            return _dao.Delete(maTaiKhoan);
        }
        #endregion
    }
}
