using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin.TemplateAdmin
{
	public partial class QLCTPhieuNhapDetail : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				getMaHoaDonNhap();
				getTenHangHoa();
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
					txtMaCTHDNhap.Enabled = false;
					//Đổ dữ liệu lên form
					string MaCTHDNhap = Request.QueryString["Ma"].ToString();
					QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
					CTHoaDonNhap obj = db.CTHoaDonNhap.FirstOrDefault(x => x.MaCTHDNhap == MaCTHDNhap);
					if (obj != null)
					{

						txtMaCTHDNhap.Text = obj.MaCTHDNhap;
						cmbMaHangHoa.Text = obj.MaHangHoa;
						txtSoLuong.Text = obj.SoLuong.ToString();
						txtDonGiaNhap.Text = obj.DonGiaNhap.ToString();
						cmbMaHoaDonNhap.Text = obj.MaHoaDonNhap;
					}
				}

			}
		}
		public void getMaHoaDonNhap()
		{
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			List<HoaDonNhap> data = db.HoaDonNhap.ToList<HoaDonNhap>();
			//Hien thi len combobox
			cmbMaHoaDonNhap.DataSource = data;
			cmbMaHoaDonNhap.DataTextField = "MaHoaDonNhap";
			cmbMaHoaDonNhap.DataValueField = "MaHoaDonNhap";
			//Render ma html
			cmbMaHoaDonNhap.DataBind();
		}
		public void getTenHangHoa()
		{
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			List<HangHoa> data = db.HangHoa.ToList<HangHoa>();
			//Hien thi len combobox
			cmbMaHangHoa.DataSource = data;
			cmbMaHangHoa.DataTextField = "TenHangHoa";
			cmbMaHangHoa.DataValueField = "MaHangHoa";
			//Render ma html
			cmbMaHangHoa.DataBind();
		}

		protected void btnThemMoi_Click(object sender, EventArgs e)
		{
			try
			{
				//Trường hợp thêm mới
				CTHoaDonNhap obj = new CTHoaDonNhap();
				obj.MaCTHDNhap = txtMaCTHDNhap.Text;
				obj.MaHangHoa = cmbMaHangHoa.SelectedValue;
				obj.SoLuong = Convert.ToInt32(txtSoLuong.Text) ;
				obj.DonGiaNhap =Convert.ToInt32(txtDonGiaNhap.Text) ;
				obj.MaHoaDonNhap = cmbMaHoaDonNhap.SelectedValue;
				//lưu dữ liệu vào db
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				db.CTHoaDonNhap.Add(obj);
				db.SaveChanges();


				Response.Redirect("QLCTPhieuNhap.aspx");
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
				string MaCTHDNhap = txtMaCTHDNhap.Text;
				CTHoaDonNhap obj = db.CTHoaDonNhap.FirstOrDefault(x => x.MaCTHDNhap == MaCTHDNhap);
				obj.MaCTHDNhap = txtMaCTHDNhap.Text;
				obj.MaHangHoa = cmbMaHangHoa.SelectedValue;
				obj.SoLuong = Convert.ToInt32(txtSoLuong.Text);
				obj.DonGiaNhap = Convert.ToInt32(txtDonGiaNhap.Text);
				obj.MaHoaDonNhap = cmbMaHoaDonNhap.SelectedValue;
				db.SaveChanges();

				Response.Redirect("QLCTPhieuNhap.aspx");
			}
			catch
			{
				pnError.Visible = true;
			}
		}
	}
}