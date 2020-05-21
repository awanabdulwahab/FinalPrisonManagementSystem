<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AssginDutytoGaurd.aspx.cs" Inherits="PrisonManagementSystem.AssginDutytoGaurd" %>
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
    <div>
    <h1>Gaurds</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">All Gaurds</div>
            <asp:GridView ID="grid_Gaurd" runat="server" AutoGenerateColumns="False" DataKeyNames="gaurdID" DataSourceID="SqlDataSource2" CssClass="Grid" CellPadding="4" Width="100%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="gaurdID" HeaderText="Gaurd ID" ReadOnly="True" SortExpression="gaurdID" />
                    <asp:BoundField DataField="jailName" HeaderText="Jail Name" SortExpression="jailName" />
                    <asp:BoundField DataField="startDate" HeaderText="Start Date" SortExpression="startDate" />
                    <asp:BoundField DataField="endDate" HeaderText="End Date" SortExpression="endDate" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PrisonManagementSystemConnectionString %>" SelectCommand="SELECT * FROM [AssignDutyToGaurd]"></asp:SqlDataSource>
            
        </div>
    </div>
</asp:Content>
