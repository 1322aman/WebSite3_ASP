using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                AmanpreetPortEntities1 data = new AmanpreetPortEntities1();

                // count total number of Home Images
                var count = (from b in data.BannerInfoes select b).Count();

                if (count.ToString() != null)
                {
                    lblBanner.Text = count.ToString();
                }

                // count total number portfolio images
                var count1 = (from i in data.ImageInfoes select i).Count();
                if (count1.ToString() != null)
                {
                    lblPortfolio.Text = count1.ToString();
                }

                // count total number of Categories
                var count2 = (from c in data.CategoryInfoes select c).Count();
                if (count2.ToString() != null)
                {
                    lblCategory.Text = count2.ToString();
                }

                // count total number of videos
                var count3 = (from v in data.videoYoutubes select v).Count();
                if (count3.ToString() != null)
                {
                    lblVideo.Text = count3.ToString();
                }

            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}