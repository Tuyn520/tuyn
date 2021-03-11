using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin
{
	public partial class QLCauHinhDetail : System.Web.UI.Page
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
					txtMaCauHinh.Enabled = false;
					//Đổ dữ liệu lên form
					string ID = Request.QueryString["Ma"].ToString();
					QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
					CauHinh obj = db.CauHinh.FirstOrDefault(x => x.ID == ID);
					if (obj != null)
					{
						txtMaCauHinh.Text = obj.ID;
						txtTenCongTy.Text = obj.TenCongTy;
						txtDiaChiCongTy.Text = obj.DiaChiCongTy;
						txtSoDienThoai.Text = obj.SoDienThoai;
						txtMaSoThue.Text = obj.MaSoThue;
						txtVAT.Text = obj.VAT.ToString();
					}
				}

			}

		}

		protected void btnThemMoi_Click(object sender, EventArgs e)
		{
			try
			{
				//Trường hợp thêm mới
				CauHinh obj = new CauHinh();
				obj.ID = txtMaCauHinh.Text;
				obj.TenCongTy = txtTenCongTy.Text;
				obj.DiaChiCongTy = txtDiaChiCongTy.Text;
				obj.SoDienThoai = txtSoDienThoai.Text;
				obj.MaSoThue = txtMaSoThue.Text;
				obj.VAT = Convert.ToInt32(txtVAT.Text);
				//lưu dữ liệu vào db
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				db.CauHinh.Add(obj);
				db.SaveChanges();
				

				Response.Redirect("QLCauHinh.aspx");
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
				string ID = txtMaCauHinh.Text;
				CauHinh obj = db.CauHinh.FirstOrDefault(x => x.ID == ID);
				obj.ID = txtMaCauHinh.Text;
				obj.TenCongTy = txtTenCongTy.Text;
				obj.DiaChiCongTy = txtDiaChiCongTy.Text;
				obj.SoDienThoai = txtSoDienThoai.Text;
				obj.MaSoThue = txtMaSoThue.Text;
				obj.VAT = Convert.ToInt32(txtVAT.Text);

				db.SaveChanges();
				
				Response.Redirect("QLCauHinh.aspx");
			}
			catch
			{
				pnError.Visible = true;
			}


		}
	}
}