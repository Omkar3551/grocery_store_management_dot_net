<%@ Page Title="Categories" Language="C#" MasterPageFile="~/View/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="WebApplication1.View.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
<div class="container-fluid" style="background-image:url('../../Asset/Images/CategoryBG.jpeg'); background-repeat:no-repeat; background-attachment:fixed; opacity:0.95; background-size:cover; image-resolution:150dpi; background-position:bottom ">
        <div class="row">
            
            <div class="col-md-4"></div>
            <div class="col-md-8"><br /><img src="../../Asset/Images/basket.jpg" width="150px" /><h4 class="text-success">Manage Categories</h4></div>
        </div>
        <div class="row">
            <div class="col-md-4">
            <h2 class="text" style="color:black; text-align:center">Category Details</h2>
            
                 <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label text-white "></label>
                        <input type="text" placeholder="Category Name" style="opacity: .85;" class="form-control" id="CatNameTb" runat="server"/>
                    </div>
                <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label text-white"></label>
                        <input type="text" placeholder="Category Remarks" style="opacity: .85;" class="form-control" id="CatRemarksTb" runat="server" />
                    </div>
                  
                <label id="ErrMsg" runat="server" class="text-light"></label><br />
                <asp:Button Text="  Edit  " Class="btn btn-success" runat="server" ID="EditBtn" OnClick="EditBtn_Click" />
                <asp:Button Text="  Submit  " Class="btn btn-success" runat="server" ID="SubmitBtn" OnClick="SubmitBtn_Click"/>
                <asp:Button Text="  Delete  " Class="btn btn-success" runat="server" ID="DeleteBtn" OnClick="DeleteBtn_Click"/>
                </div>
           
           
            <div class="col-md-8">
                <asp:GridView runat="server" class="table table-hover p-3 my-3 bg-dark text-white"  Style="border: 3px solid black; opacity: 0.95; text-align: center" BackColor="#CCFFCC" HeaderStyle-ForeColor="#009933" ID="CategoryGV" OnSelectedIndexChanged="CategoryGV_SelectedIndexChanged1">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                    </Columns>


                </asp:GridView>

            </div>
           
        </div>

    </div>
</asp:Content>
