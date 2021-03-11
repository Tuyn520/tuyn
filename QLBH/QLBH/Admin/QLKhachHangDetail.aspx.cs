using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin
{
	public partial class QLKhachHangDetail : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				//Kiem tra xem la trường hợp sửa hay là thêm mới
				if (Request.QueryString["Ma"] == null || Request.QueryString["Ma"].ToString() == "")
				{
					//Đây là trường hợp thêm mới
					btnLuu.Visible = false;
					btnThemMoi.Visible = true;
				}
				else
				{
					//đây là trường hợp sửa
					btnLuu.Visible = true;
					btnThemMoi.Visible = false;
					txtMaKhachHang.Enabled = false;
					//Đổ dữ liệu lên form
					string MaKhachHang = Request.QueryString["Ma"].ToString();
					QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
					KhachHang obj = db.KhachHang.FirstOrDefault(x => x.MaKhachHang == MaKhachHang);
					if (obj != null)
					{
						txtMaKhachHang.Text = obj.MaKhachHang;
						txtTenKhachHang.Text = obj.TenKhachHang;
						txtSoDienThoai.Text = obj.SoDienThoai;
						txtGmail.Text = obj.Gmail;
						txtGioiTinh.Text = obj.GioiTinh;
						txtLoaiKH.Text = obj.LoaiKH.ToString();
						txtMatKhau.Text = obj.MatKhau;
					}
				}

			}

		}

		protected void btnThemMoi_Click(object sender, EventArgs e)
		{
			try
			{
				//Trường hợp thêm mới
				KhachHang obj = new KhachHang();
				obj.MaKhachHang = txtMaKhachHang.Text;
				obj.TenKhachHang = txtTenKhachHang.Text;
				obj.SoDienThoai = txtSoDienThoai.Text;
				obj.Gmail = txtGmail.Text;
				obj.GioiTinh = txtGioiTinh.Text;
				obj.LoaiKH= Convert.ToInt32(txtLoaiKH.Text);
				obj.MatKhau = txtMatKhau.Text;
				//lưu dữ liệu vào db
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				db.KhachHang.Add(obj);
				db.SaveChanges();


				Response.Redirect("QLKhachHang.aspx");
			}
			catch
			{
				pnError.Visible = true;
			}
		}

		protected void btnLuu_Click(object sender, EventArgs e)
		{
			try
			{
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				string MaKhachHang = txtMaKhachHang.Text;
				KhachHang obj = db.KhachHang.FirstOrDefault(x => x.MaKhachHang == MaKhachHang);
				obj.MaKhachHang = txtMaKhachHang.Text;
				obj.TenKhachHang = txtTenKhachHang.Text;
				obj.SoDienThoai = txtSoDienThoai.Text;
				obj.Gmail = txtGmail.Text;
				obj.GioiTinh = txtGioiTinh.Text;
				obj.LoaiKH = Convert.ToInt32(txtLoaiKH.Text);
				obj.MatKhau = txtMatKhau.Text;

				db.SaveChanges();

				Response.Redirect("QLKhachHang.aspx");
			}
			catch
			{
				pnError.Visible = true;
			}
		}
	}
}