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
    <div>
    <h1>Prisoner</h1>
        <hr />

         <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">All Prisoners</div>

         </div>
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="prisonerID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%">
        <Columns>
            <asp:BoundField DataField="prisonerID" HeaderText="Prisoner ID" ReadOnly="True" SortExpression="prisonerID" />
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
            <asp:BoundField DataField="jailName" HeaderText="Jail Name" SortExpression="jailName" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PrisonManagementSystemConnectionString %>" SelectCommand="SELECT * FROM [AssignJailToPrisoner]"></asp:SqlDataSource>
</asp:Content>
