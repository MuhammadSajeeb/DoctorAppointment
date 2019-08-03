<%@ Page Title="Add Doctor" Language="C#" MasterPageFile="~/Admin/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AddDoctor.aspx.cs" Inherits="DoctorAppointment.WebApp.Admin.AddDoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h2>Add Doctor</h2>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <div class="col-md-10">
                <div class="messagealert" id="alert_container">
                </div>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" ID="lblDoctorId" AssociatedControlID="txtDoctorId" CssClass="col-md-2 control-label">Doctor Id</asp:Label>
            <div class="col-md-2">
                <asp:TextBox runat="server" ID="txtDoctorId" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDoctorId"
                    CssClass="text-danger" ErrorMessage="The Id field is required." />
            </div>
            <asp:Label runat="server" ID="lblName" AssociatedControlID="txtName" CssClass="col-md-2 control-label">Name</asp:Label>
            <div class="col-md-2">
                <asp:TextBox runat="server" ID="txtName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
                    CssClass="text-danger" ErrorMessage="The Name field is required." />
            </div>
            <asp:Label runat="server" ID="lblEmail" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-2">
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                    CssClass="text-danger" ErrorMessage="The Email field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" ID="lblDetails" AssociatedControlID="txtDetails" CssClass="col-md-2 control-label">Details</asp:Label>
            <div class="col-md-2">
                <asp:TextBox runat="server" ID="txtDetails" TextMode="Multiline" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDetails"
                    CssClass="text-danger" ErrorMessage="The Details field is required." />
            </div>
            <asp:Label runat="server" CssClass="col-md-2 control-label" Font-Bold="true" Text="Departments" Font-Size="Medium"></asp:Label>
            <div class="col-md-2">
                <asp:DropDownList ID="DepartmentDropDownList" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="DepartmentDropDownList"
                    CssClass="text-danger" ErrorMessage="The Department field is required." />
            </div>
            <asp:Label runat="server" CssClass="col-md-2 control-label" Font-Bold="true" Text="Weekly Holiday" Font-Size="Medium"></asp:Label>
            <div class="col-md-2">
                <asp:DropDownList ID="HolidayDropDownList" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="HolidayDropDownList"
                    CssClass="text-danger" ErrorMessage="The Holiday field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" ID="lblFees" AssociatedControlID="txtFees" CssClass="col-md-2 control-label">Fess</asp:Label>
            <div class="col-md-2">
                <asp:TextBox runat="server" ID="txtFees" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFees"
                    CssClass="text-danger" ErrorMessage="The Fees field is required." />
            </div>
            <asp:Label runat="server" ID="lblStartTime" AssociatedControlID="txtStartTime" CssClass="col-md-2 control-label">Start Time</asp:Label>
            <div class="col-md-2">
                <asp:TextBox runat="server" ID="txtStartTime" CssClass="form-control" TextMode="Time" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtStartTime"
                    CssClass="text-danger" ErrorMessage="The Start Time field is required." />
            </div>
            <asp:Label runat="server" ID="lblEndTime" AssociatedControlID="txtEndTime" CssClass="col-md-2 control-label">End Time</asp:Label>
            <div class="col-md-2">
                <asp:TextBox runat="server" ID="txtEndTime" CssClass="form-control" TextMode="Time" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtStartTime"
                    CssClass="text-danger" ErrorMessage="The End Time field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" ID="lblImageFileUpload" CssClass="col-md-2 control-label" Font-Bold="true" Font-Size="Medium" Text="Upload"></asp:Label>
            <div class="col-md-2">
                <asp:FileUpload ID="ImageFileUpload" runat="server" CssClass="form-control" onchange="ImagePreview(this);" />
                <asp:RequiredFieldValidator runat="server" ID="RfvImageUpload" ControlToValidate="ImageFileUpload"
                    CssClass="text-danger" ErrorMessage="The Upload field is required." />
            </div>
            <asp:Label runat="server" ID="lblShow" CssClass="col-md-2 control-label" Font-Bold="true" Font-Size="Medium" Text="Show"></asp:Label>
            <div class="col-md-2">
                <asp:Image ID="ShowImage" runat="server" CssClass="form-control" Height="50" Width="100px" />
            </div>
            <div class="col-md-offset-0 col-md-2">
                <asp:Button runat="server" ID="SaveButton" Text="Save" CssClass="btn btn-info" Width="100px" />
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=ShowImage.ClientID%>').prop('src', e.target.result)
                        .width(100)
                        .height(100);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <style type="text/css">
        .messagealert {
            width: 358px;
            margin-left: 120px;
        }
    </style>
    <script type="text/javascript">
        function ShowMessage(message, messagetype) {
            var cssclass;
            switch (messagetype) {
                case 'Success':
                    cssclass = 'alert-success'
                    break;
                case 'Failed':
                    cssclass = 'alert-danger'
                    break;
                case 'Error':
                    cssclass = 'alert-danger'
                    break;
                case 'Warning':
                    cssclass = 'alert-warning'
                    break;
                default:
                    cssclass = 'alert-info'
            }
            $('#alert_container').append('<div id="alert_div" style="margin: 0 0.5%; -webkit-box-shadow: 3px 4px 6px #999;" class="alert fade in ' + cssclass + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>' + messagetype + '!</strong> <span>' + message + '</span></div>');
        }
    </script>
</asp:Content>
