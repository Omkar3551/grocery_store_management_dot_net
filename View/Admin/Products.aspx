<%@ Page Title="Products Manager" Language="C#" MasterPageFile="~/View/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApplication1.View.Admin.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    
    <div class="container-fluid" style="background-image:url('../../Asset/Images/ProductBG.jpg'); background-repeat:no-repeat; background-attachment:fixed; opacity:0.95; background-size:cover; image-resolution:150dpi; background-position:bottom ">
       <br />
        <div class="row">
            
            <div class="col-md-4"></div>
            
            <div class="col-md-8">
                <h1 class="text-black">Manage Products</h1>

            </div>
        </div>
        <div class="row">
            <div class="col-md-4 p-3 my-3 bg-dark text-white" style="opacity:0.95"  >
                
            <h3 class="text-success"><b>Product Details</b></h3>
            
                 <div class="mb-3">
                        <label for="PNameTb" class="form-label"><b>Enter Product Name :</b></label>
                        <input type="text" style="background-color: #000;  color: #fff; opacity: 0.5;" class="form-control" id="PNameTb" runat="server" />
                    </div>
                <div class="mb-3">
                        <label for="CategoryCb" class="form-label"><b>Select Product Category :</b></label>
                        
                        <asp:DropDownList ID="CategoryCb" style="background-color: #000;  color: #fff; opacity: 0.5;" class="form-control" runat="server"></asp:DropDownList>
                    </div>
                  <div class="mb-3">
                        <label for="PriceTb" class="form-label"><b>Enter Product Price (Per Kg) :</b></label>
                        <input type="text" style="background-color: #000;  color: #fff; opacity: 0.5;" class="form-control" id="PriceTb" runat="server"  />
                    </div>
                  <div class="mb-3">
                        <label for="ProdQtyTb" class="form-label"><b>Enter Product Quantity (Kg's) :</b></label>
                        <input type="text" style="background-color: #000;  color: #fff; opacity: 0.5;" class="form-control" id="ProdQtyTb" runat="server" />
                 </div> 
                  <div class="mb-3">
                        <label for="ExpDate" class="form-label"><b>Put Expiry Date Of Product :</b></label>
                        <input type="date" style="background-color: #000;  color: #fff; opacity: 0.5;" class="form-control" id="ExpDate" runat="server" />
                 </div>
                <label id="ErrMsg" runat="server" class="text-danger"></label>
                <br />
                <asp:Button Text="Add Product" Class="btn btn-success" runat="server" ID="SubmitBtn" OnClick="SubmitBtn_Click" />
                
                <asp:Button Text="Update" Class="btn btn-primary" runat="server" OnClick="EditBtn_Click" ID="EditBtn" />
                
                <asp:Button Text="Delete" Class="btn btn-danger" runat="server" ID="DeleteBtn" OnClick="DeleteBtn_Click" />
                </div>
           
            <div class="col-md-8">
                <asp:GridView runat="server" class="table table-hover p-3 my-3 bg-dark text-white"  Style="border: 3px solid black; opacity: 0.7; text-align: center" BackColor="#CCFFCC" HeaderStyle-ForeColor="#009933" ID="ProductGV" OnSelectedIndexChanged="ProductGV_SelectedIndexChanged">
                     <Columns>
                        <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                    </Columns>


                </asp:GridView>


            </div>
           
        </div>

    </div>
</asp:Content>


