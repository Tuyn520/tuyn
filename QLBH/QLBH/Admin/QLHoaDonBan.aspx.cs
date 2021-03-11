using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin
{
	public partial class QLHoaDonBan : System.Web.UI.Page
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
			List<HoaDonBan> data = db.HoaDonBan.ToList<HoaDonBan>();
			dgvHoaDonBan.DataSource = data;
			dgvHoaDonBan.DataBind();
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
		public string getTenKhachHang(object MaKhachHang)
		{
			try
			{
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				KhachHang data = db.KhachHang.FirstOrDefault(x => x.MaKhachHang == MaKhachHang.ToString());
				return data.TenKhachHang;

			}
			catch
			{
				return "";
			}
		}
		public string getTenCTKM(object MaCTKM)
		{
			try
			{
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				CTKM data = db.CTKM.FirstOrDefault(x=>x.MaCTKM==MaCTKM.ToString());
				return data.TenCTKM;

			}
			catch
			{
				return "";
			}
		}

		protected void btnXoa_Command(object sender, CommandEventArgs e)
		{
			//code de xoa du lieu voi ma lop nien che luu trong commandArgument

			string MaHoaDonBan = e.CommandArgument.ToString();
			//xoa du lieu trong database
			//tao doi tuong truy van
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			HoaDonBan data = db.HoaDonBan.FirstOrDefault(x => x.MaHoaDonBan == MaHoaDonBan);
			if (data != null)
			{
				db.HoaDonBan.Remove(data);
				db.SaveChanges();
				getData();
			}
		}
	}
}