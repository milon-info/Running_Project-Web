<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="AddAppointment.aspx.cs" Inherits="PMSApp.AddAppointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="leftContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="middleContentPlaceHolder" runat="server">
    
    <div class="panel panel-success">
        <div class="panel-heading">
            <div class="panel-title"><span class="glyphicon glyphicon-book"></span> Add Appointment</div>
        </div>
        <div class="panel-body">
            
            <form runat="server">
                <strong runat="server" id="message"></strong>

                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Appointment Date" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        
                        <div class="form-group">
                            <div class="controls">
                                <div class="input-group">
                                    <asp:TextBox ID="appointmentDateTextBox" runat="server" class="date-picker form-control"></asp:TextBox>
                                    <label for="date-picker" class="input-group-addon btn">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </label>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Appointment Serial" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="appointmentSerialTextBox" runat="server" class="form-control"></asp:TextBox><br />
                    </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Patient Name" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:DropDownList ID="patientNameDropDownList" runat="server" class="form-control"></asp:DropDownList><br />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Doctor Name" class="col-sm-4 control-label"></asp:Label>
                    <div class="col-sm-8">
                        <asp:DropDownList ID="doctorNameDropDownList" runat="server" class="form-control"></asp:DropDownList><br />
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="addAppointmentButton" runat="server" Text="Add Appointment" class="btn btn-success btn pull-right" OnClick="addAppointmentButton_Click" />
                    </div>
                </div>
            </form>
 
        </div>
    </div>
    
    
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>

    <script type="text/javascript">

        $(".date-picker").datepicker();

        $(".date-picker").on("change", function () {
            var id = $(this).attr("id");
            var val = $("label[for='" + id + "']").text();
            $("#msg").text(val + " changed");
        });


    </script>


    <style type="text/css">
        @import url('//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css');

        .date-form {
            margin: 10px;
        }

        label.control-label span {
            cursor: pointer;
        }
    </style>

    

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="rightContentPlaceHolder" runat="server">
</asp:Content>
