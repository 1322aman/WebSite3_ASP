using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["Username"] == null)
        //{
        //    Response.Redirect("~/Login.aspx");
        //}
        //lblusernamelogin.Text = Session["Username"].ToString();
       

        // Active links---------------------------
        String activepage = Request.RawUrl;
        if (activepage.Contains("Dashboard"))
        {

            pg1.Attributes.Add("class", "active");

        }
        else if (activepage.Contains("Home"))
        {
            pg2.Attributes.Add("class", "active");

        }
        else if (activepage.Contains("Categories"))
        {
            pg3.Attributes.Add("class", "active");

        }
        else if (activepage.Contains("Portfolio"))
        {
            pg4.Attributes.Add("class", "active");

        }
        else if (activepage.Contains("Video"))
        {
            pg5.Attributes.Add("class", "active");

        }
      
    }

    protected void lnklogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("../login.aspx");
    }
}
