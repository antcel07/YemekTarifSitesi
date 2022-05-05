using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YemekTarifSitesi.sqlbaglantisi;
namespace YemekTarifSitesi
{
    public partial class AdminMesajlar : System.Web.UI.Page
    {
        YemekTarifEntities1 ymk = new YemekTarifEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                Panel2.Visible = false;

                var degerler = (from x in ymk.Mesajlar
                                select new
                                {
                                    x.MesajId,
                                    x.MesajGonderen
                                }).ToList();
                DataList1.DataSource = degerler;
                DataList1.DataBind();

                

            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}