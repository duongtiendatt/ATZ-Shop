//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ClothesShop.Model.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            this.SanPhamSizes = new HashSet<SanPhamSize>();
            this.ChiTietDonHangs = new HashSet<ChiTietDonHang>();
        }
    
        public int MaSanPham { get; set; }
        public Nullable<int> MaDanhMuc { get; set; }
        public string TenSanPham { get; set; }
        public string AnhSanPham { get; set; }
        public Nullable<int> GiaBan { get; set; }
        public Nullable<int> GiaSale { get; set; }
        public string MoTa { get; set; }
        public Nullable<int> GioiTinh { get; set; }
        public Nullable<int> TrangThai { get; set; }
        public Nullable<int> NamSanXuat { get; set; }
        public Nullable<System.DateTime> NgayTao { get; set; }
        public string HangSanXuat { get; set; }
    
        public virtual DanhMuc DanhMuc { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SanPhamSize> SanPhamSizes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietDonHang> ChiTietDonHangs { get; set; }
    }
}
