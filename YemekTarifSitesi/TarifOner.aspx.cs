using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YemekTarifSitesi.sqlbaglantisi;
namespace YemekTarifSitesi
{
    public partial class TarifOner : System.Web.UI.Page
    {

        YemekTarifEntities1 ymk = new YemekTarifEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

       
        protected void BtnTarifOner_Click1(object sender, EventArgs e)
        {
            
            Tarifler t = new Tarifler();
            t.TarifAd = TxtTarifAd.Text;
            t.TarifMalzeme = TxtMalzemeler.Text;
            t.TarifYapilis = TxtYapilis.Text;
            t.TarifResim = FileUpload1.FileName;
            t.TarifSahip = TxtTarifOneren.Text;
            t.TarifSahipMail = TxtMailAdres.Text;
            ymk.Tarifler.Add(t);
            ymk.SaveChanges();
            Response.Write("Tarifiniz Alınmıştır");
        }
    }
}
