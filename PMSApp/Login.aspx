<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PMSApp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pharmacy Management System</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />

</head>
<body style="background: url(images/login-bg.jpg) repeat;">

    <div class="container">
        <div class="row login-panel">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">

                <div class="panel panel-primary" style="background: #CCC; opacity:0.8; border: 1px solid #CCC">
                    <div class="panel-heading">
                        <h3 class="panel-title"><b>Pharmacy Management System</b></h3>

                    </div>
                    
                    <div class="panel-body">

                        <form class="form-horizontal" runat="server">
                            <strong runat="server" id="message" ></strong>

                            <div class="form-group">
                                <div class="col-sm-1"></div>
                                <div class="col-sm-10">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>

                                        <asp:TextBox ID="loginUserNameTextBox" runat="server" class="form-control"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-sm-1"></div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-1"></div>
                                <div class="col-sm-10">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>

                                        <asp:TextBox ID="loginPasswordTextBox" type="password" runat="server" class="form-control"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                <div class="col-sm-1"></div>
                            </div>

                            <div class="form-group">

                                <div class="col-sm-1"></div>
                                <div class="col-sm-10">

                                    <asp:Button ID="loginButton" runat="server" Text="Login" class="btn btn-primary btn pull-right" OnClick="loginButton_Click" />


                                </div>
                                <div class="col-sm-1"></div>
                            </div>
                        </form>

                    </div>
                    <%--<div class="panel-footer">Login Form</div>--%>
                </div>

            </div>
            <div class="col-lg-4"></div>
        </div>
    </div>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
