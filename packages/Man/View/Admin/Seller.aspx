<%@ Page Title="Sellers" Language="C#" MasterPageFile="~/View/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="Seller.aspx.cs" Inherits="WebApplication1.View.Admin.Seller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
   
     
        
<div class="container-fluid bg-dark"  style="background-image:url('../../Asset/Images/SellerBG.jpeg'); background-repeat:no-repeat;    background-size: cover; ">
        <div class="row">
            
            <div class="col-md-12 p-3 my-3 bg-dark text-success" style="opacity:0.95; text-align:center"><h1 class="text">Manage Seller</h1></div>
             
        </div>
        <div class="row">
            <div class="col-md-4 p-3 my-3 bg-dark text-success" style="opacity:0.95"  >
            <h2 class="text" style="text-align:center">Seller Details</h2>
            

                 <div class="mb-3">
                        <label for="SNameTb" class="form-label text-light">Seller Name</label>
                        <input type="text" style="background-color: #000;  color: #fff; opacity: .5;" class="form-control" id="SNameTb" runat="server"/>
                    </div>
                <div class="mb-3">
                        <label for="SEmailTb" class="form-label text-light">Seller Email</label>
                        <input type="email" style="background-color: #000; color: #fff; opacity: .5;" class="form-control" id="SEmailTb" runat="server" />
                    </div>
                <div class="mb-3">
                        <label for="SpwdTb" class="form-label text-light">Seller Password</label>
                        <input type="text" style="background-color: #000; color: #fff; opacity: .5;" class="form-control" id="SpwdTb" runat="server" />
                    </div>
                <div class="mb-3">
                        <label for="PhnTb" class="form-label text-light">Seller Phone</label>
                        <input type="text" style="background-color: #000; color: #fff; opacity: .5;" class="form-control" id="PhnTb" runat="server" />
                    </div>
                <div class="mb-3">
                        <label for="SAddTb" class="form-label text-light">Seller Address</label>
                        <input type="text" style="background-color: #000; color: #fff; opacity: .5;" class="form-control" id="SAddTb" runat="server" />
                    </div>
                  <label id="ErrMsg" runat="server" class="text-danger"></label><br />
             <asp:Button Text="  Edit  " Class="btn btn-success"  runat="server" ID="EditBtn" OnClick="EditBtn_Click" />
             <asp:Button Text="  Submit  " Class="btn btn-success" runat="server" ID="SaveBtn" OnClick="SaveBtn_Click" />
             <asp:Button Text="  Delete  " Class="btn btn-success" runat="server" ID="DeleteBtn" OnClick="DeleteBtn_Click" />
                </div>
           
            <div class="col-md-8">
                <asp:GridView runat="server" HeaderStyle-ForeColor="#009933" class="table table-hover p-3 my-3 bg-dark text-white" Style="opacity: 0.95; text-align: center" ID="SellerGV" OnSelectedIndexChanged="SellerGV_SelectedIndexChanged" >
                    <Columns>
                       
                        <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                    </Columns>


                </asp:GridView>

            </div>
           
        </div>

    </div>
</asp:Content>
