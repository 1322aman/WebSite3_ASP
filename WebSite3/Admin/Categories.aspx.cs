using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Categories : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            ViewCategory(); // method calling :: Get all Categories on page load
            lblmsg.Text = "";
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }

    /// <summary>
    /// // Get all Categories on page load
    /// </summary>
    private void ViewCategory()
    {
        AmanpreetPortEntities1 data = new AmanpreetPortEntities1();
        rptrCategory.DataSource = data.CategoryInfoes.ToList();
        rptrCategory.DataBind();
    }

    /// <summary>
    /// Add New Category
    /// </summary>
    protected void btnAddCategory_Click(object sender, EventArgs e)
    {
        try
        {
            string category = txtCategory.Text.Trim();
            if (Checks.Empty(category))
            {
                lblmsg.Text = "*Category Name is Required!!";
            }
            else
            {
                // give data to class
                CategoryInfo ci = new CategoryInfo();
                ci.CategoryName = category;

                AmanpreetPortEntities1 data = new AmanpreetPortEntities1();

                // save data to database
                data.CategoryInfoes.Add(ci);
                data.SaveChanges();

                ViewCategory(); // bind categories
                lblmsg.Text = "*New Category Saved!!";
                txtCategory.Text = ""; // clear textbox text
            }

        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }

    protected void rptrCategory_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        try
        {
            /// <summary>
            /// Delete selected Category;
            /// As the category deleted, its related portfolio data will be deleted as well
            /// as cascade delete is implemented in database.
            /// </summary>
            if (e.CommandName.Equals("del"))
            { 
                int CategoryId = int.Parse(e.CommandArgument.ToString()); // get category id
                AmanpreetPortEntities1 data = new AmanpreetPortEntities1();

                //get the category to delete
                CategoryInfo cid = new CategoryInfo();
                cid = data.CategoryInfoes.Single(v => v.categoryId == CategoryId); // lambda expression

                // delete the category
                data.CategoryInfoes.Attach(cid);
                data.CategoryInfoes.Remove(cid);
                data.SaveChanges();

                ViewCategory();
                lblmsg.Text = "*Category Deleted!!";

            }
            else if (e.CommandName.Equals("delall"))
            { // Delete all categories here
                AmanpreetPortEntities1 data = new AmanpreetPortEntities1();

                var cateIds = from ct in data.CategoryInfoes select ct.categoryId;

                // delete all categories one by one
                foreach (var ctx in cateIds)
                {
                    CategoryInfo ci = new CategoryInfo();

                    ci = data.CategoryInfoes.Single(c => c.categoryId == ctx); // lamda expression

                    data.CategoryInfoes.Attach(ci);
                    data.CategoryInfoes.Remove(ci);  
                    

                }

                data.SaveChanges();
                ViewCategory(); // method calling- to bind the categories
            }
            else if (e.CommandName.Equals("edit"))
            {   // edit the selected category

                pnlCategory.Visible = true; // show popup to bind edit record
                int CategoryId = int.Parse(e.CommandArgument.ToString()); // get category id
                lblCategoryID1.Text = CategoryId.ToString();

                AmanpreetPortEntities1 data = new AmanpreetPortEntities1();

                // get category info for the selected category
                 var cid = from c in data.CategoryInfoes
                           where c.categoryId == CategoryId select c;


                foreach (CategoryInfo c in cid)
                {
                    txtCategoryEdit.Text = c.CategoryName; // set the category name in popup textbox
                }
            }
        }
        catch (Exception ex)
        {
           
            lblmsg.Text = ex.Message;
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    { // close popup
        pnlCategory.Visible = false;
    }

    
    protected void btnUpdate_Click(object sender, EventArgs e)
    {  // Update the category
        string categoryname = txtCategoryEdit.Text.Trim();

        int categoryID = int.Parse(lblCategoryID1.Text);

        AmanpreetPortEntities1 data = new AmanpreetPortEntities1();

        var CategoryInfo = from c in data.CategoryInfoes where c.categoryId == categoryID select c;

        foreach (CategoryInfo c in CategoryInfo)
        {
            c.CategoryName = categoryname;
        }

        data.SaveChanges(); 

        ViewCategory(); // method calling: to bind categories

        pnlCategory.Visible = false; // popup will disapper after updation
    }
}