using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Client
{
	public partial class TrangChu : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            getData();

        }
        void getData()
        {
            QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
            List<HangHoa> data = db.HangHoa.OrderByDescending(x => x.SoLuongTon).Take(4).ToList<HangHoa>();
            rpBanner.DataSource = data;
            rpBanner.DataBind();

            List<HangHoa> data_2 = db.HangHoa.OrderByDescending(x => x.SoLuongTon).Skip(4).Take(1).ToList<HangHoa>();
            rpVanPhongPham.DataSource = data_2;
            rpVanPhongPham.DataBind();

            List<HangHoa> data_3 = db.HangHoa.OrderByDescending(x => x.SoLuongTon).Skip(5).Take(1).ToList<HangHoa>();
            rpPhuKien.DataSource = data_3;
            rpPhuKien.DataBind();

            List<HangHoa> data_4 = db.HangHoa.OrderByDescending(x => x.SoLuongTon).Skip(6).Take(1).ToList<HangHoa>();
            rpTrangSuc.DataSource = data_4;
            rpTrangSuc.DataBind();

            List<HangHoa> data_5 = db.HangHoa.OrderByDescending(x => x.SoLuongTon).Skip(7).Take(1).ToList<HangHoa>();
            rpTrangTri.DataSource = data_5;
            rpTrangTri.DataBind();

            List<HangHoa> data_6 = db.HangHoa.OrderByDescending(x => x.SoLuongTon).Skip(8).Take(4).ToList<HangHoa>();
            rpSanPhamNoiBat.DataSource = data_6;
            rpSanPhamNoiBat.DataBind();

            List<HangHoa> data_7 = db.HangHoa.OrderByDescending(x => x.SoLuongTon).Skip(12).Take(4).ToList<HangHoa>();
            rpSanPhamMoi_1.DataSource = data_7;
            rpSanPhamMoi_1.DataBind();

            List<HangHoa> data_8 = db.HangHoa.OrderByDescending(x => x.SoLuongTon).Skip(16).Take(4).ToList<HangHoa>();
            rpSanPhamMoi_2.DataSource = data_8;
            rpSanPhamMoi_2.DataBind();

            List<HangHoa> data_9 = db.HangHoa.OrderByDescending(x => x.SoLuongTon).Skip(20).Take(4).ToList<HangHoa>();
            rpSanPhamBanChay.DataSource = data_9;
            rpSanPhamBanChay.DataBind();

            //List<HangHoa> data_10 = db.HangHoa.OrderByDescending(x => x.SoLuongTon).Skip(26).Take(3).ToList<HangHoa>();
            //rpXuHuong_1.DataSource = data_10;
            //rpXuHuong_1.DataBind();

            //List<HangHoa> data_11 = db.HangHoa.OrderByDescending(x => x.SoLuongTon).Skip(29).Take(3).ToList<HangHoa>();
            //rpXuHuong_2.DataSource = data_11;
            //rpXuHuong_2.DataBind();
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