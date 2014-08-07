<%@ page title="" language="C#" masterpagefile="~/Directors/director.master" autoeventwireup="true" inherits="Talents_Default, App_Web_fl50ulqq" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
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
        .MyTabStyle .ajax__tab_header
        {
            font-family: "Helvetica Neue" , Arial, Sans-Serif;
            font-size: 14px;
            font-weight: bold;
            display: block;
            margin-top: 10px;
            margin-bottom: 10px;
        }
        .MyTabStyle .ajax__tab_header .ajax__tab_outer
        {
            border-color: #222;
            color: #222;
            padding-left: 10px;
            margin-right: 10px;
            border: solid 1px #d7d7d7;
            background-color: #d7d7d7;
        }
        .MyTabStyle .ajax__tab_header .ajax__tab_inner
        {
            border-color: #666;
            color: #000;
            padding: 7px 15px 10px 0px;
        }
        .MyTabStyle .ajax__tab_hover .ajax__tab_outer
        {
            background-color: #d7d7d7;
            cursor: pointer;
        }
        .MyTabStyle .ajax__tab_hover .ajax__tab_inner
        {
            color: #ee5010;
        }
        .MyTabStyle .ajax__tab_active .ajax__tab_outer
        {
            border-bottom-color: #ffffff;
            background-color: #588CF5;
        }
        .MyTabStyle .ajax__tab_active .ajax__tab_inner
        {
            color: #fff;
            border-color: #333;
        }
        .MyTabStyle .ajax__tab_body
        {
            border-top-width: 0; /*border: solid 0px #d7d7d7;*/
            border-top-color: #ffffff;
        }
        
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
            border-top: 1px solid #d6d1af;
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
        
        
        #reg
        {
            margin-top: 10px; /*  margin: 5px 0px 0px 295px;*/
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <li><a href="talents.aspx">Home</a></li>
    <li class="current"><a href="myprofile.aspx">My Profile</a>
        <ul>
            <li  class="current"><a href="myprofile.aspx">View Profile</a></li>
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
        Profile Edit</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
    
                <div id="w">
                    <div id="content" class="clearfix">
                        <div id="userphoto">
                            <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" ImageUrl='<%#bind("profile_image") %>' />
                        </div>
                        <h1 class="h1">
                            User Profile</h1>
                        <section class="section" id="settings">
                    <div style="float: right;">
                        
                    </div>
                    <p class="p">
                        Edit your Personal Info:</p>
                        <p class="setting">
                        <span style="color:Red;">All(*) are mandatory:</span>&nbsp;</p>
                   <p class="setting">
                        <span>UserName</span>&nbsp;<asp:Label ID="Label11" runat="server" Text='<%#bind("user_name") %>'></asp:Label>
                    </p>
                    <p class="setting">
                        <span>FirstName</span>&nbsp;<asp:TextBox ID="TextBox1" runat="server" Text="" Width="200" Height="25"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                            Display="Dynamic" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </p>
                    <p class="setting">
                        <span>LastName</span>&nbsp;<asp:TextBox ID="TextBox2" runat="server" Text="" Width="200" Height="25"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                            Display="Dynamic" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </p>
                    <p class="setting">
                        <span>Gender</span><asp:RadioButtonList 
                                        ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="100">
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </p>
                    <p class="setting">
                        <span>DOB</span>&nbsp;<asp:TextBox ID="TextBox3" runat="server" Text="" Width="200" Height="25"></asp:TextBox><cc1:CalendarExtender ID="CalendarExtender1" runat="server" PopupPosition="Right" TargetControlID="TextBox3" Format="dd-MMM-yyyy" CssClass="fromDtPos"></cc1:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                            Display="Dynamic" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                        
                    </p>
                    <p class="setting">
                        <span>Address</span>&nbsp;<asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Text="" Width="200" Height="25"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                            Display="Dynamic" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                    </p>
                    <p class="setting">
                        <span>Country</span>&nbsp;<asp:DropDownList ID="DropDownList1" Width="205" Height="25"
                                        runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                        >
                        </asp:DropDownList>
                    </p>
                    <p class="setting">
                        <span>State</span>&nbsp;<asp:DropDownList ID="DropDownList2" 
                                        runat="server" AutoPostBack="True" Width="205" Height="25" onselectedindexchanged="DropDownList2_SelectedIndexChanged"
                                       >
                        </asp:DropDownList>
                    </p>
                    <p class="setting">
                        <span>City</span>&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" Width="205" Height="25">
                        </asp:DropDownList>
                    </p>
                    <p class="setting">
                        <span>Pincode</span>&nbsp;<asp:TextBox ID="TextBox5" runat="server" Text="" Width="200" Height="25"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*"
                            Display="Dynamic" ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                    </p>
                    <p class="setting">
                        <span>Mobile No</span>&nbsp;<asp:TextBox ID="TextBox6" runat="server" Text="" Width="200" Height="25"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Correct Mobile No"
                            ControlToValidate="TextBox6" Display="Dynamic" ForeColor="Red" ValidationExpression="^[0-9]\d{9}$"></asp:RegularExpressionValidator>
                    </p>
                    <p class="setting">
                        <span>Email Id</span>&nbsp;<asp:TextBox ID="TextBox7" runat="server" Text="" Width="200" Height="25"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Write Correct EmailId"
                            ControlToValidate="TextBox7" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </p>
                    <p class="setting">
                    <span>Profile Picture</span>&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Width="200" />
                    </p>
                    <div style="width: 100%;" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Update"  
                            onclick="Button1_Click" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="Cancel" 
                            onclick="Button3_Click">
                        </asp:Button>
                    </div>
                </section>
                    </div>
                </div>
           
</asp:Content>
