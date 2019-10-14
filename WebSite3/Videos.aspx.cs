using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Videos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try { 
        if (!IsPostBack)
        {
            // Bind all the videos to the page
            AmanpreetPortEntities1 data = new AmanpreetPortEntities1();
            var video = from v in data.videoYoutubes select v;
            rptrvid.DataSource = video.ToList();
            rptrvid.DataBind();
        }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}