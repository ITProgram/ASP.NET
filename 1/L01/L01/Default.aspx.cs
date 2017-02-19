using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace L01
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(CheckBox1.Checked)
            Label1.Text = TextBox1.Text;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Label1.Text = DropDownList1.SelectedValue;
        }

        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {
            //Label1.Text = DropDownList1.SelectedValue;

        }
    }
}