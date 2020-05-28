 <%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddGaurd.aspx.cs" Inherits="PrisonManagementSystem.AddGaurd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add New Gaurd</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Gaurd ID"></asp:Label>
                <div class="col-md-7">
                    <asp:TextBox ID="txtGaurdId" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtGaurdId"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="First Name"></asp:Label>
                <div class="col-md-7">
                    <asp:TextBox ID="txtFirstName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Father Name"></asp:Label>
                <div class="col-md-7">
                    <asp:TextBox ID="txtFatherName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtFatherName"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Email"></asp:Label>
                <div class="col-md-7">
                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="lablePassword" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
                <div class="col-md-7">
                    <asp:TextBox ID="txtpassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="text-danger" runat="server" ErrorMessage="Please Select One Item " ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Address"></asp:Label>
                <div class="col-md-7">
                    <asp:TextBox ID="txtAddress" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Age"></asp:Label>
                <div class="col-md-7">
                    <asp:TextBox ID="txt_age" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txt_age"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btnAdd_Click" />
                </div>
            </div>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
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
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PrisonManagementSystemConnectionString %>" SelectCommand="SELECT * FROM [gaurdTable]"></asp:SqlDataSource>
            
        </div>
    </div>
</asp:Content>
