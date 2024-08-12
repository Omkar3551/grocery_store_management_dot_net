using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.View
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
        }
        public static string SName;
        public static int Skey;
        //Add this method
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
        Models.Functions Con;
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
           if(AdminRadio.Checked) 
            {
               if(EmailId.Value == "Admin.praful@gmail.com" && UserPasswordTb.Value == "Admin.praful")
                {
                    Response.Redirect("Admin/Seller.aspx");
                }
               else
                {
                    InfoMsg.InnerText = "Inavalid Admin !!";
                }
            }
           else
            {
                string Query = "select Seller_Id,Seller_Name,Seller_Email,Seller_Password from Seller where Seller_Email = '{0}' and Seller_Password = '{1}' ";
                Query = string.Format(Query, EmailId.Value, UserPasswordTb.Value);
                DataTable dt = Con.GetData(Query);
                if(dt.Rows.Count == 0) 
                {
                    InfoMsg.InnerText = "Invalid User !!";
                }
                else
                {
                    SName = EmailId.Value;
                    Skey = Convert.ToInt32(dt.Rows[0][0].ToString());
                    Response.Redirect("Seller/Billing.aspx");
                }
            }
        }
    }
}