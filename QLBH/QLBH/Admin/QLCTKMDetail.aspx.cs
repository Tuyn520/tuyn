using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin
{
	public partial class QLCTKMDetail : System.Web.UI.Page
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
					txtMaCTKM.Enabled = false;
					//Đổ dữ liệu lên form
					string MaCTKM = Request.QueryString["Ma"].ToString();
					QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
					CTKM obj = db.CTKM.FirstOrDefault(x => x.MaCTKM == MaCTKM);
					if (obj != null)
					{
						txtMaCTKM.Text = obj.MaCTKM;
						txtTenCTKM.Text = obj.TenCTKM;
						txtGiaTriKM.Text = obj.GiaTriKM.ToString();
						txtLoaiKM.Text = obj.LoaiKM.ToString();
					}
				}

			}

		}

		protected void btnThemMoi_Click(object sender, EventArgs e)
		{
			try
			{
				//Trường hợp thêm mới
				CTKM obj = new CTKM();
				obj.MaCTKM = txtMaCTKM.Text;
				obj.TenCTKM = txtTenCTKM.Text;
				obj.GiaTriKM = Convert.ToInt32(txtGiaTriKM.Text);
				obj.LoaiKM = Convert.ToInt32(txtLoaiKM.Text);
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				db.CTKM.Add(obj);
				db.SaveChanges();
				Response.Redirect("QLCTKM.aspx");
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
				string MaCTKM = txtMaCTKM.Text;
				CTKM obj = db.CTKM.FirstOrDefault(x => x.MaCTKM == MaCTKM);
				obj.MaCTKM = txtMaCTKM.Text;
				obj.TenCTKM = txtTenCTKM.Text;
				obj.GiaTriKM = Convert.ToInt32(txtGiaTriKM.Text);
				obj.LoaiKM = Convert.ToInt32(txtLoaiKM.Text);

				db.SaveChanges();
				Response.Redirect("QLCTKM.aspx");
			}
			catch
			{
				pnError.Visible = true;
			}
		}
	}
}