using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            // Bind all the home images to home page
            AmanpreetPortEntities1 data = new AmanpreetPortEntities1();
            var ban = from b in data.BannerInfoes select b;
            rptrHomeImages.DataSource = ban.ToList();
            rptrHomeImages.DataBind();
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}