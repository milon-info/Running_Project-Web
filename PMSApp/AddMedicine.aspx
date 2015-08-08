<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="AddMedicine.aspx.cs" Inherits="PMSApp.AddMedicine" %>

<asp:Content ID="leftContent" ContentPlaceHolderID="leftContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="middleContent" ContentPlaceHolderID="middleContentPlaceHolder" runat="server">

    <div class="panel panel-success">
        <div class="panel-heading">
            <div class="panel-title"><span class="glyphicon glyphicon-tint"></span> Add Medicine</div>
        </div>
        <div class="panel-body">
            
            <form runat="server">
                <strong runat="server" id="message"></strong>

                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Medicine Code" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="medicineCodeTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Medicine Name" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="medicineNameTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Description" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="descriptionTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Category Name" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:DropDownList ID="categoryNameDropDownList" runat="server" class="form-control"></asp:DropDownList><br />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Company Name" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:DropDownList ID="companyNameDropDownList" runat="server" class="form-control"></asp:DropDownList><br />
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Price" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="priceTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>
                

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="addMedicineButton" runat="server" Text="Add Medicine" class="btn btn-success btn pull-right" OnClick="addMedicineButton_Click"/>
                    </div>
                </div>
            </form>
 
        </div>
    </div>

</asp:Content>

<asp:Content ID="rightContent" ContentPlaceHolderID="rightContentPlaceHolder" runat="server">
</asp:Content>
