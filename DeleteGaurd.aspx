<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="DeleteGaurd.aspx.cs" Inherits="PrisonManagementSystem.DeleteGaurd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="form-horizontal">
                <h2>Delete Gaurd</h2>
                <hr />
                <h4>Please enter your email address, We will delete the account of that Gaurd.</h4>
                <div class="form-group">
                    <asp:Label ID="lblEmail" runat="server" CssClass="col-md-2 control-label" Text="Enter Your ID"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txt_id" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="text-danger" runat="server" ErrorMessage="Please enter your ID !" ControlToValidate="txt_id"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btn_delete" runat="server" CssClass="btn btn-default" Text="Delete" OnClick="btn_delete_Click" />
                        <asp:Label ID="lblPassRec" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
         <h1>Gaurds</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">All Gaurds</div>
            <asp:GridView ID="grid_Gaurd" runat="server" AutoGenerateColumns="False" DataKeyNames="gaurdID" DataSourceID="SqlDataSource2" CssClass="Grid" CellPadding="4" Width="100%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="gaurdID" HeaderText="Gaurd ID" ReadOnly="True" SortExpression="gaurdID" />
                    <asp:BoundField DataField="gaurdFirstName" HeaderText="First Name" SortExpression="gaurdFirstName" />
                    <asp:BoundField DataField="gaurdFatherName" HeaderText="Father Name" SortExpression="gaurdFatherName" />
                    <asp:BoundField DataField="gaurdEmail" HeaderText="Email" SortExpression="gaurdEmail" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="gaurdAddress" HeaderText="Address" SortExpression="gaurdAddress" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" VerticalAlign="Middle" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PrisonManagementSystemConnectionString %>" SelectCommand="SELECT * FROM [gaurdTable]"></asp:SqlDataSource>
            
        </div>
        </div>
</asp:Content>
