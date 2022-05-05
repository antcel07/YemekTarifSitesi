using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YemekTarifSitesi.sqlbaglantisi;

namespace YemekTarifSitesi
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        YemekTarifEntities1 ymk = new YemekTarifEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var degerler = (from x in ymk.Hakkimizda
                            select new
                            {
                                x.Metin


                            }).ToList();
            DataList2.DataSource = degerler;
            DataList2.DataBind();
        }
    }
}