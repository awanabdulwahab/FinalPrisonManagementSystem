﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="PrisonManagementSystem.HtmlPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Home</title>
   <script src="js/jquery-3.2.1.min.js"></script>
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
                            <li class="active"><a href="HomePage.aspx">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="Contact.aspx">Contact</a></li>
                            <li id="btnSignin" runat="server"><a href="SignIn.aspx">Sign In</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <!--- Carousel -->

            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="Images/PrisonImage2.jpg" alt="HeaderImage"/>
                        <div class="carousel-caption">
                            <h3>Prison Management System</h3>
                            <p><a class="btn btn-lg btn-primary" href="SignUp.aspx" role="button">Join Now</a></p>
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <!--- Carousel -->

        </div>
        <br />
        <br />
        <!--- Middle Contents -->
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/PrisonImage1.jpg" alt="thumb01" width="140" height="140" />
                    <h2>Jailors</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu nunc eu felis mollis suscipit. Vivamus at turpis nisi. Nam a metus ac velit malesuada accumsan vel ut mauris. Proin eleifend orci tempor, faucibus felis sagittis, auctor ante. Fusce quis pellentesque metus, eu dictum est. Quisque finibus urna ac metus placerat, id porttitor ligula luctus. Nullam tincidunt, lorem at tincidunt dignissim, purus nunc tincidunt enim, vitae aliquam ante orci efficitur leo. Vivamus ac pretium libero. Quisque venenatis leo vel nibh pretium malesuada. Phasellus aliquam nunc vel e</p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/PrisonImage2.jpg" alt="thumb02" width="140" height="140" />
                    <h2>Gaurds</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu nunc eu felis mollis suscipit. Vivamus at turpis nisi. Nam a metus ac velit malesuada accumsan vel ut mauris. Proin eleifend orci tempor, faucibus felis sagittis, auctor ante. Fusce quis pellentesque metus, eu dictum est. Quisque finibus urna ac metus placerat, id porttitor ligula luctus. Nullam tincidunt, lorem at tincidunt dignissim, purus nunc tincidunt enim, vitae aliquam ante orci efficitur leo. Vivamus ac pretium libero. Quisque venenatis leo vel nibh pretium malesuada. Phasellus aliquam nunc vel e</p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/PrisonImage3.jpg" alt="thumb03" width="140" height="140" />
                    <h2>Prisoners</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu nunc eu felis mollis suscipit. Vivamus at turpis nisi. Nam a metus ac velit malesuada accumsan vel ut mauris. Proin eleifend orci tempor, faucibus felis sagittis, auctor ante. Fusce quis pellentesque metus, eu dictum est. Quisque finibus urna ac metus placerat, id porttitor ligula luctus. Nullam tincidunt, lorem at tincidunt dignissim, purus nunc tincidunt enim, vitae aliquam ante orci efficitur leo. Vivamus ac pretium libero. Quisque venenatis leo vel nibh pretium malesuada. Phasellus aliquam nunc vel e</p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
                </div>
            </div>
        </div>
        <!--- Middle Contents -->

        <!--- Footer  -->

        <hr />

        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2020 AbdulWahab &middot; <a href="HomePage.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="Contact.aspx">Contact</a> &middot; <a href="SignIn.aspx">SignIn</a>&middot; <a href="SignUp.aspx">SignUp</a></p>
            </div>
        </footer>

        <!--- Footer -->

    </form>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
