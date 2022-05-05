using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YemekTarifSitesi.sqlbaglantisi;

namespace YemekTarifSitesi
{
    public partial class Iletisim : System.Web.UI.Page
    {
        YemekTarifEntities1 ymk = new YemekTarifEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Mesajlar msj = new Mesajlar();
            msj.MesajGonderen = TxtMesajAdSoyad.Text;
            msj.MesajBaslik = TxtMesajBaslik.Text;
            msj.MesajMail = TxtMesajMail.Text;
            msj.MesajIcerik = TxtMesajIcerik.Text;
      
            ymk.Mesajlar.Add(msj);
            ymk.SaveChanges();
            Response.Write("Mesajınız Alınmıştır");
        }
    }
}