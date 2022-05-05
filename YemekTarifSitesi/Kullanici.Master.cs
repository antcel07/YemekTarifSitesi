using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using YemekTarifSitesi.sqlbaglantisi;


namespace YemekTarifSitesi
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {  
        YemekTarifEntities1 ymk = new YemekTarifEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
           
          


            var degerler = (from x in ymk.Kategoriler
                            select new
                            {
                                x.KategoriId,
                                x.KategoriAd,
                                x.KategoriAdet
                            }).ToList();
            DataList1.DataSource = degerler;
            DataList1.DataBind();
            }
        

    }
}