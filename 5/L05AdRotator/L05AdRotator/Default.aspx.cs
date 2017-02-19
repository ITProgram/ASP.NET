using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace L05AdRotator
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_Init(object Sender, EventArgs e)
        {
           // AdRotator1.KeywordFilter;

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

        protected void AdRotator1_Init(object sender, EventArgs e)
        {
            

        }
    }
}