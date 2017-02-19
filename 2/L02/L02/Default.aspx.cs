using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace L02
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text += "Page_Load ";
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            Label1.Text += "Page_Init ";
        }

        protected void Page_Prerender(object sender, EventArgs e)
        {
            Label1.Text += "Page_Prerender ";
        }
        protected void Page_Unload(object sender, EventArgs e)
        {
            Label1.Text += "Page_Unload";
        }



        protected void Button1_Disposed(object sender, EventArgs e)
        {
            Label1.Text += "Button_Disposed ";
        }

        protected void Button1_Init(object sender, EventArgs e)
        {
            Label1.Text += "Button_Init ";
        }

        protected void Button1_Load(object sender, EventArgs e)
        {
            Label1.Text += "Button_Load ";
        }

        protected void Button1_PreRender(object sender, EventArgs e)
        {
            Label1.Text += "Button_PreRender ";
        }

        protected void Button1_Unload(object sender, EventArgs e)
        {
            Label1.Text += "Button_Unload ";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text += "Button_Click ";
            Response.Write("<br>Machine "+System.Environment.MachineName);
            Response.Write("<br>OS " + System.Environment.OSVersion);
            Response.Write("<br>Memory size " + System.Environment.WorkingSet);
            Response.Write("<br>ASP.NET version " + System.Environment.Version.ToString());
            Response.Write("<br>ip-address " + HttpContext.Current.Request.ServerVariables["LOCAL_ADDR"]);
            Response.Write("<br>Temp place " + Environment.GetEnvironmentVariable("TEMP"));
            Response.Write("<br>Request type " + (Request.IsLocal?"Local r":"not local req"));
            Response.Write("<br>request protect " + (Request.IsSecureConnection?"Secure":"no secure"));
            Response.Write("<br>Browser " + Request.Browser.Version);
            Response.Write("<br>Browser " + Request.Browser.MinorVersion);
            Response.Write("<br>Browser " + Request.Browser.MajorVersion+"</br>");
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            Label1.Text += "Button_Command ";
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            Label1.Text += "CheckBox_Checked ";
        }
    }
}