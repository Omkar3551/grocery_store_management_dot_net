using System;
using System.Web.UI;

namespace WebApplication1.View.Admin
{
    public partial class Seller : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowSellers();
        }

        //add this method
        public override void VerifyRenderingInServerForm(Control control)
        {
           
        }

        private void ShowSellers()
        {
            string Query = "select * from Seller";
            SellerGV.DataSource = Con.GetData(Query);
            SellerGV.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (SpwdTb.Value == "" || SEmailTb.Value == "" || SNameTb.Value == "" || PhnTb.Value == "" || SAddTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data :(";
                }
                else
                {
                    string SName = SNameTb.Value;
                    string SEmail = SEmailTb.Value;
                    string Password = SpwdTb.Value;
                    string Phone = PhnTb.Value;
                    string Address = SAddTb.Value;

                    string Query = "insert into Seller values('{0}','{1}','{2}','{3}','{4}')";
                    Query = string.Format(Query, SName, SEmail, Password, Phone, Address);
                    Con.SetData(Query);
                    ShowSellers();
                    ErrMsg.InnerText = "Seller Added !!";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int key = 0;

        protected void SellerGV_SelectedIndexChanged(object sender, EventArgs e)
        {

            SNameTb.Value = SellerGV.SelectedRow.Cells[2].Text;
            SEmailTb.Value = SellerGV.SelectedRow.Cells[3].Text;
            SpwdTb.Value = SellerGV.SelectedRow.Cells[4].Text;
            PhnTb.Value = SellerGV.SelectedRow.Cells[5].Text;
            SAddTb.Value = SellerGV.SelectedRow.Cells[6].Text;
            if (SNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(SellerGV.SelectedRow.Cells[1].Text);
            }

        }
        protected void EditBtn_Click(Object sender, EventArgs e)
        {
            try
            {
                if (SpwdTb.Value == "" || SEmailTb.Value == "" || SNameTb.Value == "" || PhnTb.Value == "" || SAddTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data :(";
                }
                else
                {
                    string SName = SNameTb.Value;
                    string SEmail = SEmailTb.Value;
                    string Password = SpwdTb.Value;
                    string Phone = PhnTb.Value;
                    string Address = SAddTb.Value;

                    string Query = "update Seller set Seller_Name = '{0}', Seller_Email = '{1}', Seller_Password = '{2}',Seller_Phone = '{3}',Seller_Address = '{4}' where Seller_Id = {5}";
                    Query = string.Format(Query, SName, SEmail, Password, Phone, Address, SellerGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowSellers();
                    ErrMsg.InnerText = "Seller Updated !!";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        protected void DeleteBtn_Click(Object sender, EventArgs e)
        {
            try
            {
                if (SpwdTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data :(";
                }
                else
                {
                    string SName = SNameTb.Value;
                    

                    string Query = "delete from Seller where Seller_Id = {0}";
                    Query = string.Format(Query, SellerGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowSellers();
                    ErrMsg.InnerText = "Seller Deleted !!";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}