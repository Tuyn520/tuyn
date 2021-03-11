using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin
{
	public partial class QLCTPhieuNhap : System.Web.UI.Page
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
			List<CTHoaDonNhap> data = db.CTHoaDonNhap.ToList<CTHoaDonNhap>();
			dgvCTPhieuNhap.DataSource = data;
			dgvCTPhieuNhap.DataBind();
		}
		public string getMaHoaDonNhap(object MaHoaDonNhap)
		{
			try
			{
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				HoaDonNhap data = db.HoaDonNhap.FirstOrDefault(x => x.MaHoaDonNhap == MaHoaDonNhap.ToString());
				return data.MaHoaDonNhap;
			}
			catch
			{
				return "";
			}

		}

		public string getTenHangHoa(object MaHangHoa)
		{
			try
			{
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				HangHoa data = db.HangHoa.FirstOrDefault(x => x.MaHangHoa == MaHangHoa.ToString());
				return data.TenHangHoa;

			}
			catch
			{
				return "";
			}
		}

		protected void btnXoa_Command(object sender, CommandEventArgs e)
		{
			//code de xoa du lieu voi ma lop nien che luu trong commandArgument

			string MaCTHDNhap = e.CommandArgument.ToString();
			//xoa du lieu trong database
			//tao doi tuong truy van
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			CTHoaDonNhap data = db.CTHoaDonNhap.FirstOrDefault(x => x.MaCTHDNhap == MaCTHDNhap);
			if (data != null)
			{
				db.CTHoaDonNhap.Remove(data);
				db.SaveChanges();
				getData();
			}
		}
	}
}