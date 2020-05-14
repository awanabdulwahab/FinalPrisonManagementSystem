<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="DeletePrisoner.aspx.cs" Inherits="PrisonManagementSystem.DeletePrisoner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="form-horizontal">
                <h2>Delete Prisoner</h2>
                <hr />
                <h4>Please enter your ID, We will delete the account of that Prisoner.</h4>
                <div class="form-group">
                    <asp:Label ID="lblID" runat="server" CssClass="col-md-2 control-label" Text="Enter Your ID"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txt_id" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="text-danger" runat="server" ErrorMessage="Please enter your ID !" ControlToValidate="txt_id"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btn_delete" runat="server" CssClass="btn btn-default" Text="Delete" OnClick="btn_delete_Click" />
                        <asp:Label ID="lblPassRec" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
                </div>
            </div>
     </div>
    <h1>Prisoner</h1>
        <hr />

         <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">All Prisoners</div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PrisonerID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%">
        <Columns>
            <asp:BoundField DataField="PrisonerID" HeaderText="Prisoner ID" ReadOnly="True" SortExpression="PrisonerID" />
            <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
            <asp:BoundField DataField="fatherName" HeaderText="Father Name" SortExpression="fatherName" />
            <asp:BoundField DataField="Crime" HeaderText="Crime" SortExpression="Crime" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PrisonManagementSystemConnectionString %>" SelectCommand="SELECT * FROM [PrisonerTable]"></asp:SqlDataSource>
             </div>
</asp:Content>
