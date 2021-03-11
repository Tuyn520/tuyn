using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Client
{
	public partial class login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnDangNhap_Click(object sender, EventArgs e)
		{
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			string MaKhachHang = txtTaiKhoan.Text;
			string MatKhau = txtMatKhau.Text;
			int soluong = db.KhachHang.Count(x => x.MaKhachHang == MaKhachHang && x.MatKhau == MatKhau);
			if (soluong == 1)
			{
				// luu trang thai dang nhap vao sesion
				Session["MaKhachHang"] = MaKhachHang;
				Response.Redirect("TrangChu.aspx");

			}
			else
			{
				lbThongBao.Text = "Đăng nhập thất bại!";
			}
		}
	}
}