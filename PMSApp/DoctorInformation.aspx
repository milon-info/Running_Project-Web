<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="DoctorInformation.aspx.cs" Inherits="PMSApp.DoctorInformation" %>
<asp:Content ID="leftContent" ContentPlaceHolderID="leftContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="middleContent" ContentPlaceHolderID="middleContentPlaceHolder" runat="server">
</asp:Content>


<asp:Content ID="fullContent" ContentPlaceHolderID="fullMiddleContentPlaceHolder" runat="server">
    
     <div class="panel panel-success">
        <div class="panel-heading">
            <div class="panel-title"><span class="glyphicon glyphicon-list"></span> Doctor Information</div>
        </div>

        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Serial No</th>
                            <th>Doctor Code</th>
                            <th>Doctor Name</th>
                            <th>Doctor Degree</th>
                            <th>Specialist</th>
                            <th>Address</th>
                            <th>Email</th>
                            <th>Contact Number</th>
                        </tr>
                    </thead>

                    <asp:Repeater ID="showDoctorInformation" runat="server">
                        <ItemTemplate>

                            <tbody>
                                <tr>
                                    <td><%# Eval("SerialNo") %></td>
                                    <td><%# Eval("DoctorCode") %></td>
                                    <td><%# Eval("DoctorName") %></td>
                                    <td><%# Eval("DoctorDegree") %></td>
                                    <td><%# Eval("Specialist") %></td>
                                    <td><%# Eval("DoctorPosition") %></td>
                                    <td><%# Eval("Email") %></td>
                                    <td><%# Eval("ContactNumber") %></td>
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
