using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin
{
	public partial class Login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnDangNhap_Click(object sender, EventArgs e)
		{
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			string MaNhanVien = txtTaiKhoan.Text;
			string MatKhau = txtMatKhau.Text;
			int soluong = db.NhanVien.Count(x => x.MaNhanVien == MaNhanVien && x.MatKhau == MatKhau);
			if (soluong == 1)
			{
				// luu trang thai dang nhap vao sesion
				Session["MaNhanVien"] = MaNhanVien;
				Response.Redirect("QLHangHoa.aspx");

			}
			else
			{
				lbThongBao.Text = "Đăng nhập thất bại!";
			}
		}

		protected void btnThoat_Click(object sender, EventArgs e)
		{
			
		}

	}
}