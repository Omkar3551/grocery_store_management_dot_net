using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.View.Admin
{
    public partial class Products : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            GetCategories();
            ShowProducts();
        }
        private void GetCategories()
        {
            string Query = "Select * from Category";
            CategoryCb.DataTextField = Con.GetData(Query).Columns["Category_Name"].ToString();
            CategoryCb.DataValueField = Con.GetData(Query).Columns["Category_Id"].ToString();
            CategoryCb.DataSource = Con.GetData(Query);
            CategoryCb.DataBind();
        }
        //add this method
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        private void ShowProducts()
        {
            string Query = "select * from Products";
            ProductGV.DataSource = Con.GetData(Query);
            ProductGV.DataBind();
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (PNameTb.Value == "" || CategoryCb.DataTextField == "" || PriceTb.Value == "" || ProdQtyTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";
                }
                else
                {
                    string PName = PNameTb.Value;
                    string PrCat = CategoryCb.SelectedValue;
                    string Price = PriceTb.Value;
                    string Qty = ProdQtyTb.Value;
                    string EDate = ExpDate.Value;


                    string Query = "update Products set PrName = '{0}' , PrCategory = {1},PrPrice ={2},PrQty={3},PrExpDate = '{4}' where PrId = {5}";
                    Query = string.Format(Query, PName,PrCat,Price,Qty, EDate, ProductGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowProducts();
                    ErrMsg.InnerText = "Prdoucts Updated !!";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (PNameTb.Value == "" || CategoryCb.DataTextField == "" || PriceTb.Value == "" || ProdQtyTb.Value == "" )
                { 
                    ErrMsg.InnerText = "Missing Data";
                }
                else
                {
                    string PName = PNameTb.Value;
                    string PrCat = CategoryCb.SelectedValue;
                    string Price = PriceTb.Value;
                    string Qty = ProdQtyTb.Value;
                    string EDate = ExpDate.Value;

                    string Query = "insert into Products values('{0}',{1},{2},{3},'{4}')";
                    Query = string.Format(Query, PName, PrCat, Price, Qty, EDate);
                    Con.SetData(Query);
                    ShowProducts();
                    ErrMsg.InnerText = "Product Added !!";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (PNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";
                }
                else
                {
                    string Query = "delete from Products where PrId = {0}";
                    Query = string.Format(Query, ProductGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowProducts();
                    ErrMsg.InnerText = "Product Deleted !!";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int key = 0;

        protected void ProductGV_SelectedIndexChanged(object sender, EventArgs e)
        {

            PNameTb.Value = ProductGV.SelectedRow.Cells[2].Text;
            CategoryCb.SelectedValue = ProductGV.SelectedRow.Cells[3].Text;
            PriceTb.Value = ProductGV.SelectedRow.Cells[4].Text;
            ProdQtyTb.Value = ProductGV.SelectedRow.Cells[5].Text;
            ExpDate.Value = ProductGV.SelectedRow.Cells[6].Text;
            if (PNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(ProductGV.SelectedRow.Cells[1].Text);
            }

        }
    }
}