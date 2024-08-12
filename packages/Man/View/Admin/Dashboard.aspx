<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/View/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApplication1.View.Admin.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
 <div class="container-fluid" style="background-image:url('../../Asset/Images/DashBG.jpeg'); background-repeat:no-repeat; background-attachment:fixed;  background-size: cover; ">
     <div class="container-fluid">
     <div class="row" style="height:80px"></div>
     <div class="col-md-3"></div>
   
     <div class="row">
         <div class="col-1"></div>
         <div class="col-10">

             <div class="row" >
                   <class="rounded" /><h1>Grocery Dashboard</h1>
                     </div>
             <br /><br /><div class="row">
                 
                 <div class="col-md-3 bg-dark rounded " style="opacity:0.95">
                     <br /><div class="row">
                          <div class="col-md-2"><img src="../../Asset/Images/ProductsFavi.png" /></div>
                     <div class="col-md-9">
                         <h3 class="text-white">Products</h3>
                         <h2 class="text-white" runat="server" id="ProNumTb">Num</h2>
                         <br />
                     </div>
                     </div>
                 </div>
                 <div class="col-md-1">

                 </div>
                 <div class="col-md-3 bg-dark rounded" style="opacity:0.95">
                     <br /> <div class="row">
                          <div class="col-md-2"><img src="../../Asset/Images/Category-fav.png" /></div>
                     <div class="col-md-10">
                         <h3 class="text-white">Categories</h3>
                         <h2 class="text-white" runat="server" id="CatNumTb">Num</h2>
                     </div>
                     </div>
                 </div>
                 <div class="col-md-1">

                 </div>
                  <div class="col-md-3 bg-dark rounded" style="opacity:0.95">
                    <br />  <div class="row">
                          <div class="col-md-2"><img src="../../Asset/Images/MoneyGold.png"/></div>
                     <div class="col-md-10">
                         <h3 class="text-white">Finance</h3>
                         <h2 class="text-danger" id="FinanceTb" runat="server">Num</h2>
                     </div>
                     </div>
                 </div>
             </div>
         </div>
         <div class="col-1"></div>
     </div>
     <div class="row" style="height:80px"></div>
     <div class="row">
         <div class="col-1"></div>
         <div class="col-10">
             <div class="row">
                 <div class="col-md-3 bg-dark rounded" style="opacity:0.95">
                    <br />  <div class="row">
                          <div class="col-md-2"><img src="../../Asset/Images/Seller-fav.png" /></div>
                     <div class="col-md-9">
                          <div class="mb-3">
                       
                         <h3 class="text-white">Seller Name</h3>
                         <h2 class="text-danger" id="AmountCatTb" runat="server"></h2>
                    </div>
                                                 <asp:DropDownList id="SellerCb" class="form-control" runat="server" AppendDataBoundItems="true" AutoPostBack="true"  OnSelectedIndexChanged="SellerCb_SelectedIndexChanged"></asp:DropDownList>
                         <br />
                     </div>
                     </div>
                 </div>
                 <div class="col-md-1">

                 </div>
                 <div class="col-md-3 bg-dark rounded" style="opacity:0.95">
                    <br />  <div class="row">
                          <div class="col-md-2"><img src="../../Asset/Images/Total-Sales.png" /></div>
                     <div class="col-md-10" >
                         <h3 class="text-white">Total Sales</h3>
                         <h2 class="text-danger" id="TotalTb"  runat="server">Num</h2>
                     </div>
                     </div>
                 </div>
                 <div class="col-md-1">

                 </div>
                  <div class="col-md-3 bg-dark rounded" style="opacity:0.95">
                    <br />  <div class="row">
                          <div class="col-md-2"><img src="../../Asset/Images/Selllers-fav.png"/></div>
                     <div class="col-md-10">
                         <h3 class="text-white">Sellers</h3>
                         <h2 class="text-white" id="SellNumTb" runat="server">Num</h2>
                     </div>
                     </div>
                 </div>
       
             </div>
         </div>

         <div class="col-1">
             <div class="container">
                 <div class="row">
                     <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                 </div>

             </div>
     </div>
</div>
    
</div>


</asp:Content>
