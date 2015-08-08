<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="MedicineList.aspx.cs" Inherits="PMSApp.MedicineList" %>

<asp:Content ID="leftContent" ContentPlaceHolderID="leftContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="middleContent" ContentPlaceHolderID="middleContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="fullContent" ContentPlaceHolderID="fullMiddleContentPlaceHolder" runat="server">

    <div class="panel panel-success">
        <div class="panel-heading">
            <div class="panel-title"><span class="glyphicon glyphicon-list"></span> Medicine List</div>
        </div>

        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Serial No</th>
                            <th>Medicine Code</th>
                            <th>Medicine Name</th>
                            <th>Description</th>
                            <th>Category Name</th>
                            <th>Company Name</th>
                            <th>Price</th>
                        </tr>
                    </thead>

                    <asp:Repeater ID="showMedicineList" runat="server">
                        <ItemTemplate>

                            <tbody>
                                <tr>
                                    <td><%# Eval("SerialNo") %></td>
                                    <td><%# Eval("MedicineCode") %></td>
                                    <td><%# Eval("MedicineName") %></td>
                                    <td><%# Eval("Description") %></td>
                                    <td><%# Eval("CategoryName") %></td>
                                    <td><%# Eval("CompanyName") %></td>
                                    <td><%# Eval("Price") %></td>
                                </tr>
                            </tbody>

                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
        </div>
    </div>

</asp:Content>

<asp:Content ID="rightContent" ContentPlaceHolderID="rightContentPlaceHolder" runat="server">
</asp:Content>

