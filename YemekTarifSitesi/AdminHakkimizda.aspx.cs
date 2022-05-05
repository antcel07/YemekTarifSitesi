using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YemekTarifSitesi.sqlbaglantisi;
namespace YemekTarifSitesi
{
    public partial class AdminHakkimizda : System.Web.UI.Page
    {
        YemekTarifEntities1 ymk = new YemekTarifEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            if(Page.IsPostBack==false)
            {

            

            var degerler = (from x in ymk.Hakkimizda
                            select new
                            {
                                
                                x.MetinId,
                                x.Metin
                              

                            }).FirstOrDefault();
            TextBox1.Text = degerler.Metin;
          
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            

            var deg = ymk.Hakkimizda.Find(1);
            deg.Metin = TextBox1.Text;
            ymk.SaveChanges();

          

            
        }
    }
}