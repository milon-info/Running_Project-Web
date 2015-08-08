<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="AppointmentList.aspx.cs" Inherits="PMSApp.AppointmentLis" %>


<asp:Content ID="Content3" ContentPlaceHolderID="fullMiddleContentPlaceHolder" runat="server">
    
    <div class="panel panel-success">
        <div class="panel-heading">
            <div class="panel-title"><span class="glyphicon glyphicon-list"></span>Appointment List</div>
        </div>

        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Serial No</th>
                            <th>Appointment Date</th>
                            <th>Appointment Serial</th>
                            <th>Patient Name</th>
                            <th>Contact Number</th>
                            <th>Doctor Name</th>
                        </tr>
                    </thead>

                    <asp:Repeater ID="showAppointmentList" runat="server">
                        <ItemTemplate>

                            <tbody>
                                <tr>
                                    <td><%# Eval("SerialNo") %></td>
                                    <td><%# Eval("AppointmentDate") %></td>
                                    <td><%# Eval("AppointmentSerial") %></td>
                                    <td><%# Eval("PatientName") %></td>
                                    <td><%# Eval("PatientContactNo") %></td>
                                    <td><%# Eval("DoctorName") %></td>
                                </tr>
                            </tbody>

                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
        </div>
    </div>

</asp:Content>

