using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YemekTarifSitesi.sqlbaglantisi;
namespace YemekTarifSitesi
{
    public partial class Yemeklerr : System.Web.UI.Page
    {
        YemekTarifEntities1 ymk = new YemekTarifEntities1();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["YemekId"];
                islem = Request.QueryString["islem"];
            }

            if (islem == "sil")
            {
                int gelenId = int.Parse(Request.QueryString["YemekId"]);
                var deg = ymk.Yemekler.Find(gelenId);
                ymk.Yemekler.Remove(deg);
                ymk.SaveChanges();
            }




            var degerler = (from x in ymk.Yemekler
                            select new
                            {
                                x.YemekId,

                                x.YemekAd,


                            }).ToList();
            DataList1.DataSource = degerler;
            DataList1.DataBind();
            Panel2.Visible = false;
            Panel4.Visible = false;

            var degerler2 = (from x in ymk.Kategoriler
                             select new
                             {
                                 x.KategoriId,

                                 x.KategoriAd,


                             }).ToList();

            if (Page.IsPostBack == false)
            {
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";
                DropDownList1.DataSource = degerler2;
                DropDownList1.DataBind();
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

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
            Panel4.Visible = true;
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle0_Click(object sender, EventArgs e)
        {


            Yemekler y1 = new Yemekler();
            y1.YemekAd = TextBox1.Text;
            y1.YemekMalzeme = TextBox2.Text;
            y1.YemekYapilis = TextBox3.Text;
            y1.KategoriId = Convert.ToInt16(DropDownList1.SelectedValue);
            ymk.Yemekler.Add(y1);
            ymk.SaveChanges();
            Response.Write("Kategori Eklenmiştir");

      




        }
    }
}