using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Video : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            ViewVideo(); // method calling: to get all videos
            lblmsg.Text = "";
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }

    /// <summary>
    /// Get all videos for the page
    /// </summary>
    private void ViewVideo()
    {   
        AmanpreetPortEntities1 data = new AmanpreetPortEntities1();
        rptrvideo.DataSource = data.videoYoutubes.ToList();
        rptrvideo.DataBind();
    }
    protected void lnkvideo_Click(object sender, EventArgs e)
    {   // save the videos to the database
        try
        {
            if (Checks.Empty(txtsrc.Text.Trim()))
            {
                lblmsg.Text = "*Video Source is Required!!";
            }
            else
            {
                // give data to class
                videoYoutube vy = new videoYoutube();
                vy.VideoSource = txtsrc.Text.Trim();

                AmanpreetPortEntities1 data = new AmanpreetPortEntities1();
                data.videoYoutubes.Add(vy); // Add the video code to database
                data.SaveChanges();
                ViewVideo(); // method calling to bind videos
                lblmsg.Text = "*New Video Saved!!";
                txtsrc.Text = "";
            }

        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }

    protected void rptrvideo_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        try
        {
            /// <summary>
            /// Delete the selected video
            /// </summary>
            if (e.CommandName.Equals("del"))
            {
                int videoId = int.Parse(e.CommandArgument.ToString()); // get video id
                AmanpreetPortEntities1 data = new AmanpreetPortEntities1();

                videoYoutube vid = new videoYoutube();
                vid = data.videoYoutubes.Single(v => v.VideoYoutubeID == videoId);
                data.videoYoutubes.Attach(vid);
                data.videoYoutubes.Remove(vid);
                data.SaveChanges();
                ViewVideo(); // method calling to bind videos grid after delete
            }
            else if (e.CommandName.Equals("delall"))
            {   // delete all videos

                AmanpreetPortEntities1 data = new AmanpreetPortEntities1();

                // get video id's for delete all operation
                var videoids = from b in data.videoYoutubes select b.VideoYoutubeID;
                
                foreach (var v in videoids)
                {   // iterate through each video id to delete all one by one
                    videoYoutube vybt = new videoYoutube();
                    vybt = data.videoYoutubes.Single(c => c.VideoYoutubeID == v); // lamda expression
                    
                    data.videoYoutubes.Attach(vybt);
                    data.videoYoutubes.Remove(vybt);


                }

                data.SaveChanges();
                ViewVideo(); // method calling: to bind video grid

            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}