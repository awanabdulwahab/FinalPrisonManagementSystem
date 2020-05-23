<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ViewAllGaurds.aspx.cs" Inherits="PrisonManagementSystem.ViewAllGaruds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>View All Gaurds</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">All Gaurds</div>
            <asp:GridView ID="grid_Gaurd" runat="server" AutoGenerateColumns="False" DataKeyNames="gaurdID" DataSourceID="SqlDataSource2" CssClass="Grid" CellPadding="4" Width="100%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" ForeColor="Black" GridLines="None" HorizontalAlign="Justify">
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
</asp:Content>
