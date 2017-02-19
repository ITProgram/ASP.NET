using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace L06
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //bool prost = true;
            int n = int.Parse(args.Value);
            for (int i = 2; i <= n / 2; i++)
            {
                if (n % i == 0)
                {
                    //prost = false;
                    args.IsValid = false;
                    break;
                }
            }
           






           /* bool tf = false;
            
            for (int i = 2; i < (int)(Int32.Parse(args.Value) / 2); i++)
            {
                if ((Int32.Parse(args.Value) )% i == 0)
                {
                    tf = false;
                    break;
                }
                else
                {
                    tf = true;
                }
            }
            if (tf == false)
            {
                args.IsValid = false;
            }*/
        }
    }
}