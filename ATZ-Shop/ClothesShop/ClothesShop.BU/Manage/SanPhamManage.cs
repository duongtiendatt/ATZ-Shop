using ClothesShop.BU.Common;
using ClothesShop.BU.Convert;
using ClothesShop.BU.DTO;
using ClothesShop.Model.DAO;
using ClothesShop.Model.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClothesShop.BU.Manage
{
    public class SanPhamManage
    {
        readonly SanPhamConvert _convert = new SanPhamConvert();
        readonly SanPhamDAO _dao = new SanPhamDAO();

        ClothesShopEntities db = null;

        public SanPhamManage()
        {
            db = new ClothesShopEntities();
        }

        public List<SanPhamDTO> GetAll(int product)
        {
            var listEF = db.SanPhams.Where(x => x.TrangThai == (int)EnumCommon.Status.TonTai).ToList();
            if (product != (int)EnumCommon.Product.TatCa)
            {
                listEF = listEF.Where(x => x.MaDanhMuc == product).ToList();
            }
            var listDTO = new List<SanPhamDTO>();
            foreach (var ef in listEF)
            {
                listDTO.Add(_convert.ConvertToDTO(ef));
            }
            return listDTO;
        }

        public SanPhamDTO GetById(int maSanPham)
        {
            var ef = db.SanPhams.Find(maSanPham);
            var dto = _convert.ConvertToDTO(ef);
            return dto;
        }

        public List<SanPhamDTO> GetSkipNumber(int? productType)
        {
            var listEF = db.SanPhams.Where(x => x.TrangThai == (int)EnumCommon.Status.TonTai && x.MaDanhMuc == productType).OrderByDescending(x => x.NgayTao).Take(8);
            var listDTO = new List<SanPhamDTO>();
            foreach (var ef in listEF)
            {
                listDTO.Add(_convert.ConvertToDTO(ef));
            }
            return listDTO;
        }

        public List<SanPhamDTO> GetAllByMaDanhMuc(int? productType)
        {
            var listEF = db.SanPhams.Where(x => x.TrangThai == (int)EnumCommon.Status.TonTai).OrderByDescending(x => x.NgayTao).ToList();
            if (productType != null)
            {
                listEF = listEF.Where(x => x.MaDanhMuc == productType).ToList();
            }
            var listDTO = new List<SanPhamDTO>();
            foreach (var ef in listEF)
            {
                listDTO.Add(_convert.ConvertToDTO(ef));
            }
            return listDTO;
        }

        public List<SanPhamDTO> GetAllSearch(int productType, string txt)
        {
            var listEF = db.SanPhams.Where(sp => sp.TrangThai != (int)EnumCommon.Status.Xoa).OrderByDescending(x => x.NgayTao).ToList();
            if (productType != 0)
            {
                listEF = listEF.Where(x => x.MaDanhMuc == productType).ToList();
            }
            var listDTO = new List<SanPhamDTO>();
            foreach (var ef in listEF)
            {
                listDTO.Add(_convert.ConvertToDTO(ef));
            }
            if (!string.IsNullOrEmpty(txt))
            {
                listDTO = listDTO.Where(x => x.TenSanPham.ToLower().Contains(txt.ToLower())).ToList();
            }
            return listDTO;
        }

        public IEnumerable<SanPhamDTO> GetPagingByMaDanhMuc(int pageNumber, int pageSize, int productType, int sx)
        {
            var listEF = db.SanPhams.Where(x => x.TrangThai == (int)EnumCommon.Status.TonTai).ToList();
            switch (sx)
            {
                case (int)EnumCommon.SapXep.MacDinh:
                    listEF = listEF.OrderByDescending(x => x.NgayTao).ToList();
                    break;
                case (int)EnumCommon.SapXep.CaoXuongThap:
                    listEF = listEF.OrderByDescending(x => x.GiaBan).ToList();
                    break;
                case (int)EnumCommon.SapXep.ThapLenCao:
                    listEF = listEF.OrderBy(x => x.GiaBan).ToList();
                    break;
            }
            if (productType != (int)EnumCommon.Product.TatCa)
            {
                listEF = listEF.Where(x => x.MaDanhMuc == productType).ToList();
            }
            var listDTO = new List<SanPhamDTO>();
            foreach (var ef in listEF)
            {
                listDTO.Add(_convert.ConvertToDTO(ef));
            }
            return listDTO.ToPagedList(pageNumber, pageSize);
        }

        public int GetNumberSize(int valSize, int idProduct)
        {
            int soLuongSize = 0;
            if (db.SanPhamSizes.Any(x => x.MaSanPham == idProduct && x.MaSize == valSize))
            {
                soLuongSize = (int)db.SanPhamSizes.FirstOrDefault(x => x.MaSanPham == idProduct && x.MaSize == valSize).SoLuong;
            }
            return soLuongSize;
        }

        public List<SanPhamDTO> GetProductBySearch(string txt)
        {
            var listEF = db.SanPhams.Where(x => x.TenSanPham.ToLower().Contains(txt.ToLower()) || x.DanhMuc.TenDanhMuc.ToLower().Contains(txt.ToLower()) && x.TrangThai == (int)EnumCommon.Status.TonTai).OrderByDescending(x => x.NgayTao).ToList();
            var listDTO = new List<SanPhamDTO>();
            foreach (var ef in listEF)
            {
                listDTO.Add(_convert.ConvertToDTO(ef));
            }
            return listDTO;
        }

        public string GetNameSize(int maSize)
        {
            var size = db.Sizes.Find(maSize);
            return size.TenSize;
        }

        #region Xử lý Thêm, Sửa, Xóa
        public bool Insert(SanPhamDTO SanPhamDTO)
        {
            SanPham SanPham = _convert.ConvertToEF(SanPhamDTO);
            return _dao.Insert(SanPham);
        }

        public SanPhamDTO InsertProduct(SanPhamDTO SanPhamDTO)
        {
            SanPham SanPham = _convert.ConvertToEF(SanPhamDTO);
            return _convert.ConvertToDTO(_dao.InsertProduct(SanPham));
        }

        public bool Update(SanPhamDTO SanPhamDTO)
        {
            SanPham SanPham = _convert.ConvertToEF(SanPhamDTO);
            return _dao.Update(SanPham);
        }

        public bool Delete(int maSanPham)
        {
            return _dao.Delete(maSanPham);
        }
        #endregion
    }
}
