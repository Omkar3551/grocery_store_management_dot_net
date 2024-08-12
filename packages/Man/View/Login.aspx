<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="icon" href="../Asset/Images/Icon.png" />
    <link rel="stylesheet" href="../Asset/Lib/Bootstrap/css/bootstrap.min.css"/>
</head>
<body style="background-image:url('../Asset/Images/bG.jpg'); background-repeat:no-repeat; background-attachment:fixed;  background-size: cover; ">
    <form runat="server">
    <div class="container-fluid" >
        <div class="row" style="height:150px"></div>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-4">
                <!--<img src="../Asset/Images/Grocery.png" class="img-fluid" />-->
            </div>
            <div class="col-md-4">
              
                <h1 class="text" style="text-align:center">Sign Up</h1>
                
                    <div class="mb-3">
                        <label for="EmailId" class="form-label">Email address</label>
                        <input type="email" style="background-color: #000; color: #fff; opacity: .3;" class="form-control" id="EmailId" runat="server" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="UserPasswordTb" class="form-label" >Password</label>
                        <input type="password" style="background-color: #000; color: #fff; opacity: .3;" class="form-control" id="UserPasswordTb" runat="server" required="required" />
                    </div>
                    <div class="mb-3 form-group">
                       &nbsp&nbsp&nbsp&nbsp&nbsp <input type="radio" style="height:15px; width:15px; vertical-align: middle;" class="form-check-input" id="SellerRadio" name="Role" runat="server"/>
                        <label class="form-check-label" for="exampleCheck1">Seller&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
                        <input type="radio" style="height:15px; width:15px; vertical-align: middle;" class="form-check-input" id="AdminRadio" checked="true" name="Role" runat="server"/>
                        <label class="form-check-label" for="AdminRadio">Admin</label>
                    </div>
                     <div class="mb-3 d-grid">
                         <label id="InfoMsg" runat="server" class="text-danger"></label>
                        <asp:Button Text="  Login  " Class="btn btn-success btn-block" runat="server" ID="SaveBtn" OnClick="SaveBtn_Click" />
                       
                    </div>
                     
            </div>
           </form>

        </div>
    </div>

</body>
</html>
