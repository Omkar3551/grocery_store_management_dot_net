<%@ Page Title="Billing"  Language="C#" MasterPageFile="~/View/Seller/SellerMaster.Master" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="WebApplication1.View.Seller.Billing" %>
<asp:Content ID="Content1"  ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function PrintPanel() { 
        var PGrid = document.getElementById('<%=BillGV.ClientID %>')
        PGrid.border = 0;
        var PWin = window.open('', 'PrintGrid', 'left=100,top=100,width=1024,tollbar=0,scrollbars=1,status=0,resizable=1');
        PWin.document.write(PGrid.outerHTML);
        PWin.document.close();
        PWin.focus();
        PWin.print();
        Pwin.close();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server" >
     <div class="container-fluid" background-color="warning" >
         <div class="row">
             <div class="col-md-5">
                 <div class="row">
                     <div class="col">
                         <div class="mb-3">
                          <br /> <label for="PNameTb" class="form-label text-success">Product Name</label>
                           <input type="text" style="background-color: #000;  color: #fff; opacity: .5;" class="form-control" id="PNameTb" runat="server" />
                         </div>
                         
                         <div class="mb-3">
                           <label for="PNameTb" class="form-label text-success">Product Price</label>
                           <input type="text" style="background-color: #000;  color: #fff; opacity: .5;" class="form-control" id="PrPriceTb" runat="server"  />
                         </div>
                         
                         <div class="mb-3">
                           <label for="PNameTb" class="form-label text-success">Product Qty</label>
                           <input type="text" style="background-color: #000;  color: #fff; opacity: .5;" class="form-control" id="PrQtyTb" runat="server" />
                         </div>
                     </div>
                     <div class="col">
                         <div class="row"></div>
                       <!--<br /><br /><br /><br /><img src="../../Asset/Images/cart.gif "  width="143px"  />-->
                 <br /><br /><br /><br /><br /><br /><br /><br /><label id="ErrMsg" runat="server" class="text-danger"></label><br />
                   <asp:Button Text="  Add To Bill  " Class="btn btn-warning" runat="server" ID="AddToBill" OnClick="AddToBill_Click" />
                    <asp:Button Text="  Reset  " Class="btn btn-danger" runat="server" ID="ResetBtn" />
              </div>
                 </div>
              

             <div class="row">
                 <div class="col">
                     <br /><br />
                     <asp:GridView runat="server" class="table table-hover p-3 my-3 bg-dark text-white" Style="border: 3px solid black; opacity: 0.95; text-align: center" ID="ProductGV" BackColor="#CCFFCC" HeaderStyle-ForeColor="#009933" OnSelectedIndexChanged="ProductGV_SelectedIndexChanged" > 
                           <Columns>
                        <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                    </Columns>
                     </asp:GridView>
                      <!--<br /><br /><img src="../../Asset/Images/RunnningCart.gif"  /> -->
                 </div>
             </div>
          </div>
    <div class="col-1">
    </div>
        <div class="col-md-6">
            <div class="row">
                     

                     </div>
                     <div class="col">
                          <h1 class="text-success text-sm-center" >Client Billing</h1>
                     </div>
                  
                     <asp:GridView  BorderStyle="Double" ID="BillGV" runat="server" class="table table-hover p-3 my-3 bg-dark text-white"  Style="border: 3px solid black; opacity: 0.95; text-align: center" BackColor="#CCFFCC" HeaderStyle-ForeColor="#009933" >
                     </asp:GridView>
                        
                
                 <div class="row" >
                     <div class="col"></div>
                     <div class="col"></div>
                     <div class="col"></div>
                     <div class="col"><h3 id="GrdTotTb" class="text-danger" runat="server"></h3></div>
                     <div class="col d-grid">
                         <asp:Button Text="  Print Bill  " Class="btn btn-warning btn-block text-white"  ID="PrintBtn" OnClientClick="PrintPanel()" runat="server"  OnClick="Button1_Click" />
                        
                        </div>
                     </div>
                 </div>
              </div>  
         </div>
     


</asp:Content>
