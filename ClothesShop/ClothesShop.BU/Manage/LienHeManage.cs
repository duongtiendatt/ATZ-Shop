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
    public class LienHeManage
    {
        readonly LienHeConvert _convert = new LienHeConvert();
        readonly LienHeDAO _dao = new LienHeDAO();

        ClothesShopEntities db = null;

        public LienHeManage()
        {
            db = new ClothesShopEntities();
        }

        public List<LienHeDTO> GetAll()
        {
            var listEF = db.LienHes.ToList();
            var listDTO = new List<LienHeDTO>();
            foreach (var ef in listEF)
            {
                listDTO.Add(_convert.ConvertToDTO(ef));
            }
            return listDTO;
        }

        public LienHeDTO GetById(int maLienHe)
        {
            var ef = db.LienHes.Find(maLienHe);
            var dto = _convert.ConvertToDTO(ef);
            return dto;
        }



        #region Xử lý Thêm, Sửa, Xóa
        public bool Insert(LienHeDTO LienHeDTO)
        {
            LienHe LienHe = _convert.ConvertToEF(LienHeDTO);
            return _dao.Insert(LienHe);
        }

        public bool Update(LienHeDTO LienHeDTO)
        {
            LienHe LienHe = _convert.ConvertToEF(LienHeDTO);
            return _dao.Update(LienHe);
        }

        public bool Delete(int maLienHe)
        {
            return _dao.Delete(maLienHe);
        }
        #endregion
    }
}
