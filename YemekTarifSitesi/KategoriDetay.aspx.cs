using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YemekTarifSitesi.sqlbaglantisi;

namespace YemekTarifSitesi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {

        YemekTarifEntities1 ymk = new YemekTarifEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int katId = Convert.ToInt32(Request.QueryString["KategoriId"]);
            var degerler = (from x in ymk.Yemekler
                            select new
                            {
                                x.YemekId,
                                x.YemekAd,
                                x.YemekMalzeme,
                                x.YemekYapilis,
                               x.YemekTarih,
                                x.YemekPuan,
                               x.KategoriId
                            }).ToList();
            DataList2.DataSource = degerler.Where(u => u.KategoriId == katId);
            DataList2.DataBind();
        }
    }
    }
