using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.View.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            GetProducts();
            GetCategories();
            SumSell();
            GetSellers();
            GetSeller();
            SumShellBySeller();
          
        }

        private void GetProducts()
        {
            string Query = "Select Count(*) from Products";
            ProNumTb.InnerText = Con.GetData(Query).Rows[0][0].ToString();
            ProNumTb.DataBind();
        } 
        private void GetCategories()
        {
            string Query = "Select Count(*) from Category";
            CatNumTb.InnerText = Con.GetData(Query).Rows[0][0].ToString();
            CatNumTb.DataBind();
        }
        private void GetSellers()
        {
            string Query = "Select Count(*) from Seller";
            SellNumTb.InnerText = Con.GetData(Query).Rows[0][0].ToString();
            SellNumTb.DataBind();
        }
        private void SumSell()
        {
            string Query = "Select Sum(Amount) from BillTb1";
            FinanceTb.InnerText = "Rs."+Con.GetData(Query).Rows[0][0].ToString();
            FinanceTb.DataBind();
        }
        
       /*private void SumShellBySeller()
        {
            string Query = "Select Sum(Amount) from BillTb1 where Seller_id = "+SellerCb.DataValueField+" ";
            TotalTb.InnerText = "Rs."+Con.GetData(Query).Rows[0][0].ToString();
            TotalTb.DataBind();
        }*/
       private void SumShellBySeller()
{
         string sellerId = SellerCb.SelectedValue; // Get the selected value of the dropdown list
    if (sellerId != "")
    {
        string query = "SELECT SUM(Amount) FROM BillTb1 WHERE Seller_id = " + sellerId;
        DataTable result = Con.GetData(query);
        if (result.Rows.Count > 0 && result.Rows[0][0] != DBNull.Value)
        {
            double totalAmount = Convert.ToDouble(result.Rows[0][0]);
            TotalTb.InnerText = "Rs. " + totalAmount.ToString("#,##0.00"); // Format the total amount with comma separator and two decimal places
            TotalTb.DataBind();
        }
        else
        {
            TotalTb.InnerText = "Rs. 0.00";
        }
    }
    else
    {
        TotalTb.InnerText = "Rs. 0.00";
    }
}

        private void GetSeller()
        {
            
                string Query = "Select * from Seller";
                SellerCb.DataTextField = Con.GetData(Query).Columns["Seller_Name"].ToString();
                SellerCb.DataValueField = Con.GetData(Query).Columns["Seller_Id"].ToString();
                SellerCb.DataSource = Con.GetData(Query);
                SellerCb.DataBind();
           
        }

        protected void SellerCb_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            SumShellBySeller();

           
        }

        protected void SellerCb_PreRender(object sender, EventArgs e)
        {

        }
    }
}