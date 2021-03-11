using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin
{
	public partial class QLHoaDonBanDetail : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				getTenNhanVien();
				getTenKhachHang();
				getTenCTKM();
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
					txtMaHoaDonBan.Enabled = false;
					//Đổ dữ liệu lên form
					string MaHoaDonBan = Request.QueryString["Ma"].ToString();
					QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
					HoaDonBan obj = db.HoaDonBan.FirstOrDefault(x => x.MaHoaDonBan == MaHoaDonBan);
					if (obj != null)
					{
						txtMaHoaDonBan.Text = obj.MaHoaDonBan;
						cmbMaNhanVien.SelectedValue = obj.MaNhanVien;
						cmbMaKhachHang.SelectedValue = obj.MaKhachHang;
						txtNgayBan.Text = obj.NgayBan.ToString();
						cmbMaCTKM.SelectedValue = obj.MaCTKM;
					}
				}

			}
		}
		public void getTenNhanVien()
		{
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			List<NhanVien> data = db.NhanVien.ToList<NhanVien>();
			//Hien thi len combobox
			cmbMaNhanVien.DataSource = data;
			cmbMaNhanVien.DataTextField = "TenNhanVien";
			cmbMaNhanVien.DataValueField = "MaNhanVien";
			//Render ma html
			cmbMaNhanVien.DataBind();
		}
		public void getTenKhachHang()
		{
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			List<KhachHang> data = db.KhachHang.ToList<KhachHang>();
			//Hien thi len combobox
			cmbMaKhachHang.DataSource = data;
			cmbMaKhachHang.DataTextField = "TenKhachHang";
			cmbMaKhachHang.DataValueField = "MaKhachHang";
			//Render ma html
			cmbMaKhachHang.DataBind();
		}

		public void getTenCTKM()
		{
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			List<CTKM> data = db.CTKM.ToList<CTKM>();
			//Hien thi len combobox
			cmbMaCTKM.DataSource = data;
			cmbMaCTKM.DataTextField = "TenCTKM";
			cmbMaCTKM.DataValueField = "MaCTKM";
			//Render ma html
			cmbMaCTKM.DataBind();
		}

		protected void btnThemMoi_Click(object sender, EventArgs e)
		{
			try
			{
				//Trường hợp thêm mới
				HoaDonBan obj = new HoaDonBan();
				obj.MaHoaDonBan = txtMaHoaDonBan.Text;
				obj.MaNhanVien = cmbMaNhanVien.SelectedValue;
				obj.MaKhachHang = cmbMaKhachHang.SelectedValue;
				obj.NgayBan = Convert.ToDateTime(txtNgayBan.Text);
				obj.MaCTKM = cmbMaCTKM.SelectedValue;
				//lưu dữ liệu vào db
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				db.HoaDonBan.Add(obj);
				db.SaveChanges();
				

				Response.Redirect("QLHoaDonBan.aspx");
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
				string MaHoaDonBan = txtMaHoaDonBan.Text;
				HoaDonBan obj = db.HoaDonBan.FirstOrDefault(x => x.MaHoaDonBan == MaHoaDonBan);
				obj.MaHoaDonBan = txtMaHoaDonBan.Text;
				obj.MaNhanVien = cmbMaNhanVien.SelectedValue;
				obj.MaKhachHang = cmbMaKhachHang.SelectedValue;
				obj.NgayBan = Convert.ToDateTime(txtNgayBan.Text);
				obj.MaCTKM = cmbMaCTKM.SelectedValue;

				db.SaveChanges();
				
				Response.Redirect("QLHoaDonBan.aspx");
			}
			catch
			{
				pnError.Visible = true;
			}
		}
	}
}