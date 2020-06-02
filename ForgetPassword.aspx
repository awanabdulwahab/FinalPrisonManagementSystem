<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="PrisonManagementSystem.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password !</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="HomePage.aspx"><span>
                            <img alt="Logo" src="images/Logo.png" height="30" /></span>Prison Management System</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="HomePage.aspx">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="Contact.aspx">Contact</a></li>
                            <li><a href="SignIn.aspx">Sign In</a></li>
                            
                        </ul>
                    </div>
                </div>
            </div>
    </div>

        <div class="container">
            <div class="form-horizontal">
                <h2>Recover Password</h2>
                <hr />
                <h4>Please enter your CNIC, We will send you the instrutions to reset your password.</h4>
                <div class="form-group">
                    <asp:Label ID="lblCNIC" runat="server" CssClass="col-md-2 control-label" Text="Your CNIC"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txt_CNIC" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="text-danger" runat="server" ErrorMessage="Please enter your CNIC !" ControlToValidate="txt_CNIC"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnSend" runat="server" CssClass="btn btn-default" Text="Send" OnClick="btPassRec_Click" /><br /><br />
                        <asp:Label ID="Label1" runat="server" ></asp:Label>
                        <asp:Label ID="lblPassRec" runat="server" CssClass ="text-danger"></asp:Label>
                    </div>
                </div>
            </div>
        </div>

    </form>
    <!--- Footer  -->

    <hr />

    <footer>
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy; 2020 AbdulWahab &middot; <a href="HomePage.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="Contact.aspx">Contact</a> &middot; <a href="Login.aspx">SignIn</a>&middot; <a href="SignUp.aspx">SignUp</a></p>
        </div>
    </footer>

    <!--- Footer -->


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
