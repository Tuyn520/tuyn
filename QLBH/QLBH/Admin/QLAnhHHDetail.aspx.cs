using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Admin
{
	public partial class QLAnhHHDetail : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
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
					txtID.Enabled = false;
					//Đổ dữ liệu lên form
					int ID = int.Parse(Request.QueryString["Ma"].ToString());
					QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
					Multimedia obj = db.Multimedia.FirstOrDefault(x => x.ID == ID);
					if (obj != null)
					{

						txtID.Text = obj.ID.ToString();
						txtAlt.Text = obj.Alt;
						cmbMaHangHoa.Text = obj.MaHangHoa;
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

		protected void btnThemMoi_Click(object sender, EventArgs e)
		{
			try
			{
				//Trường hợp thêm mới
				Multimedia obj = new Multimedia();
				obj.ID = Convert.ToInt32(txtID.Text);
				obj.Alt = txtAlt.Text;
				obj.MaHangHoa = cmbMaHangHoa.SelectedValue;
				//lưu dữ liệu vào db
				QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
				db.Multimedia.Add(obj);
				db.SaveChanges();
				//Upload file về sever
				string filename = "";
				if (fuAnhHH.HasFile)
				{
					string ext = Path.GetFileName(fuAnhHH.FileName);
					ext = ext.Split('.')[ext.Split('.').Length - 1];
					// Tự sinh tên file đảm bảo tính duy nhất => Dùng thời gian upload file để sinh tên file
					filename = DateTime.Now.ToString("yyyyMMddhhmmssffff") + "." + ext;
					fuAnhHH.SaveAs(Server.MapPath("~/UpLoads/") + filename);
					Multimedia newobj = new Multimedia();
					newobj.MaHangHoa = obj.MaHangHoa;
					newobj.Url = filename;
					db.Multimedia.Add(newobj);
					db.SaveChanges();
				}

				Response.Redirect("QLAnhHH.aspx");
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
				int ID = int.Parse(txtID.Text);
				Multimedia obj = db.Multimedia.FirstOrDefault(x => x.ID == ID);
				obj.ID = Convert.ToInt32(txtID.Text);
				obj.Alt = txtAlt.Text;
				obj.MaHangHoa = cmbMaHangHoa.SelectedValue;

				db.SaveChanges();
				//Upload file về sever
				string filename = "";
				if (fuAnhHH.HasFile)
				{
					string ext = Path.GetFileName(fuAnhHH.FileName);
					ext = ext.Split('.')[ext.Split('.').Length - 1];
					// Tự sinh tên file đảm bảo tính duy nhất => Dùng thời gian upload file để sinh tên file
					filename = DateTime.Now.ToString("yyyyMMddhhmmssffff") + "." + ext;
					fuAnhHH.SaveAs(Server.MapPath("~/UpLoads/") + filename);
					Multimedia newobj = new Multimedia();
					newobj.MaHangHoa = obj.MaHangHoa;
					newobj.Url = filename;
					db.Multimedia.Add(newobj);
					db.SaveChanges();
				}
				Response.Redirect("QLAnhHH.aspx");
			}
			catch
			{
				pnError.Visible = true;
			}

		}
	}
}