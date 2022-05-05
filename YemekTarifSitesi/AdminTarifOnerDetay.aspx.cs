using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YemekTarifSitesi.sqlbaglantisi;
namespace YemekTarifSitesi
{
    public partial class AdminTarifOnerDetay : System.Web.UI.Page
    {
        YemekTarifEntities1 ymk = new YemekTarifEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)//sayfayı 1 kere yükler
            {
                int gelenId = int.Parse(Request.QueryString["Tarifid"]);

                var degerler = (from x in ymk.Tarifler
                                where
      x.Tarifid == gelenId
                                select x).FirstOrDefault();

                TxtAdSoyad.Text = degerler.TarifAd;
                TxtMalzemeler.Text = degerler.TarifMalzeme;
                TxtYapilis.Text = degerler.TarifYapilis;

                TxtOneren.Text = degerler.TarifSahip;
                TxtMail.Text = degerler.TarifSahipMail;

                //kategori listesi
                var degerler2 = (from x in ymk.Kategoriler
                                 select new
                                 {
                                     x.KategoriId,

                                     x.KategoriAd
                                 }

                                ).ToList();


                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";
                DropDownList1.DataSource = degerler2;
                DropDownList1.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {



            int gelenId = int.Parse(Request.QueryString["Tarifid"]);
            var deg = ymk.Tarifler.Find(gelenId);




            deg.TarifAd = TxtAdSoyad.Text;
            deg.TarifMalzeme = TxtMalzemeler.Text;
            deg.TarifYapilis = TxtYapilis.Text;
            deg.TarifSahip = TxtOneren.Text;
            deg.TarifSahipMail = TxtMail.Text;
            deg.TarifDurum = true;
            ymk.SaveChanges();







            Yemekler y1 = new Yemekler();

            y1.YemekAd = TxtAdSoyad.Text;
            y1.YemekMalzeme = TxtMalzemeler.Text;
            y1.YemekYapilis = TxtYapilis.Text;


            y1.KategoriId = Convert.ToInt16(DropDownList1.SelectedValue);
            ymk.Yemekler.Add(y1);
            ymk.SaveChanges();


        }



    }




}

