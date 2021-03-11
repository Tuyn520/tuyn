using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBH.Client
{
	public partial class QLBHClient : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			getData();
		}
        void getData()
        {
            QLBH_D12TMDTEntities1 db = new QLBH_D12TMDTEntities1();
            List<HangHoa> data = db.HangHoa.OrderBy(x => x.MaHangHoa).Skip(24).Take(3).ToList<HangHoa>();
            rpsanphammoi_01.DataSource = data;
            rpsanphammoi_01.DataBind();

            List<HangHoa> data_13 = db.HangHoa.OrderBy(x => x.MaHangHoa).Skip(19).Take(3).ToList<HangHoa>();
            rpSanPhamMoi_02.DataSource = data_13;
            rpSanPhamMoi_02.DataBind();

            List<HangHoa> data_14 = db.HangHoa.OrderBy(x => x.MaHangHoa).Skip(13).Take(3).ToList<HangHoa>();
            rpsanphammoi_03.DataSource = data_14;
            rpsanphammoi_03.DataBind();

            List<HangHoa> data_15 = db.HangHoa.OrderBy(x => x.MaHangHoa).Skip(8).Take(3).ToList<HangHoa>();
            rpsanphammoi_04.DataSource = data_15;
            rpsanphammoi_04.DataBind();
        }
    }
}