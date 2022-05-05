using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YemekTarifSitesi.sqlbaglantisi;
namespace YemekTarifSitesi
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        YemekTarifEntities1 ymk = new YemekTarifEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            int gelenId = int.Parse(Request.QueryString["Yorumid"]);
            if (Page.IsPostBack == false)//sayfayı 1 kere yükler
            {
                var degerler = (from x in ymk.Yorumlar
                                where
      x.Yorumid == gelenId
                                select x).FirstOrDefault();

                TextBox1.Text = degerler.YorumAdSoyad;
                TextBox2.Text = degerler.YorumMail;
                TextBox3.Text = degerler.Yorumicerik;
                TextBox4.Text = degerler.Yemekler.YemekAd;


            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int gelenId = int.Parse(Request.QueryString["Yorumid"]);
            var deg = ymk.Yorumlar.Find(gelenId);

            deg.Yorumicerik = TextBox3.Text;
            deg.YorumOnay = true;

           
            ymk.SaveChanges();
        }
    }
}