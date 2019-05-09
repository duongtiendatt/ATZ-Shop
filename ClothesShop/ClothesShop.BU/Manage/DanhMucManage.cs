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
    public class DanhMucManage
    {
        readonly DanhMucConvert _convert = new DanhMucConvert();
        readonly DanhMucDAO _dao = new DanhMucDAO();

        ClothesShopEntities db = null;

        public DanhMucManage()
        {
            db = new ClothesShopEntities();
        }

        public List<DanhMucDTO> GetAll()
        {
            var listEF = db.DanhMucs.ToList();
            var listDTO = new List<DanhMucDTO>();
            foreach (var ef in listEF)
            {
                listDTO.Add(_convert.ConvertToDTO(ef));
            }
            return listDTO;
        }

        public DanhMucDTO GetById(int maDanhMuc)
        {
            var ef = db.DanhMucs.Find(maDanhMuc);
            var dto = _convert.ConvertToDTO(ef);
            return dto;
        }



        #region Xử lý Thêm, Sửa, Xóa
        public bool Insert(DanhMucDTO DanhMucDTO)
        {
            DanhMuc DanhMuc = _convert.ConvertToEF(DanhMucDTO);
            return _dao.Insert(DanhMuc);
        }

        public bool Update(DanhMucDTO DanhMucDTO)
        {
            DanhMuc DanhMuc = _convert.ConvertToEF(DanhMucDTO);
            return _dao.Update(DanhMuc);
        }

        public bool Delete(int maDanhMuc)
        {
            return _dao.Delete(maDanhMuc);
        }
        #endregion
    }
}
