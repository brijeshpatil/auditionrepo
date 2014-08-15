<%@ page language="C#" autoeventwireup="true" inherits="Visitor_auditionbuilder, App_Web_n3knofbl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head runat="server">
    <title>Audition Builder</title>
    <link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet'
        type='text/css'>
    <link rel="stylesheet" href="../styles/style.css" />
    <link rel="stylesheet" href="../styles/inner.css" />
    <link rel="stylesheet" href="../styles/layout.css" />
    <link rel="stylesheet" href="../styles/flexslider.css" />
    <link rel="stylesheet" href="../styles/color.css" />
    <link href="../styles/modal.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../styles/prettyPhoto.css" media="screen" />
    
    <script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>
    <!-- jQuery Superfish -->
    <script type="text/javascript" src="../js/hoverIntent.js"></script>
    <script type="text/javascript" src="../js/superfish.js"></script>
    <script type="text/javascript" src="../js/supersubs.js"></script>
    <!-- jQuery Dropdown Mobile -->
    <script type="text/javascript" src="../js/tinynav.min.js"></script>
    <!-- Custom Script -->
    <script type="text/javascript" src="../js/custom.js"></script>
    <!-- jQuery Flexslider -->
    <script type="text/javascript" src="../js/jquery.flexslider-min.js"></script>
    <script type="text/javascript">
        jQuery(window).load(function () {
            jQuery('.flexslider').flexslider({
                animation: "fade",
                animationDuration: 600,
                directionNav: false,
                controlNav: true
            });

        });
