<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ViewAllJailor.aspx.cs" Inherits="PrisonManagementSystem.ViewAllJailor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1>View ALL Jailors</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">All Jailors</div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="jailorID" DataSourceID="SqlDataSource1" BackColor="#FFFFCC" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="None" HorizontalAlign="Center" PageSize="5" Width="100%">
                <Columns>
                    <asp:BoundField DataField="jailorID" HeaderText="Jailor ID" ReadOnly="True" SortExpression="jailorID" />
                    <asp:BoundField DataField="firstName" HeaderText="Name" SortExpression="firstName" />
                    <asp:BoundField DataField="fathername" HeaderText="Father Name" SortExpression="fathername" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                    <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="Black" BorderColor="White" BorderStyle="None" Font-Bold="True" ForeColor="#FFFFCC" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PrisonManagementSystemConnectionString %>" SelectCommand="SELECT * FROM [JailorTable]"></asp:SqlDataSource>
        </div>
</asp:Content>
