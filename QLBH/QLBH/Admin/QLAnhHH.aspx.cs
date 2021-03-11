using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin
{
	public partial class QLAnhHH : System.Web.UI.Page
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
			List<Multimedia> data = db.Multimedia.ToList<Multimedia>();
			dgvAnhHH.DataSource = data;
			dgvAnhHH.DataBind();

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

			int ID = Convert.ToInt32(e.CommandArgument.ToString());
			//xoa du lieu trong database
			//tao doi tuong truy van
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			Multimedia data = db.Multimedia.FirstOrDefault(x => x.ID == ID);
			if (data != null)
			{
				db.Multimedia.Remove(data);
				db.SaveChanges();
				getData();
			}
		}
		public string getAnhDaiDien(string MaHangHoa)
		{
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			Multimedia obj = db.Multimedia.FirstOrDefault(x => x.MaHangHoa == MaHangHoa);
			if (obj == null)
			{
				return "";
			}
			else
			{
				return obj.Url;
			}

		}

		protected void btnTimKiem_Command(object sender, CommandEventArgs e)
		{
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			String[] words = new String[] { "MaHangHoa" };
			
		}
	}
}