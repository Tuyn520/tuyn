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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class QLBH_D12TMDTEntities1 : DbContext
    {
        public QLBH_D12TMDTEntities1()
            : base("name=QLBH_D12TMDTEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<CauHinh> CauHinh { get; set; }
        public virtual DbSet<CTKM> CTKM { get; set; }
        public virtual DbSet<CTHoaDonBan> CTHoaDonBan { get; set; }
        public virtual DbSet<CTHoaDonNhap> CTHoaDonNhap { get; set; }
        public virtual DbSet<HangHoa> HangHoa { get; set; }
        public virtual DbSet<HoaDonBan> HoaDonBan { get; set; }
        public virtual DbSet<HoaDonNhap> HoaDonNhap { get; set; }
        public virtual DbSet<KhachHang> KhachHang { get; set; }
        public virtual DbSet<LoaiHangHoa> LoaiHangHoa { get; set; }
        public virtual DbSet<Multimedia> Multimedia { get; set; }
        public virtual DbSet<NguonHang> NguonHang { get; set; }
        public virtual DbSet<NhanVien> NhanVien { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
    }
}
