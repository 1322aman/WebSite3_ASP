using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ChangePswd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
    }

    /// <summary>
    /// // Change the login password
    /// </summary>
      protected void lnkaddchnge_Click(object sender, EventArgs e)
    {   
        try
        {
            string oldpassword, newpassword, confirmpassword;
            oldpassword = txtoldpswd.Text.Trim(); // enter old pswd
            newpassword = txtnewpswd.Text.Trim(); // enter new pswd
            confirmpassword = txtnewpswd.Text.Trim(); // confirm new pswd
            if (Checks.Empty(oldpassword) && Checks.Empty(newpassword) && Checks.Empty(confirmpassword))
            {
                lblmsg.Text = "*Please Fill all Fields!!";
            }
            else if (Checks.Empty(oldpassword))
            {
                lblmsg.Text = "*Please Enter Old Password!!";
            }
            else if (Checks.Empty(newpassword))
            {
                lblmsg.Text = "*Please Enter New Password!!";
            }
            else if (Checks.Empty(confirmpassword))
            {
                lblmsg.Text = "*Please Enter confirm Password!!";
            }
            else if (newpassword != confirmpassword)
            {
                lblmsg.Text = "*Password Doesn't matched!!";
            }
            else if (newpassword == confirmpassword && !Checks.Empty(oldpassword) && !Checks.Empty(newpassword) && !Checks.Empty(confirmpassword))
            {
                int user = int.Parse(Session["UserID"].ToString()); //get user id from session
                AmanpreetPortEntities1 data = new AmanpreetPortEntities1();


                LoginInfo li = new LoginInfo();

                // get user info from password
                li = (from l in data.LoginInfoes where l.UserID == user
                      where l.Password==oldpassword select l).FirstOrDefault();

                if (li != null)
                {
                    var dt = from l in data.LoginInfoes
                                where l.UserID == user
                                select l;

                    foreach (LoginInfo li1 in dt)
                    {
                        li1.Password = newpassword; // give new password to class
                        lblmsg.Text = "! Password Changed Successfully";
                    }

                }
                else if(li == null)
                {
                    lblmsg.Text = "!Old Password Incorrect";
                }
                data.SaveChanges(); // password updated!

            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}
