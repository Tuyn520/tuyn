using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin
{
	public partial class QLPhieuNhapDetail : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				getTenNhanVien();
				getTenNguonHang();
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
					txtMaHoaDonNhap.Enabled = false;
					//Đổ dữ liệu lên form
					string MaHoaDonNhap = Request.QueryString["Ma"].ToString();
					QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
					HoaDonNhap obj = db.HoaDonNhap.FirstOrDefault(x => x.MaHoaDonNhap == MaHoaDonNhap);
					if (obj != null)
					{
						txtMaHoaDonNhap.Text = obj.MaHoaDonNhap;
						txtNgayNhap.Text = obj.NgayNhap.ToString();
						cmbMaNhanVien.Text = obj.MaNhanVien;
						txtTongGiaTri.Text = obj.TongGiaTri.ToString();
						cmbMaNguonHang.Text = obj.MaNguonHang;
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
		public void getTenNguonHang()
		{
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			List<NguonHang> data = db.NguonHang.ToList<NguonHang>();
			//Hien thi len combobox
			cmbMaNguonHang.DataSource = data;
			cmbMaNguonHang.DataTextField = "TenNguonHang";
			cmbMaNguonHang.DataValueField = "MaNguonHang";
			//Render ma html
			cmbMaNguonHang.DataBind();
		}

		
		protected void btnThemMoi_Click(object sender, EventArgs e)
		{
			try
			{
				//Trường hợp thêm mới
				HoaDonNhap obj = new HoaDonNhap();
				obj.MaHoaDonNhap = txtMaHoaDonNhap.Text;
				obj.NgayNhap =Convert.ToDateTime(txtNgayNhap.Text);
				obj.MaNhanVien = cmbMaNhanVien.SelectedValue;
				obj.TongGiaTri =Convert.ToInt32(txtTongGiaTri.Text) ;
				obj.MaNguonHang = cmbMaNguonHang.SelectedValue;
				//lưu dữ liệu vào db
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				db.HoaDonNhap.Add(obj);
				db.SaveChanges();


				Response.Redirect("QLPhieuNhap.aspx");
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
				string MaHoaDonNhap = txtMaHoaDonNhap.Text;
				HoaDonNhap obj = db.HoaDonNhap.FirstOrDefault(x => x.MaHoaDonNhap == MaHoaDonNhap);
				obj.MaHoaDonNhap = txtMaHoaDonNhap.Text;
				obj.NgayNhap = Convert.ToDateTime(txtNgayNhap.Text);
				obj.MaNhanVien = cmbMaNhanVien.SelectedValue;
				obj.TongGiaTri = Convert.ToInt32(txtTongGiaTri.Text);
				obj.MaNguonHang = cmbMaNguonHang.SelectedValue;
				db.SaveChanges();

				Response.Redirect("QLPhieuNhap.aspx");
			}
			catch
			{
				pnError.Visible = true;
			}
		}
	}
}