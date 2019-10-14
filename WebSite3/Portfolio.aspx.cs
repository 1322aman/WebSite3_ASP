using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Portfolio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Request["CategoryId"] != null)
            {
                // get categoryID from Query string
                int categoryId = int.Parse(Request["CategoryId"]);
                AmanpreetPortEntities1 data = new AmanpreetPortEntities1();

                //Bind all the images of the selected category
                var image = from i in data.ImageInfoes where i.CategoryId == categoryId select i;
                rptPortfolio.DataSource = image.ToList();
                rptPortfolio.DataBind();

                //get category name for Heading
                var cate = from c in data.CategoryInfoes where c.categoryId == categoryId select c;
                foreach (CategoryInfo ci in cate)
                    Myheading.InnerText = ci.CategoryName;

            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        
    }
}