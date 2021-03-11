using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Client
{
	public partial class SanPhamVanPhongPham : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            getData();

        }
        void getData()
        {
            QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
            List<HangHoa> data = db.HangHoa.OrderByDescending(x => x.MaHangHoa).Take(3).ToList<HangHoa>();
            rpVanPhongPham_01.DataSource = data;
            rpVanPhongPham_01.DataBind();

            List<HangHoa> data_2 = db.HangHoa.OrderByDescending(x => x.MaHangHoa).Skip(3).Take(3).ToList<HangHoa>();
            rpVanPhongPham_02.DataSource = data_2;
            rpVanPhongPham_02.DataBind();

            List<HangHoa> data_3 = db.HangHoa.OrderByDescending(x => x.MaHangHoa).Skip(6).Take(3).ToList<HangHoa>();
            rpVanPhongPham_03.DataSource = data_3;
            rpVanPhongPham_03.DataBind();

            List<HangHoa> data_4 = db.HangHoa.OrderByDescending(x => x.MaHangHoa).Skip(9).Take(3).ToList<HangHoa>();
            rpVanPhongPham_04.DataSource = data_4;
            rpVanPhongPham_04.DataBind();

            List<HangHoa> data_5 = db.HangHoa.OrderBy(x=>x.DonGia).Skip(8).Take(5).ToList<HangHoa>();
            rpSanPhamGiaTot.DataSource = data_5;
            rpSanPhamGiaTot.DataBind();
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