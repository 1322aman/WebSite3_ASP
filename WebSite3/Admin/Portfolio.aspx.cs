using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Portfolio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                BindDDLcategory();
                // method calling: bind categories to menuber item(portfolio)
            }
            lblmsg.Text = "";
            ViewImages();
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }

    //bind categories to menuber item(portfolio)
    private void BindDDLcategory()
    {
        AmanpreetPortEntities1 data = new AmanpreetPortEntities1();
        ddlCategory.DataSource = data.CategoryInfoes.ToList();
        
        ddlCategory.DataValueField = "categoryId";
        ddlCategory.DataTextField = "CategoryName";
        ddlCategory.DataBind();
        ddlCategory.Items.Insert(0, new ListItem("Select Category", "-1"));
    }

    /// <summary>
    ///  view portfolio images in admin
    /// </summary>
    private void ViewImages()
    {
        AmanpreetPortEntities1 data = new AmanpreetPortEntities1();
        rptrGallery.DataSource = data.ImageInfoes.ToList();
        rptrGallery.DataBind();
    }

    /// <summary>
    /// add portfolio data 
    /// </summary>
    protected void lnkaddImage_Click(object sender, EventArgs e)
    {
        try
        {
            string ImageDescription = txtdescription.Text.Trim();
            string caption = txtCaption.Text.Trim();
            string CategoryId = ddlCategory.SelectedValue;
            if (CategoryId.Contains("-1"))
            {
                lblmsg.Text = "*Category is required!!";
            }

            else if (fufImage.HasFiles == false)
            {
                lblmsg.Text = " *Please select image to upload!!";
            }
            else
            {
                foreach (var file in fufImage.PostedFiles)
                {
                    //add image data
                    ImageInfo data = new ImageInfo();
                    data.ImageName = file.FileName;
                    data.ImageExtension = file.FileName.Substring(file.FileName.LastIndexOf('.'));
                    data.ImageSize = file.ContentLength;
                    data.ImageType = file.ContentType;
                    data.ImageDescription = ImageDescription;
                    data.Imagecaption = caption;
                    data.CategoryId = int.Parse(CategoryId);
                    if (file.ContentType == "image/jpeg" || file.ContentType == "image/png")
                    {
                        
                        AmanpreetPortEntities1 apData = new AmanpreetPortEntities1();
                        apData.ImageInfoes.Add(data);
                        apData.SaveChanges();

                        //save image at given path
                        string path = Server.MapPath("~/Image/Gallery/" + file.ContentLength+file.FileName );
                        file.SaveAs(path);
                        
                        txtdescription.Text = ""; // clear textbox text
                        txtCaption.Text = "";
                        ddlCategory.SelectedIndex = 0;  // reset dropdown index


                        ViewImages(); //method calling: bind images
                        lblmsg.Text = "*New Item Saved!!";
                    }
                    else
                    {
                        lblmsg.Text = "Please choose a .JPEG or .PNG image only";
                    }

                }
            }

        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }

    protected void rptrGallery_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        try
        {   // delete any image from portfolio
            if (e.CommandName.Equals("del"))
            {
            int ImageID = int.Parse(e.CommandArgument.ToString());
            string path;
            AmanpreetPortEntities1 data = new AmanpreetPortEntities1();

            ImageInfo bt = new ImageInfo();
            bt = data.ImageInfoes.Single(c => c.ImageID == ImageID); // lambda expression
                data.ImageInfoes.Attach(bt);
                data.ImageInfoes.Remove(bt);
                data.SaveChanges(); // remove the
               
               
                //delete the image from the path as well
                path = Server.MapPath("~/Image/Banner/"+ bt.ImageSize + bt.ImageName);
                if (File.Exists(path))
                {
                    File.Delete(path);
                   
                    lblmsg.Text = "*Image Deleted!!";
                }
                ViewImages(); // bind images after that

            }
            
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}