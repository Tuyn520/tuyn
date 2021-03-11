using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin
{
	public partial class QLPhieuNhap : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			getData();
			// Trước khi load nội dung của trang web, kiểm tra đăng nhập của phiên làm việc
			if (Session["MaNhanVien"] == null || Session["MaNhanVien"].ToString() == "")
			{
				// Chưa đăng nhập => Chuyển về trang login
				Response.Redirect("Login.aspx");
			}
		}
		void getData()
		{
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			List<HoaDonNhap> data = db.HoaDonNhap.ToList<HoaDonNhap>();
			dgvPhieuNhap.DataSource = data;
			dgvPhieuNhap.DataBind();
		}
		public string getTenNhanVien(object MaNhanVien)
		{
			try
			{
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				NhanVien data = db.NhanVien.FirstOrDefault(x => x.MaNhanVien == MaNhanVien.ToString());
				return data.TenNhanVien;
			}
			catch
			{
				return "";
			}

		}
		
		public string getTenNguonHang(object MaNguonHang)
		{
			try
			{
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				NguonHang data = db.NguonHang.FirstOrDefault(x => x.MaNguonHang == MaNguonHang.ToString());
				return data.TenNguonHang;

			}
			catch
			{
				return "";
			}
		}

		protected void btnXoa_Command(object sender, CommandEventArgs e)
		{
			//code de xoa du lieu voi ma lop nien che luu trong commandArgument

			string MaHoaDonNhap = e.CommandArgument.ToString();
			//xoa du lieu trong database
			//tao doi tuong truy van
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			HoaDonNhap data = db.HoaDonNhap.FirstOrDefault(x => x.MaHoaDonNhap == MaHoaDonNhap);
			if (data != null)
			{
				db.HoaDonNhap.Remove(data);
				db.SaveChanges();
				getData();
			}
		}
	}
}