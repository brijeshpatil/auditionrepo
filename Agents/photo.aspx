<%@ page title="" language="C#" masterpagefile="~/Agents/agent.master" autoeventwireup="true" inherits="Talents_Default, App_Web_rmxupoaz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>
    <!-- jQuery Superfish -->
    <script type="text/javascript" src="../js/hoverIntent.js"></script>
    <script type="text/javascript" src="../js/superfish.js"></script>
    <script type="text/javascript" src="../js/supersubs.js"></script>
    <!-- jQuery Dropdown Mobile -->
    <script type="text/javascript" src="../js/tinynav.min.js"></script>
    <!-- Custom Script -->
    <script type="text/javascript" src="../js/custom.js"></script>
    <!-- jQuery PrettyPhoto -->
    <script type="text/javascript" src="../js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="../js/fade.js"></script>
    <script type="text/javascript" src="../js/jquery-easing-1.3.js"></script>
    <!-- jQuery Isotope -->
    <script type="text/javascript" src="../js/jquery.isotope.min.js"></script>
    <script>
        function runisotope() {
            $container = jQuery('#ts-display');
            $container.isotope({
                itemSelector: '.item'
            });

            // filter items when filter link is clicked
            jQuery('#filter li').click(function () {
                jQuery('#filter li').removeClass('current');
                jQuery(this).addClass('current');
                var selector = jQuery(this).find('a').attr('data-filter');
                $container.isotope({ filter: selector });
                return false;
            });
        };
        jQuery(window).load(function () {
            runisotope();
        });

        jQuery(window).resize(function () {
            runisotope();
        });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <li><a href="#">Home</a></li>
    <li><a href="#">My Profile</a>
    <ul>
            <li><a href="myprofile.aspx">View Profile</a></li>
            <li><a href="editprofile.aspx">Edit Profile</a></li>
            
        </ul>
    </li>
    <li class="current"><a>Talents</a>
        <ul>
            <li><a href="talents.aspx">Talents</a></li>
            <li><a href="sortlisted.aspx">Sortlisted Talents</a></li>
           
        </ul>
    </li>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <h1 class="pagetitle">
        Photos</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
    <div id="frame-filter">
        <div class="clear">
        </div>
    </div>
    <div id="ts-display" class="row">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div class="one_third columns item musical">
                    <div class="ts-display-pf-img">
                        <span class="rollover"><a class="pftitle" href="#"><span>AuditionBuilder</span></a>
                            <span class="pf-utility "><a class="pfzoom" href='<%#Eval("photo_path") %>' data-rel="prettyPhoto[mixed]">
                                zoom</a> </span></span>
                        <img src='<%#Eval("photo_path") %>' alt="" />
                    </div>
                    <span class="shadowpfimg">
                        <img src="../images/shadow-pf.png" alt="" /></span>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
