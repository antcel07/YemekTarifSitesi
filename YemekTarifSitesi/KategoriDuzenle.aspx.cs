using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YemekTarifSitesi.sqlbaglantisi;

namespace YemekTarifSitesi
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        YemekTarifEntities1 ymk = new YemekTarifEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

            int gelenId= int.Parse(Request.QueryString["KategoriId"]);
            if(Page.IsPostBack==false)//sayfayı 1 kere yükler
            { 
            var degerler = (from x in ymk.Kategoriler where
                            x.KategoriId==gelenId select x).FirstOrDefault();

            TextBox1.Text = degerler.KategoriAd;
            TextBox2.Text = degerler.KategoriAdet.ToString();

}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int gelenId = int.Parse(Request.QueryString["KategoriId"]);
            var deg = ymk.Kategoriler.Find(gelenId);
            
            deg.KategoriAd = TextBox1.Text;
            deg.KategoriAdet=Convert.ToInt16(TextBox2.Text);
            ymk.SaveChanges();
        }
    }
    }
