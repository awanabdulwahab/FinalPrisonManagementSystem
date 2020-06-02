<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventLog.aspx.cs" Inherits="PrisonManagementSystem.EvnetLog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Event Log Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Event Log Name"></asp:Label>
            <asp:TextBox ID="txtLogName" runat="server"></asp:TextBox><br /> 
            <asp:Label ID="Label2" runat="server" Text="Event Log Source"></asp:Label>
            <asp:TextBox ID="txtLogSoucre" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnEventLog" runat="server" Text="Create Event Log and Event Source" OnClick="btnEventLog_Click" />
            <asp:Label ID="lblPrompt" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
