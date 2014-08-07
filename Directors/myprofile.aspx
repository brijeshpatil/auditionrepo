<%@ page title="" language="C#" masterpagefile="~/Directors/director.master" autoeventwireup="true" inherits="Talents_Default, App_Web_kqk3fn4x" %>

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
    <style type="text/css">
        /*manage profile */
        .mngpfl
        {
            background: #f0f0f0;
            font-family: 'Helvetica Neue' , Helvetica, Arial, sans-serif;
            color: #313131; /*font-size: 92.5%;*/
            line-height: 1;
        }
        .h1
        {
            font-family: 'Helvetica Neue' , Helvetica, Arial, sans-serif;
            font-size: 2.5em;
            line-height: 1.5em;
            letter-spacing: -0.05em;
            margin-bottom: 20px;
            padding: .1em 0;
            color: #444;
            position: relative;
            overflow: hidden;
            white-space: nowrap;
            text-align: center;
        }
        .h1:before, .h1:after
        {
            content: "";
            position: relative;
            display: inline-block;
            width: 50%;
            height: 1px;
            vertical-align: middle;
            background: #f0f0f0;
        }
        .h1:before
        {
            left: -.5em;
            margin: 0 0 0 -50%;
        }
        .h1:after
        {
            left: .5em;
            margin: 0 -50% 0 0;
        }
        .h1 > .span
        {
            display: inline-block;
            vertical-align: middle;
            white-space: normal;
        }
        
        .p
        {
            display: block;
            font-size: 1.4em;
            line-height: 1.55em;
            margin-bottom: 22px;
            color: #555;
        }
        /* Manage Profile page  */
        
        
        #userphoto
        {
            display: block;
            float: right;
            margin-left: 15px;
            margin-bottom: 5px;
        }
        #userphoto img
        {
            display: block;
            padding: 2px;
            background: #fff;
            -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.4);
            -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.4);
            box-shadow: 0 1px 3px rgba(0,0,0,0.4);
        }
        
        
        /** profile content sections **/
        .hidden
        {
            display: none;
        }
        
        .activity
        {
            border-bottom: 1px solid #d6d1af;
            padding-bottom: 4px;
        }
        
        .setting
        {
            display: block;
            font-weight: normal;
            padding: 7px 3px;
            border-bottom: 1px solid #d6d1af;
            margin-bottom: 5px;
        }
        .setting span
        {
            float: left;
            width: 242px;
            font-weight: bold;
        }
        .fromDtPos
        {
            top: 576px !important; /* change as per requirement*/
            border: 1px solid black;
        }
        
        .cls
        {
            background-color: White;
            border: 0px solid gray;
            height: auto;
            padding: 15px;
            border-radius: 10px 10px 10px 10px;
            box-shadow: 0px 0px 10px gray;
        }
        
        table
        {
            font-family: Verdana;
        }
        input[type="text"], input[type="password"]
        {
            border-radius: 5px 5px 5px 5px;
            border: 2px solid silver;
            font-family: Verdana;
        }
        .cngpwd
        {
            border: 0px solid black;
            padding: 6px;
            -webkit-box-shadow: 0px 2px 2px 2px rgba(79, 79, 79, 0.54);
            -moz-box-shadow: 0px 2px 2px 2px rgba(79, 79, 79, 0.54);
            box-shadow: 0px 2px 2px 2px rgba(79, 79, 79, 0.54);
            border-radius: 0px;
        }
        #reg
        {
            margin-top: 10px; /*  margin: 5px 0px 0px 295px;*/
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <li><a href="talents.aspx">Home</a></li>
    <li class="current"><a href="myprofile.aspx">My Profile</a>
        <ul>
            <li><a href="myprofile.aspx">View Profile</a></li>
            <li><a href="editprofile.aspx">Edit Profile</a></li>
        </ul>
    </li>
    <li><a>Create Project</a>
        <ul>
            <li><a href="projectcreate.aspx">Project Create</a></li>
            <li><a href="auditioncreate.aspx">Auditions Create</a> </li>
        </ul>
    </li>
    <li><a href="talents.aspx">Talents</a>
        <ul>
            <li><a href="sortlisted.aspx">Sortlisted Talents</a></li>
        </ul>
    </li>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <h1 class="pagetitle">
        Profile</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
    <div id="w">
        <div id="content" class="clearfix">
            <asp:DataList ID="DataList1" runat="server" Width="100%">
                <ItemTemplate>
                    <div id="userphoto">
                        <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" ImageUrl='<%#bind("profile_image") %>' />
                    </div>
                    <h1 class="h1">
                        My Profile</h1>
                    <section class="section" id="settings">
                  
                    <p class="p">
                        <h1>Personal Info:</h1></p>
                        <p class="setting">&nbsp;</p>
                    <p class="setting">
                        <span>Name</span>&nbsp;<asp:Label ID="Label1" runat="server" Text='<%#Eval("first_name")+" "+Eval("last_name") %>'/>
                    </p>
                    <p class="setting">
                        <span>DOB</span>&nbsp;<asp:Label ID="Label4" runat="server" Text='<%#bind("dob","{0:dd/MM/yyyy}") %>'/>
                        
                    </p>
                    <p class="setting">
                        <span>Gender</span>&nbsp;<asp:Label ID="Label3" runat="server" Text='<%#bind("gender") %>'/>
                        
                    </p>

                    <p class="setting">
                        <span>Address</span>&nbsp;<asp:Label ID="Label5" runat="server" Text='<%#bind("address") %>'/>
                    </p>
                    <p class="setting">
                        <span>Country</span>&nbsp;<asp:Label ID="Label6" runat="server" Text='<%#bind("country_name") %>'/>
                                        
                    </p>
                    <p class="setting">
                        <span>State</span>&nbsp;<asp:Label ID="Label7" runat="server" Text='<%#bind("state_name") %>'/>
                    </p>
                    <p class="setting">
                        <span>City</span>&nbsp;<asp:Label ID="Label8" runat="server" Text='<%#bind("city_name") %>'/>
                    </p>
                    <p class="setting">
                        <span>Pincode</span>&nbsp;<asp:Label ID="Label9" runat="server" Text='<%#bind("pincode") %>'/>
                    </p>
                    <p class="setting">
                        <span>Mobile No</span>&nbsp;<asp:Label ID="Label10" runat="server" Text='<%#bind("ph_no") %>'/>
                    </p>
                    <p class="setting">
                        <span>Email Id</span>&nbsp;<asp:Label ID="Label12" runat="server" Text='<%#bind("email_id") %>'/>
                    </p>
                </section>
                </ItemTemplate>
            </asp:DataList>
        </div>
</asp:Content>
