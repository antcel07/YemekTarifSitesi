using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YemekTarifSitesi.sqlbaglantisi;

namespace YemekTarifSitesi
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        YemekTarifEntities1 ymk = new YemekTarifEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var degerler = (from x in ymk.Yemekler
                            
                            select new 
                            {
                                x.YemekAd,
                                x.YemekMalzeme,
                                x.YemekPuan,
                                x.YemekResim,
                                x.YemekYapilis,
                                x.YemekTarih,
                                x.Durum
                            });
            DataList3.DataSource = degerler.Where(x=>x.Durum==true).ToList();
            DataList3.DataBind();
        }
    }
}

    

  
