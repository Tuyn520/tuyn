//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QLBH
{
    using System;
    using System.Collections.Generic;
    
    public partial class NguonHang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NguonHang()
        {
            this.HoaDonNhap = new HashSet<HoaDonNhap>();
        }
    
        public string MaNguonHang { get; set; }
        public string TenNguonHang { get; set; }
        public string SoDienThoai { get; set; }
        public string NguoiDaiDien { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HoaDonNhap> HoaDonNhap { get; set; }
    }
}
