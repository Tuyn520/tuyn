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
    
    public partial class HoaDonBan
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HoaDonBan()
        {
            this.CTHoaDonBan = new HashSet<CTHoaDonBan>();
        }
    
        public string MaHoaDonBan { get; set; }
        public string MaNhanVien { get; set; }
        public string MaKhachHang { get; set; }
        public Nullable<System.DateTime> NgayBan { get; set; }
        public string MaCTKM { get; set; }
    
        public virtual CTKM CTKM { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CTHoaDonBan> CTHoaDonBan { get; set; }
        public virtual KhachHang KhachHang { get; set; }
        public virtual NhanVien NhanVien { get; set; }
    }
}