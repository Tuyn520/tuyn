using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin
{
	public partial class QLBHAdmin : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			// Trước khi load nội dung của trang web, kiểm tra đăng nhập của phiên làm việc
			if (Session["MaNhanVien"] == null || Session["MaNhanVien"].ToString() == "")
			{
				// Chưa đăng nhập => Chuyển về trang login
				Response.Redirect("Login.aspx");
			}
		}
	}
}