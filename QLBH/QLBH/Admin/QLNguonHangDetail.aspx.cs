using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin
{
	public partial class QLNguonHangDetail : System.Web.UI.Page
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
					txtMaNguonHang.Enabled = false;
					//Đổ dữ liệu lên form
					string MaNguonHang = Request.QueryString["Ma"].ToString();
					QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
					NguonHang obj = db.NguonHang.FirstOrDefault(x => x.MaNguonHang == MaNguonHang);
					if (obj != null)
					{
						txtMaNguonHang.Text = obj.MaNguonHang;
						txtTenNguonHang.Text = obj.TenNguonHang;
						txtSoDienThoai.Text = obj.SoDienThoai;
						txtNguoiDaiDien.Text = obj.NguoiDaiDien;
					}
				}

			}
		}

		protected void btnThemMoi_Click(object sender, EventArgs e)
		{
			try
			{
				//Trường hợp thêm mới
				NguonHang obj = new NguonHang();
				obj.MaNguonHang = txtMaNguonHang.Text;
				obj.TenNguonHang = txtTenNguonHang.Text;
				obj.SoDienThoai = txtSoDienThoai.Text;
				obj.NguoiDaiDien = txtNguoiDaiDien.Text;
				//lưu dữ liệu vào db
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				db.NguonHang.Add(obj);
				db.SaveChanges();
				

				Response.Redirect("QLNguonHang.aspx");
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
				string MaNguonHang = txtMaNguonHang.Text;
				NguonHang obj = db.NguonHang.FirstOrDefault(x => x.MaNguonHang == MaNguonHang);
				obj.MaNguonHang = txtMaNguonHang.Text;
				obj.TenNguonHang = txtTenNguonHang.Text;
				obj.SoDienThoai = txtSoDienThoai.Text;
				obj.NguoiDaiDien = txtNguoiDaiDien.Text;

				db.SaveChanges();
				
				Response.Redirect("QLNguonHang.aspx");
			}
			catch
			{
				pnError.Visible = true;
			}
		}
	}
}