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
    
    public partial class HoaDonNhap
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HoaDonNhap()
        {
            this.CTHoaDonNhap = new HashSet<CTHoaDonNhap>();
        }
    
        public string MaHoaDonNhap { get; set; }
        public Nullable<System.DateTime> NgayNhap { get; set; }
        public string MaNhanVien { get; set; }
        public Nullable<double> TongGiaTri { get; set; }
        public string MaNguonHang { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CTHoaDonNhap> CTHoaDonNhap { get; set; }
        public virtual NguonHang NguonHang { get; set; }
        public virtual NhanVien NhanVien { get; set; }
    }
}
