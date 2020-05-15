<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AssignJailToPrisoner.aspx.cs" Inherits="PrisonManagementSystem.AssignJailToPrisoner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="form-horizontal">
                <h2>Assign Prison To Prisoner</h2>
                <hr />
                <h4>Please enter ID of Jailor, We wil assign jail to jailor </h4>
                <div class="form-group">
                    <asp:Label ID="lblID" runat="server" CssClass="col-md-2 control-label" Text="Enter PrisonerID"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txt_id" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="text-danger" runat="server" ErrorMessage="Please enter your ID !" ControlToValidate="txt_id"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Please Select a Jail"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="txtJail" runat="server" CssClass="form-control" Width="100%">
                            <asp:ListItem>Lahore</asp:ListItem>
                            <asp:ListItem>Islamabad</asp:ListItem>
                            <asp:ListItem>Karachi</asp:ListItem>
                            <asp:ListItem>Peshawar</asp:ListItem>
                            <asp:ListItem>Quetta</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Please Select a Jail" ControlToValidate="txtJail"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btn_Assign" runat="server" CssClass="btn btn-default" Text="Assign" OnClick="btn_Assign_Click"  />
                        <asp:Label ID="lblPassRec" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
                </div>
            </div>
     </div>
</asp:Content>
