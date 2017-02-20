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
        HtmlTableRow r;
        HtmlTableCell c;
        protected void Page_Load(object sender, EventArgs e)
        {

            t.Border = 1;
            t.CellPadding = 3;
            t.CellSpacing = 3;
            t.Align = "center";
            t.BorderColor = "green";

            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "html Control"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "onserverclick"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "onserverchange"; r.Cells.Add(c);
            t.Rows.Add(r);
            /*
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "html inputReset"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "no"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "no"; r.Cells.Add(c);
            t.Rows.Add(r);
            */
            Controls.Add(t);
        }
        protected void Reset_ButtonClick(object sender, System.EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputReset"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "+"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "-"; r.Cells.Add(c);
            t.Rows.Add(r);
        }
        protected void ButtonClick(object sender, System.EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputButton"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "+"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "-"; r.Cells.Add(c);
            t.Rows.Add(r);
        }
        protected void Submit_ButtonClick(object sender, System.EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputSubmit"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "+"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "-"; r.Cells.Add(c);
            t.Rows.Add(r);

        }
        protected void File_ButtonClick(object sender, System.EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputFile"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "+"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "-"; r.Cells.Add(c);
            t.Rows.Add(r);
        }
        protected void File_onserverchange(object sender, System.EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputFile"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "-"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "+"; r.Cells.Add(c);
            t.Rows.Add(r);

        }
        protected void InputTextClick(object sender, System.EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputText"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "+"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "-"; r.Cells.Add(c);
            t.Rows.Add(r);
        }
        protected void InputText_onserverchange(object sender, System.EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputText"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "-"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "+"; r.Cells.Add(c);
            t.Rows.Add(r);
        }
        protected void Password_onserverchange(object sender, System.EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputPassword"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "-"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "+"; r.Cells.Add(c);
            t.Rows.Add(r);
        }
        protected void CheckBox_onserverchange(object sender, System.EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputCheckBox"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "-"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "+"; r.Cells.Add(c);
            t.Rows.Add(r);
        }
        protected void textArea_onserverchange(object sender, System.EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputTextArea"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "-"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "+"; r.Cells.Add(c);
            t.Rows.Add(r);
        }
        protected void Select1_ServerChange(object sender, EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputSelect"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "-"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "+"; r.Cells.Add(c);
            t.Rows.Add(r);
        }
        protected void radio1_onserverchange(object sender, EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputRadioButton 1"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "-"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "+"; r.Cells.Add(c);
            t.Rows.Add(r);
        }
        protected void radio2_onserverchange(object sender, EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputRadioButton 2"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "-"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "+"; r.Cells.Add(c);
            t.Rows.Add(r);
        }
    }
}