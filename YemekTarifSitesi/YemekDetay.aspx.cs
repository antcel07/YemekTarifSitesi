using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YemekTarifSitesi.sqlbaglantisi;

namespace YemekTarifSitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        
          YemekTarifEntities1 ymk = new YemekTarifEntities1();
        
        protected void Page_Load(object sender, EventArgs e)
        {
    int ymkId=Convert.ToInt32(Request.QueryString["YemekId"]);




            var degerler = (from x in ymk.Yorumlar
                            select new
                            {
                                x.Yemekler.YemekAd,
                                x.YorumAdSoyad,
                                x.Yorumicerik,
                                x.YorumMail,
                                x.YorumTarih,
                                x.YemekId


                            }).ToList();
            DataList2.DataSource = degerler.Where(u=>u.YemekId==ymkId);
            DataList2.DataBind();
        }

     

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int ymkId = Convert.ToInt32(Request.QueryString["YemekId"]);
            Yorumlar y = new Yorumlar();
            y.YorumAdSoyad = TxtAdSoyad.Text;
            y.YorumMail = TxtMail.Text;
            y.Yorumicerik = TxtYorum.Text;
            y.YemekId = Convert.ToInt16(ymkId);
            y.YorumTarih = DateTime.Today;



            ymk.Yorumlar.Add(y);
            ymk.SaveChanges();
            Response.Write("Tarifiniz Alınmıştır");
        }
    }
}