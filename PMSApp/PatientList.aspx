<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="PatientList.aspx.cs" Inherits="PMSApp.PatientList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="leftContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="middleContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="rightContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="fullMiddleContentPlaceHolder" runat="server">
    
    <div class="panel panel-success">
        <div class="panel-heading">
            <div class="panel-title"><span class="glyphicon glyphicon-list"></span> Patient List</div>
        </div>

        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Serial No</th>
                            <th>Patient Name</th>
                            <th>Address</th>
                            <th>Email</th>
                            <th>Contact Number</th>
                            <th>Age</th>
                        </tr>
                    </thead>

                    <asp:Repeater ID="showPatientList" runat="server">
                        <ItemTemplate>

                            <tbody>
                                <tr>
                                    <td><%# Eval("SerialNo") %></td>
                                    <td><%# Eval("PatientName") %></td>
                                    <td><%# Eval("Address") %></td>
                                    <td><%# Eval("Email") %></td>
                                    <td><%# Eval("ContactNo") %></td>
                                    <td><%# Eval("Age") %></td>
                                </tr>
                            </tbody>

                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
        </div>
    </div>

</asp:Content>
