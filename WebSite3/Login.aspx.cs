using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Check if cookiees exists then bind the cookiee value to text boxes
        if (Request.Cookies["UserNamecookie"] != null && Request.Cookies["passwordcoookie"] != null)
        {
            txtusername.Text = Request.Cookies["UserNamecookie"].Value;
            txtpassword.Attributes["value"] = Request.Cookies["passwordcoookie"].Value;
        }
    }

    /// <summary>
    /// login the admin
    /// </summary>
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            /*if RememberME checkBox is check then
             set the cookiee username and pswd for 30days */

            if (chkremeber.Checked)
            {
                Response.Cookies["UserNamecookie"].Expires = DateTime.Now.AddDays(30);
                Response.Cookies["passwordcoookie"].Expires = DateTime.Now.AddDays(30);
            }
            else
            {
                // if not, then expire the cookiee
                Response.Cookies["UserNamecookie"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["passwordcoookie"].Expires = DateTime.Now.AddDays(-1);

            }

            // put textbox values to cookiee
            Response.Cookies["UserNamecookie"].Value = txtusername.Text.Trim();
            Response.Cookies["passwordcoookie"].Value = txtpassword.Text.Trim();

            string username, password;
            username = txtusername.Text.Trim();
            password = txtpassword.Text.Trim();

            if (Checks.Empty(username) && Checks.Empty(password))
            {
                lblmsg.Text = "*Please fill all fields!!";
            }
            else if (Checks.Empty(username))
            {
                lblmsg.Text = "*Username is required!";
            }
            else if (Checks.Empty(password))
            {
                lblmsg.Text = "*Password is required!";
            }
            else if (!Checks.Empty(username) && !Checks.Empty(password))
            {
                AmanpreetPortEntities1 data = new AmanpreetPortEntities1();
                LoginInfo li = new LoginInfo();

                // linq query: to get data by user name and password
                li = (from log in data.LoginInfoes
                           where log.UserName == username & log.Password == password
                           select log).First();

                if (li != null)
                {
                    Session["Username"] = username; // store user-name in session
                    Session["UserID"] = li.UserID; // store user-id in session
                    Response.Redirect("Admin/Dashboard.aspx");
                }
                else
                {
                    lblmsg.Text = "*Invalid Username Or Password!!";
                }
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}