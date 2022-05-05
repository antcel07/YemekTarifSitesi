using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YemekTarifSitesi.sqlbaglantisi;

namespace YemekTarifSitesi
{
    public partial class AdminMesajDetay : System.Web.UI.Page
    {
        YemekTarifEntities1 ymk = new YemekTarifEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Page.IsPostBack == false)//sayfayı 1 kere yükler
            {
                int gelenId = int.Parse(Request.QueryString["MesajId"]);

                var degerler = (from x in ymk.Mesajlar
                                where
      x.MesajId == gelenId
                                select x).FirstOrDefault();

                TextBox1.Text = degerler.MesajGonderen;
                TextBox5.Text = degerler.MesajBaslik;
                TextBox6.Text = degerler.MesajMail;
                TextBox7.Text = degerler.MesajIcerik;
               


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int gelenId = int.Parse(Request.QueryString["MesajId"]);
              var deg = ymk.Mesajlar.Find(gelenId);

               deg.MesajBaslik = TextBox5.Text;
              deg.MesajMail = TextBox6.Text;
              deg.MesajIcerik = TextBox7.Text;



              ymk.SaveChanges();
        }

        
    }
}