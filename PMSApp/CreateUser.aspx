<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="PMSApp.CreateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="leftContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="middleContentPlaceHolder" runat="server">
    
    <div class="panel panel-success">
        <div class="panel-heading">
            <div class="panel-title"><span class="glyphicon glyphicon-user"></span> Create User</div>
        </div>
        <div class="panel-body">
            
            <form runat="server">
                <strong runat="server" id="message"></strong>

                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Full Name" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="fullNameTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Email Address" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="emailAddressTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Contact Number" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="contactNumberTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="User Name" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="userNameTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Password" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="passwordTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="addUserButton" runat="server" Text="Add User" class="btn btn-success btn pull-right" OnClick="addUserButton_Click" />
                    </div>
                </div>
            </form>
 
        </div>
    </div>
    

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="rightContentPlaceHolder" runat="server">
</asp:Content>
