<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateJailor.aspx.cs" Inherits="PrisonManagementSystem.UpdateJailor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Update Jailor Information</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Jailor ID "></asp:Label>
                <div class="col-md-7">
                    <asp:TextBox ID="txtJailorId" CssClass="form-control" runat="server"></asp:TextBox><asp:Button ID="btnShow" runat="server" Text="Show information" CssClass="btn btn-default" OnClick="btnShow_Click"/>
                    <asp:RequiredFieldValidator ID="IDFieldValidator" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtJailorId"></asp:RequiredFieldValidator>
                     <asp:Label ID="lblError" runat="server"></asp:Label>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="First Name"></asp:Label>
                <div class="col-md-7">
                    <asp:TextBox ID="txtFirstName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Father Name"></asp:Label>
                <div class="col-md-7">
                    <asp:TextBox ID="txtFatherName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Email"></asp:Label>
                <div class="col-md-7">
                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Gender"></asp:Label>
                <div class="col-md-7">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" >
                        <asp:ListItem >Male</asp:ListItem>
                        <asp:ListItem >Female</asp:ListItem>
                        <asp:ListItem >Non Specific</asp:ListItem>
                    </asp:RadioButtonList>

                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Address"></asp:Label>
                <div class="col-md-7">
                    <asp:TextBox ID="txtAddress" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Age"></asp:Label>
                <div class="col-md-7">
                    <asp:TextBox ID="txt_age" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-default" OnClick="btnUpdate_Click"  />
                </div>
            </div>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>
      </div>
</asp:Content>
