using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace L05MultiView
{
    public partial class _Default : Page
    {


        private class WizardResult
        {
            public string textBox;
            public string radioButtonList;
            public string CheckBoxList;
            public string listBox;
            public DateTime CalFrom;
            public DateTime CalTo;


        }
        WizardResult wr = new WizardResult();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            this.MultiView1.ActiveViewIndex = (this.MultiView1.ActiveViewIndex + 1) % 3;
        }
        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "View1ShowText";
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox2.Text = "View2ShowText";
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox3.Text = "View3ShowText";
        }

        protected void ButtonAdRotatorMode_Click(object sender, EventArgs e)
        {
            switch (AdRotator1.KeywordFilter)
            {
                case "b1": AdRotator1.KeywordFilter = "b2"; break;
                case "b2": AdRotator1.KeywordFilter = ""; break;
                default: AdRotator1.KeywordFilter = "b1"; break;
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            
        }

        protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
        {
            /*
            switch (Wizard1.ActiveStep.Title)
            {
                case "TextBox": wr.textBox = TextBoxStep1.Text; break;
                case "RadioButtonList": wr.radioButtonList= RadioButtonList1Step2.SelectedValue; break;
                case "CheckBoxList":
                    string buf="";
                    foreach (ListItem item in CheckBoxList1Step3.Items)
                    {
                        if (item.Selected) buf += item.Value.ToString(); 
                    }
                    wr.CheckBoxList = buf;
                     break;
                case "ListBox":wr.listBox = ListBox1Step4.SelectedValue;
                    break;
                case "Calendar": wr.CalFrom = Calendar1Step5.SelectedDate; break;
            }
            CellSummaryTextBox.Text = wr.textBox;
            CellSummaryRadioButtonList.Text = wr.radioButtonList;
            CellSummaryCheckButtonList.Text = wr.CheckBoxList;
            CellSummaryListBox.Text = wr.listBox;
            CellSummaryCalendar.Text = wr.CalFrom.ToString();
            */
            CellSummaryTextBox.Text = TextBoxStep1.Text;
            CellSummaryRadioButtonList.Text = RadioButtonList1Step2.SelectedValue;
            string buf = "";
            foreach (ListItem item in CheckBoxList1Step3.Items)
            {
                if (item.Selected) buf += item.Value.ToString();
            }
            
            CellSummaryCheckButtonList.Text =buf;
            CellSummaryListBox.Text = ListBox1Step4.SelectedValue;
            CellSummaryCalendar.Text = Calendar1Step5.SelectedDate.ToString();
        }

        protected void Wizard1_CancelButtonClick(object sender, EventArgs e)
        {
            TextBoxStep1.Text = "";
            RadioButtonList1Step2.SelectedValue = null;
            CheckBoxList1Step3.SelectedIndex = -1;
            ListBox1Step4.SelectedIndex = -1;
        }

        protected void TreeView1_TreeNodeCheckChanged(object sender, TreeNodeEventArgs e)
        {
            TreeNode tn = TreeView1.SelectedNode;
            Response.Write(tn.Value + (tn.Checked ? "Выбран" : "Отозван"));
        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            Menu menu = (Menu)sender;
            Response.Write(menu.SelectedItem.Text + " " + menu.SelectedItem.Value);
        }
    }
}