using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin
{
	public partial class QLChiTietHDB : System.Web.UI.Page
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
			List<CTHoaDonBan> data = db.CTHoaDonBan.ToList<CTHoaDonBan>();
			dgvCTHoaDonBan.DataSource = data;
			dgvCTHoaDonBan.DataBind();
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
		public string getTenCTKM(object MaCTKM)
		{
			try
			{
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				CTKM data = db.CTKM.FirstOrDefault(x => x.MaCTKM == MaCTKM.ToString());
				return data.TenCTKM;
			}
			catch
			{
				return "";
			}

		}
		public string getMaHoaDonBan(object MaHoaDonBan)
		{
			try
			{
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				HoaDonBan data = db.HoaDonBan.FirstOrDefault(x => x.MaHoaDonBan == MaHoaDonBan.ToString());
				return data.MaHoaDonBan;
			}
			catch
			{
				return "";
			}

		}

		protected void btnXoa_Command(object sender, CommandEventArgs e)
		{
			//code de xoa du lieu voi ma lop nien che luu trong commandArgument

			string MaCTHDBan = e.CommandArgument.ToString();
			//xoa du lieu trong database
			//tao doi tuong truy van
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			CTHoaDonBan data = db.CTHoaDonBan.FirstOrDefault(x => x.MaCTHDBan == MaCTHDBan);
			if (data != null)
			{
				db.CTHoaDonBan.Remove(data);
				db.SaveChanges();
				getData();
			}
		}
	}
}