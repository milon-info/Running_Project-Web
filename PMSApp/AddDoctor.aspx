<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="AddDoctor.aspx.cs" Inherits="PMSApp.AddDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="leftContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="middleContentPlaceHolder" runat="server">
    
     <div class="panel panel-success">
        <div class="panel-heading">
            <div class="panel-title"><span class="glyphicon glyphicon-screenshot"></span> Add Doctor</div>
        </div>
        <div class="panel-body">
            
            <form runat="server">
                <strong runat="server" id="message"></strong>

                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Doctor Code" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="doctorCodeTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Doctor Name" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="doctorNameTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Doctor Degree" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="doctorDegreeTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Specialist" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="specialistTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Doctor Position" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="doctorPositionTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Email" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="emailTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>
                
                <div class="form-group">
                    <asp:Label ID="Label7" runat="server" Text="Contact Number" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="contactNumberTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>
                

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="addDoctorButton" runat="server" Text="Add Doctor" class="btn btn-success btn pull-right" OnClick="addDoctorButton_Click" />
                    </div>
                </div>
            </form>
 
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="rightContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="backgroundImageContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="fullMiddleContentPlaceHolder" runat="server">
</asp:Content>