</script>
</head>
<body class="home">

    <form runat="server" id="form1">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div id="bodychild">
        <div id="outercontainer">
            <!-- HEADER -->
            <div id="outerheader">
                <div class="header-bglight">
                    <header id="top">
                    <div class="container">
                        <div class="row">
                           <div id="container-logomenu">
                                <span class="logo-light"></span>
                                <div id="logo" class="three columns">
                                    <a href="#"><img src="../images/logo.png" alt=""/></a>
                                </div>
  
                                <section id="navigation" class="nine columns">
                                    <nav id="nav-wrap">
                                        <ul id="topnav" class="sf-menu">
                                            <li class="current"><a href="auditionbuilder.aspx">Home</a></li>
                                            <li><a href="talent.aspx">Talent</a></li>
                                            <li><a href="help.aspx">Help</a></li>
                                            <li><a href="aboutus.aspx">About Us</a></li>
                                            
                                            <li><a href="contactus.aspx">Contact Us</a></li>
                                            <li><asp:HyperLink ID="login_pop" runat="server" NavigateUrl="#login_form">Login</asp:HyperLink></li>
                                        </ul>

                                    </nav>
                                </section>
                             </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                     <asp:HyperLink runat="server" NavigateUrl="#x" class="overlay" ID="login_form"></asp:HyperLink>
    <div class="popup">
        <table style="border:0px; color:Black; font-family:Arial; font-weight:bolder;" >
            <tr style="border-bottom:0px;">
                <td colspan="2" align="center" style="border-bottom:0px;">
                    <h1 style="font-weight: bold" >
                        Welcome Guest!</h1>
                </td>
                <td style="border-bottom:0px;">
                </td>
            </tr>
            <tr style="border-bottom:0px;">
                <td colspan="2" align="center" style="border-bottom:0px;">
                    <p >
                        Please enter your login and password here</p>
                </td>
                <td >
                </td>
            </tr>
            <tr style="border-bottom:0px;">
                <td style="border-bottom:0px;">
                    <asp:Label ID="Label1" runat="server" Text="Login Id"></asp:Label>
                </td>
                <td style="border-bottom:0px;">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr style="border-bottom:0px;">
                <td style="border-bottom:0px;">&nbsp;</td>
            </tr>
            <tr style="margin-top: 5px; border-bottom:0px;" >
                <td style="border-bottom:0px;">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td style="border-bottom:0px;">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr style="border-bottom:0px;">
                <td style="border-bottom:0px;">&nbsp;</td>
            </tr>
            <tr style="border-bottom:0px;">
                <td style="border-bottom:0px;">
                    <asp:Button ID="Button1" runat="server" Text="Log In"
                        onclick="Button1_Click"/>
                </td>
                
                <td style="border-bottom:0px;margin-left:10px;" align="center">
                    <asp:HyperLink ID="join_pop" runat="server" NavigateUrl="#join_form">Forgot Password?</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Signup.aspx">Not Registered?</asp:HyperLink>
                    <a class="close" href="#close"></a>
                </td>
            </tr>
        </table>
    </div>
   
   <!-- popup form #2 -->
    <a href="#x" class="overlay" id="join_form"></a>
    <div class="popup">
        <center>
            <table  style="border:0px; color:Black; font-family:Arial; font-weight:bolder;" >
                <tr>
                    <td align="center">
                        <h1 style="font-weight: bold">
                            Forgot Password</h1>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <p>
                            Please enter your details here</p>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </center>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Panel ID="Panel1" runat="server">
                    <table  style="border:0px; color:Black; font-family:Arial; font-weight:bolder;" >
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Your Email-Id"></asp:Label>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <asp:Label ID="Label6" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click"
                                    />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
        <table>
            <tr>
                <td>
                    <a class="close" href="#close"></a>
                </td>
            </tr>
        </table>
    </div>


                </header>
                    <div id="headertext">
                        <div class="container">
                            <div class="row">
                                <div class="headertitle twelve columns">
                                    <h1 class="pagetitle">
                                        Welcome to Online Audition Builder</h1>
                                    <span class="pagedesc">Search for singing music auditions ,acting & dancing auditions.</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- SLIDER -->
                <div id="outerslider">
                    <div class="container">
                        <div class="row">
                            <div id="slidercontainer" class="twelve columns">
                                <section id="slider">
                            <div id="slideritems" class="flexslider">
                                <ul class="slides">
                                    <li>
                                        <img src="../images/content/slide1.jpg" alt="" />
                                        <div class="flex-caption">
                                           <h1>Online Audition Builder</h1>
                                        </div>
                                    </li>
                                    <li>
                                        <img src="../images/content/slide2.jpg" alt="" />
                                        <div class="flex-caption">
                                           <h1>Online Audition Builder</h1>
                                        </div>
                                    </li>
                                    <li>
                                        <img src="../images/content/slide3.jpg" alt="" />
                                        <div class="flex-caption">
                                           <h1>Online Audition Builder</h1>
                                        </div>
                                    </li>
                                    <li>
                                        <img src="../images/content/slide4.jpg" alt="" />
                                        <div class="flex-caption">
                                           <h1>Online Audition Builder</h1>
                                        </div>
                                    </li>
                                    <li>
                                        <img src="../images/content/slide5.jpg" alt="" />
                                        <div class="flex-caption">
                                           <h1>Online Audition Builder</h1>
                                        </div>
                                    </li>
                                    <li>
                                        <img src="../images/content/slide6.jpg" alt="" />
                                        <div class="flex-caption">
                                           <h1>Online Audition Builder</h1>
                                        </div>
                                    </li>
                                </ul>
                                <img src="../images/slider-shadow.png" alt="" class="imgblock"/>
                            </div>
                        </section>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END SLIDER -->
            </div>
            <!-- END HEADER -->
            <!-- MAIN CONTENT -->
            <div id="outermain">
                <div class="container">
                    <div class="row">
                        <section id="maincontent" class="twelve columns">
                    
                        <section class="content">
                                                    
  							<div class="spacer"></div>
                            <div class="row">
                                <div class="boxed one_fourth columns">
                                    <div class="boxed-content">
                                        <img src="../images/content/icon1.png" alt="" class="imgopacity" />
                                        <h3 class="titleUppercase">Casting Directors</h3>
                                        <div class="sep"><span class="sep2"></span></div>
                                        <p>Post your project and streamline the casting process like never before.
                                        </p><asp:LinkButton ID="LinkButton1" class="button" runat="server" 
                                            onclick="LinkButton1_Click">Join Now</asp:LinkButton>
                                    </div>
                                    <div class="shadow-220"></div>
                                </div>
                                
                                <div class="boxed one_fourth columns">
                                    <div class="boxed-content">
                                        <img src="../images/content/icon2.png" alt="" class="imgopacity" />
                                        <h3 class="titleUppercase">Agents / Managers</h3>
                                        <div class="sep"><span class="sep2"></span></div>
                                        <p>Communicate directly with casting directors about auditions. And manage talent's profile.
                                        
                                        </p><asp:LinkButton ID="LinkButton2" class="button" runat="server" 
                                            onclick="LinkButton2_Click">Join Now</asp:LinkButton>
                                    </div>
                                    <div class="shadow-220"></div>
                                </div>
                                
                                <div class="boxed one_fourth columns">
                                    <div class="boxed-content">
                                        <img src="../images/content/icon3.png" alt="" class="imgopacity" />
                                        <h3 class="titleUppercase">Talents</h3>
                                        <div class="sep"><span class="sep2"></span></div>
                                        <p>Register with online casting service, Now available on web world.
                                        </p><asp:LinkButton ID="LinkButton3" class="button" runat="server" 
                                            onclick="LinkButton3_Click">Join Now</asp:LinkButton>
                                    </div>
                                    <div class="shadow-220"></div>
                                </div>
                                
                                <div class="boxed one_fourth columns">
                                    <div class="boxed-content">
                                        <img src="../images/content/icon4.png" alt="" class="imgopacity" />
                                        <h3 class="titleUppercase">Other Professionals</h3>
                                        <div class="sep"><span class="sep2"></span></div>
                                        <p>Communicate with managers and talent. Join Online and Post a Project Today.
                                        </p><asp:LinkButton ID="LinkButton4" class="button" runat="server" 
                                            onclick="LinkButton4_Click">Join Now</asp:LinkButton>
                                    </div>
                                    <div class="shadow-220"></div>
                                </div>
                            </div>
                            
                            <div class="separator"></div>
                            
                            
                            
                        </section>
                    
                	</section>
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT -->
            <div id="shadowbottom">
            </div>
            <!-- FOOTER -->
            <footer id="footersection">

            <!-- FOOTER SIDEBAR -->
            <div id="outerfootersidebar">
                <div class="container">
                    <div id="footersidebar" class="row"> 

                        <div id="footcol1"  class="three columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">Latest From Blog</h2>
                                    <ul class="ts-recent-post-widget">
                                        <li>
                                            <h3><a href="#">Hello world!</a></h3>
                                            <span class="lp-text">Donec blandit volutpat ipsum, ac varius nulla commodo ut. Curabitur blandit dignissim nibh sit amet</span>
                                            <span class="clear"></span>
                                        </li>
                                        <li>
                                            <h3><a href="#">Maecenas sollicitudin, urna sit amet tristique.</a></h3>
                                            <span class="lp-text">Donec blandit volutpat ipsum, ac varius nulla commodo ut. Curabitur blandit dignissim nibh sit amet</span>
                                            <span class="clear"></span>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div id="footcol2"  class="three columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">Popular Post</h2>
                                    <ul class="sn">
                                        <li><a href="http://twitter.com/" title="Twitter"><span class="icon-img twitter"></span></a></li>
                                        <li><a href="http://facebook.com/" title="Facebook"><span class="icon-img facebook"></span></a></li>
                                        <li><a href="https://plus.google.com/" title="Google+"><span class="icon-img google"></span></a></li>
                                        <li><a href="http://rss.com/" title="RSS"><span class="icon-img rss"></span></a></li>
                                        <li><a href="http://pinterest.com/" title="Pinterest"><span class="icon-img pinterest"></span></a></li>
                                    </ul> 
                                </li>
                            </ul>
                        </div>
                        <div id="footcol3"  class="three columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">Latest From Blog</h2>
                                    <ul class="ts-recent-post-widget">
                                        <li>
                                            <h3><a href="#">Hello world!</a></h3>
                                            <span class="lp-text">Donec blandit volutpat ipsum, ac varius nulla commodo ut. Curabitur blandit dignissim nibh sit amet</span>
                                            <span class="clear"></span>
                                        </li>
                                        <li>
                                            <h3><a href="#">Maecenas sollicitudin, urna sit amet tristique.</a></h3>
                                            <span class="lp-text">Donec blandit volutpat ipsum, ac varius nulla commodo ut. Curabitur blandit dignissim nibh sit amet</span>
                                            <span class="clear"></span>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div id="footcol4"  class="three columns">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title">Find Us</h2>
                                    <div class="textwidget">
                                        <img src="../images/content/map.png" alt="" class="alignleft" />
                                        Goodways - Office Blvd No. 356-357<br/>
                                        Jakarta, Indonesia<br/>
                                        Telp: +62 500 800 12345
                                    </div>
                              	</li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                 
                    </div>
                </div>
            </div>
            <!-- END FOOTER SIDEBAR -->
            
            <!-- COPYRIGHT -->
            <div id="outercopyright">
                <div class="container">
                	<div class="row">
                        <div class="twelve columns">
                            <span id="footer-light"></span>
                            <div id="copyright">
                                Copyright &copy;2014. All Rights Reserved. by <a href="#">AuditionBuilder</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END COPYRIGHT -->
        </footer>
            <!-- END FOOTER -->
            <div class="clear">
            </div>
            <!-- clear float -->
        </div>
        <!-- end outercontainer -->
    </div>
    <!-- end bodychild -->
    </form>
</body>
</html>
