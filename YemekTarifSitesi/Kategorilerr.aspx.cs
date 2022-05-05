using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YemekTarifSitesi.sqlbaglantisi;
namespace YemekTarifSitesi
{
    public partial class Kategorilerr : System.Web.UI.Page
    {
        YemekTarifEntities1 ymk = new YemekTarifEntities1();

        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["KategoriId"];
                islem = Request.QueryString["islem"];
            }

            if (islem == "sil")
            {
                int gelenId = int.Parse(Request.QueryString["KategoriId"]);
                var deg = ymk.Kategoriler.Find(gelenId);
                ymk.Kategoriler.Remove(deg);
                ymk.SaveChanges();
            }


            var degerler = (from x in ymk.Kategoriler
                            select new
                            {
                                x.KategoriId,

                                x.KategoriAd,

                            }).ToList();
            DataList1.DataSource = degerler;
            DataList1.DataBind();
            Panel2.Visible = false;
            Panel4.Visible = false;

        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;

        }



        protected void Button3_Click1(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            Kategoriler k = new Kategoriler();
            k.KategoriAd = TextBox1.Text;
            ymk.Kategoriler.Add(k);
            ymk.SaveChanges();
            Response.Write("Kategori Eklenmiştir");






        }
    }
}
