﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AssginDutytoGaurd.aspx.cs" Inherits="PrisonManagementSystem.AssginDutytoGaurd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="form-horizontal">
                <h2>Assign Duty To Gaurd</h2>
                <hr />
                <h4>Please enter ID of Gaurd, We wil assign Duty to that Gaurd </h4>
                <div class="form-group">
                    <asp:Label ID="lblID" runat="server" CssClass="col-md-2 control-label" Text="Enter GaurdID"></asp:Label>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Please enter your ID !" ControlToValidate="txtJail"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Start Date"></asp:Label>
                    <div class="col-md-3">
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
              
                    </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="End Date"></asp:Label>
                    <div class="col-md-3">
                        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                        
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
