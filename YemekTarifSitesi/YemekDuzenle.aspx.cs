using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YemekTarifSitesi.sqlbaglantisi;
namespace YemekTarifSitesi
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        YemekTarifEntities1 ymk = new YemekTarifEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int gelenId = int.Parse(Request.QueryString["YemekId"]);

            if (Page.IsPostBack == false)//sayfayı 1 kere yükler
            {
                var degerler = (from x in ymk.Yemekler
                                where
                                x.YemekId == gelenId 
                                select x).FirstOrDefault();

                TextBox1.Text = degerler.YemekAd;
                TextBox2.Text = degerler.YemekMalzeme;
                TextBox3.Text = degerler.YemekYapilis;


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

                
            




            //if (Page.IsPostBack == false)
            //{
            //    var degerler2 = (from x in ymk.Kategoriler
            //                     where
            //                    x.KategoriId == gelenId
            //                     select x).FirstOrDefault();

            //    DropDownList1.DataTextField = "KategoriAd";
            //    DropDownList1.DataValueField = "KategoriId";
            //    DropDownList1.DataSource = degerler2;
            //    DropDownList1.DataBind();
            //}

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));

                int gelenId = int.Parse(Request.QueryString["YemekId"]);
                var deg = ymk.Yemekler.Find(gelenId);

                deg.YemekAd = TextBox1.Text;
                deg.YemekMalzeme = TextBox2.Text;
                deg.YemekYapilis = TextBox3.Text;
                deg.YemekResim = ("~/resimler/" + FileUpload1.FileName);
                deg.KategoriId = Convert.ToInt16(DropDownList1.SelectedValue);


                ymk.SaveChanges();

            


        }
    }
}