using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin
{
	public partial class QLKhachHang : System.Web.UI.Page
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
			List<KhachHang> data = db.KhachHang.ToList<KhachHang>();
			dgvKhachHang.DataSource = data;
			dgvKhachHang.DataBind();
		}
		protected void btnXoa_Command(object sender, CommandEventArgs e)
		{
			//code de xoa du lieu voi ma lop nien che luu trong commandArgument

			string MaKhachHang = e.CommandArgument.ToString();
			//xoa du lieu trong database
			//tao doi tuong truy van
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			KhachHang data = db.KhachHang.FirstOrDefault(x => x.MaKhachHang == MaKhachHang);
			if (data != null)
			{
				db.KhachHang.Remove(data);
				db.SaveChanges();
				getData();
			}
		}
	}
}