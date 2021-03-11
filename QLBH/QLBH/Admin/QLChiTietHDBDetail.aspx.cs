using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin
{
	public partial class QLChiTietHDBDetail : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				getTenHangHoa();
				getTenCTKM();
				getMaHoaDonBan();
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
					txtMaCTHDBan.Enabled = false;
					//Đổ dữ liệu lên form
					string MaCTHDBan = Request.QueryString["Ma"].ToString();
					QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
					CTHoaDonBan obj = db.CTHoaDonBan.FirstOrDefault(x => x.MaCTHDBan == MaCTHDBan);
					if (obj != null)
					{
						txtMaCTHDBan.Text = obj.MaCTHDBan;
						cmbMaHangHoa.SelectedValue = obj.MaHangHoa;
						txtSoLuong.Text = obj.SoLuong.ToString();
						txtDonGia.Text = obj.DonGia.ToString();
						cmbMaCTKM.SelectedValue = obj.MaCTKM;
						cmbMaHoaDonBan.SelectedValue = obj.MaHoaDonBan;
					}
				}

			}
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
		public void getMaHoaDonBan()
		{
			QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
			List<HoaDonBan> data = db.HoaDonBan.ToList<HoaDonBan>();
			//Hien thi len combobox
			cmbMaHoaDonBan.DataSource = data;
			cmbMaHoaDonBan.DataTextField = "MaHoaDonBan";
			cmbMaHoaDonBan.DataValueField = "MaHoaDonBan";
			//Render ma html
			cmbMaHoaDonBan.DataBind();

		}


		protected void btnThemMoi_Click(object sender, EventArgs e)
		{
			try
			{
				//Trường hợp thêm mới
				CTHoaDonBan obj = new CTHoaDonBan();
				obj.MaCTHDBan = txtMaCTHDBan.Text;
				obj.MaHangHoa = cmbMaHangHoa.SelectedValue;
				obj.SoLuong =Convert.ToInt32( txtSoLuong.Text);
				obj.DonGia =Convert.ToInt32(txtDonGia.Text);
				obj.MaCTKM = cmbMaCTKM.SelectedValue;
				obj.MaHoaDonBan = cmbMaHoaDonBan.SelectedValue;
				//lưu dữ liệu vào db
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				db.CTHoaDonBan.Add(obj);
				db.SaveChanges();


				Response.Redirect("QLChiTietHDB.aspx");
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
				string MaCTHDBan = txtMaCTHDBan.Text;
				CTHoaDonBan obj = db.CTHoaDonBan.FirstOrDefault(x => x.MaCTHDBan == MaCTHDBan);
				obj.MaCTHDBan = txtMaCTHDBan.Text;
				obj.MaHangHoa = cmbMaHangHoa.SelectedValue;
				obj.SoLuong = Convert.ToInt32(txtSoLuong.Text);
				obj.DonGia = Convert.ToInt32(txtDonGia.Text);
				obj.MaCTKM = cmbMaCTKM.SelectedValue;
				obj.MaHoaDonBan = cmbMaHoaDonBan.SelectedValue;

				db.SaveChanges();

				Response.Redirect("QLChiTietHDB.aspx");
			}
			catch
			{
				pnError.Visible = true;
			}
		}
	}
}