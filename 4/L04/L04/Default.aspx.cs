using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace L04
{
    public partial class _Default : Page
    {
        HtmlTable t = new HtmlTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            t.Border = 1;
            t.CellPadding = 3;
            t.CellSpacing = 3;
            t.Align = "center";
            t.BorderColor = "green";
            HtmlTableRow r;
            HtmlTableCell c;
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "html Control"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "onserverclick"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "onserverchange"; r.Cells.Add(c);
            t.Rows.Add(r);
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "html inputReset"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "no"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "no"; r.Cells.Add(c);
            t.Rows.Add(r);
            Controls.Add(t);
        }
        protected void Reset_ButtonClick(object sender, System.EventArgs e)
        {
            Response.Write("HEllo Suchka");
        }
        protected void ButtonClick(object sender, System.EventArgs e)
        {
            Response.Write("HEllo Suchka");
        }
        protected void Submit_ButtonClick(object sender, System.EventArgs e)
        {
            Response.Write("HEllo Suchka");
            
        }
        protected void File_ButtonClick(object sender, System.EventArgs e)
        {
            Response.Write("HEllo Suchka");
        }
        protected void InputTextClick(object sender, System.EventArgs e)
        {
            Response.Write("HEllo Suchka");
        }
        protected void Common_onserverchange(object sender, System.EventArgs e)
        {

                Response.Write("comm");
        }
        protected void Com(object sender, System.EventArgs e)
        {

            Response.Write("COMMOMMMMMM");
        }
    }

}