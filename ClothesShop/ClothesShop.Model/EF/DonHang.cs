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
    
    public partial class DonHang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DonHang()
        {
            this.ChiTietDonHangs = new HashSet<ChiTietDonHang>();
        }
    
        public int MaDon { get; set; }
        public Nullable<int> MaTaiKhoan { get; set; }
        public string HoTenNN { get; set; }
        public string DienThoaiNN { get; set; }
        public string EmailNN { get; set; }
        public string DiaChiNN { get; set; }
        public string GhiChu { get; set; }
        public Nullable<int> TongTien { get; set; }
        public Nullable<System.DateTime> NgayTao { get; set; }
        public Nullable<int> TrangThai { get; set; }
    
        public virtual TaiKhoan TaiKhoan { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietDonHang> ChiTietDonHangs { get; set; }
    }
}