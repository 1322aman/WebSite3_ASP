using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try {

            if (!IsPostBack)
            {
                //method calling - Bind Categories to menubar (portfolio)
                BindMenuCategory();
            }

            // Active the link which is clicked----------------------
            String activepage = Request.RawUrl;
            if (activepage.Contains("Home"))
            {

                pg1.Attributes.Add("class", "myColor");

            }
            else if (activepage.Contains("Portfolio"))
            {
                pg2.Attributes.Add("class", "myColor has-children");
                pg1.Attributes.Remove("class");

            }
            else if (activepage.Contains("Videos"))
            {
                pg3.Attributes.Add("class", "myColor");
                pg1.Attributes.Remove("class");
            }
            else if (activepage.Contains("About"))
            {
                pg4.Attributes.Add("class", "myColor");
                pg1.Attributes.Remove("class");
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    //Bind Categories to menubar (portfolio)
    private void BindMenuCategory()
    {
        AmanpreetPortEntities1 data = new AmanpreetPortEntities1();
        var cate = from c in data.CategoryInfoes select c;
        repCategories.DataSource = cate.ToList();
        repCategories.DataBind();
    }

}
