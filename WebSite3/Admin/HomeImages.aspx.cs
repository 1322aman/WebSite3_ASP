using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_HomeImages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lblmsg.Text = "";
            ViewBanner(); // method calling to Bind images on page load
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }

    // Bind images on page load
    private void ViewBanner()
    {
        AmanpreetPortEntities1 data = new AmanpreetPortEntities1();
        rptrBanner.DataSource = data.BannerInfoes.ToList();
        rptrBanner.DataBind();
    }

    //Add images to database
    protected void lnkaddBanner_Click(object sender, EventArgs e)
    {
        try
        {

            if (fufBanner.HasFiles == false)
            {
                lblmsg.Text = " *Please select a file to upload";
            }
            else
            {
                foreach (var file in fufBanner.PostedFiles)
                {
                    //put image info to class
                    BannerInfo data = new BannerInfo();
                    data.BannerName = file.FileName;
                    data.BannerExtension = file.FileName.Substring(file.FileName.LastIndexOf('.'));
                    data.BannerSize = file.ContentLength;
                    data.BannerType = file.ContentType;
                    if (file.ContentType == "image/jpeg" || file.ContentType == "image/png")
                    {
                        AmanpreetPortEntities1 apData = new AmanpreetPortEntities1();
                        apData.BannerInfoes.Add(data);
                       int ans = apData.SaveChanges();
                        string path;
                        if (ans>0)
                        {
                            // save the image to the path
                            path = Server.MapPath("~/Image/Banner/" + file.ContentLength + file.FileName);
                            file.SaveAs(path);
                            ViewBanner();
                        }

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

    protected void rptrBanner_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        try
        {
            // to delete selected image
            if (e.CommandName.Equals("del"))
            {
            string path;
            int BannerID = int.Parse(e.CommandArgument.ToString());
            AmanpreetPortEntities1 data = new AmanpreetPortEntities1();
                
                BannerInfo bt = new BannerInfo();
                bt = data.BannerInfoes.Single(c => c.BannerID == BannerID); 
                // lamda expression to get image info
               
            if (bt != null)
            {
                //remove image
                data.BannerInfoes.Attach(bt);
                data.BannerInfoes.Remove(bt);
                data.SaveChanges();
                
                    //delete image from the path
                path = Server.MapPath("~/Image/Banner/" + bt.BannerName);
                if (File.Exists(path))
                {
                    File.Delete(path);
                   
                    lblmsg.Text = "*Image Deleted!!";
                }
                    

                }
                ViewBanner(); //method calling to bind image after delete
            }
            else if (e.CommandName.Equals("delall"))
            {   // delete all images
                AmanpreetPortEntities1 data = new AmanpreetPortEntities1();
                
                //get all image info data to delete
                var dbBannerId = from b in data.BannerInfoes select b.BannerID;
                
                string path;
                foreach (var bid in dbBannerId)
                {
                    BannerInfo bt = new BannerInfo();
                    bt = data.BannerInfoes.Single(c => c.BannerID == bid); // lamda expression
                    
                        
                        path= Server.MapPath("~/Image/Banner/" + bt.BannerName);
                        if (File.Exists(path))
                        {
                            // delete images from the path
                        File.Delete(path);
                            
                        }
                    
                    data.BannerInfoes.Attach(bt);
                    data.BannerInfoes.Remove(bt); // remove image data
                   

                }

                data.SaveChanges();
                ViewBanner(); // method calling to bind images

            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}