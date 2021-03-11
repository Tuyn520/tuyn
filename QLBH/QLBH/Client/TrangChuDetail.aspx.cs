using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Client
{
	public partial class TrangChuDetail : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                try
                {
                    string MaHangHoa = Request.QueryString["Ma"].ToString();
                    getData(MaHangHoa);
                }
                catch
                {
                    Response.Redirect("TrangChu.aspx");
                }
            }
        }
        void getData(string MaHangHoa)
        {
            QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
            HangHoa obj = db.HangHoa.FirstOrDefault(x => x.MaHangHoa == MaHangHoa);
            lbTenHangHoa.Text = obj.TenHangHoa;
            lbDonGia.Text = string.Format("{0:#,0}", obj.DonGia);
            lbMoTa.Text = obj.MoTa;

            List<Multimedia> data = db.Multimedia.Where(x => x.MaHangHoa == MaHangHoa).ToList<Multimedia>();
            //List<Multimedia> data = db.Multimedia.ToList<Multimedia>();
            //zoom_03.ImageUrl = data[0].Url;
            rpMultimedia.DataSource = data;
            rpMultimedia.DataBind();

            List<HangHoa> data_7 = db.HangHoa.OrderByDescending(x => x.SoLuongTon).Skip(12).Take(4).ToList<HangHoa>();
            rpSanPhamMoi_1.DataSource = data_7;
            rpSanPhamMoi_1.DataBind();

            List<HangHoa> data_8 = db.HangHoa.OrderByDescending(x => x.SoLuongTon).Skip(12).Take(4).ToList<HangHoa>();
            rpSanPhamMoi_2.DataSource = data_8;
            rpSanPhamMoi_2.DataBind();

            List<HangHoa> data_9 = db.HangHoa.OrderByDescending(x => x.SoLuongTon).Skip(16).Take(4).ToList<HangHoa>();
            rpSanPhamMoi_3.DataSource = data_9;
            rpSanPhamMoi_3.DataBind();

            List<HangHoa> data_10 = db.HangHoa.OrderByDescending(x => x.SoLuongTon).Skip(20).Take(4).ToList<HangHoa>();
            rpSanPhamBanChay.DataSource = data_10;
            rpSanPhamBanChay.DataBind();
        }
        public string getAnhDaiDien(string MaHangHoa)
        {
            QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
            Multimedia obj = db.Multimedia.FirstOrDefault(x => x.MaHangHoa == MaHangHoa);
            if (obj == null)
            {
                return "";
            }
            else
            {
                return obj.Url;
            }

        }
    }
}