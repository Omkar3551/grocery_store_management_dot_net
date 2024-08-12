using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.View.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowCategories();
        }

        //add this method
        public override void VerifyRenderingInServerForm(Control control)
        {
          
        }

        private void ShowCategories()
        {
            string Query = "select * from Category";
            CategoryGV.DataSource = Con.GetData(Query);
            CategoryGV.DataBind();
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatNameTb.Value == "" || CatRemarksTb.Value == "" )
                {
                    ErrMsg.InnerText = "Missing Data";
                }
                else
                {
                    string CName = CatNameTb.Value;
                    string CRem = CatRemarksTb.Value;
                   

                    string Query = "update Category set Category_Name = '{0}' , Category_Description = '{1}' where Category_Id = '{2}'";
                    Query = string.Format(Query, CName, CRem, CategoryGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowCategories();
                    ErrMsg.InnerText = "Category Updated !!";
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
                if (CatNameTb.Value == "" || CatRemarksTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";
                }
                else
                {
                    string CName = CatNameTb.Value;
                    string CRem = CatRemarksTb.Value;
                    

                    string Query = "insert into Category values('{0}','{1}')";
                    Query = string.Format(Query, CName ,CRem);
                    Con.SetData(Query);
                    ShowCategories();
                    ErrMsg.InnerText = "Category Added !!";
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
                if (CatNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";
                }
                else
                {
                    string CName = CatNameTb.Value;


                    string Query = "delete from Category where Category_Id = {0}";
                    Query = string.Format(Query, CategoryGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowCategories();
                    ErrMsg.InnerText = "Category Deleted !!";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        int key = 0;
       

        protected void CategoryGV_SelectedIndexChanged1(object sender, EventArgs e)
        {
            CatNameTb.Value = CategoryGV.SelectedRow.Cells[2].Text;
            CatRemarksTb.Value = CategoryGV.SelectedRow.Cells[3].Text;

            if (CatNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(CategoryGV.SelectedRow.Cells[1].Text);
            }
        }
    }
}