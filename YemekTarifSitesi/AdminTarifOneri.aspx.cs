using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YemekTarifSitesi.sqlbaglantisi;
namespace YemekTarifSitesi
{
    public partial class AdminTarifOneri : System.Web.UI.Page
    {
        YemekTarifEntities1 ymk = new YemekTarifEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel1.Visible = false;

            var degerler = (from x in ymk.Tarifler
                            select new
                            {
                                x.Tarifid,
                                x.TarifAd,
                                x.TarifDurum
                            }).ToList();
            


            DataList1.DataSource = degerler.Where(x => x.TarifDurum == false).ToList();
            DataList1.DataBind();
            DataList2.DataSource = degerler.Where(x => x.TarifDurum == true).ToList();
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
    }
}