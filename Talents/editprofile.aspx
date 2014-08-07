<%@ page title="" language="C#" masterpagefile="~/Talents/talent.master" autoeventwireup="true" inherits="Talents_Default, App_Web_wwh0i5rk" %>

<%@ Register Assembly="ASPNetVideo.NET4" Namespace="ASPNetVideo" TagPrefix="ASPNetVideo" %>

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
         .modalBackground
        {
            background-color: Gray;
            filter: alpha(opacity=80);
            opacity: 0.8;
            z-index: 10000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <li><a href="viewprofile.aspx">Home</a></li>
    <li><a href="apply.aspx">Audition</a></li>
    <li class="current"><a href="viewprofile.aspx">My Profile</a>
        <ul>
            <li><a href="viewprofile.aspx">View Profile</a></li>
            <li><a href="editprofile.aspx">Edit Profile</a></li>
        </ul>
    </li>
    <li><a href="media.aspx">My Media</a>
        <ul>
            <li><a href="media.aspx">Upload Video</a></li>
            <li><a href="media.aspx">Upload Audio</a></li>
            <li><a href="media.aspx">Upload Photos</a></li>
        </ul>
    </li>
    <li><a href="inbox.aspx">Inbox</a> </li>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <h1 class="pagetitle">
        Profile Edit</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
    <cc1:TabContainer ID="TabContainer1" runat="server" CssClass="MyTabStyle">
        <cc1:TabPanel runat="server" HeaderText="Profile" ID="TabPanel1" TabIndex="0">
            <ContentTemplate>
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
                        <span>UserName</span>&nbsp;<asp:Label ID="Label11" runat="server" Text='<%#bind("user_name") %>'></asp:Label>
                    </p>
                    <p class="setting">
                        <span>FirstName</span>&nbsp;<asp:TextBox ID="TextBox1" runat="server" Text="" Width="200" Height="25"></asp:TextBox>
                    </p>
                    <p class="setting">
                        <span>LastName</span>&nbsp;<asp:TextBox ID="TextBox2" runat="server" Text="" Width="200" Height="25"></asp:TextBox>
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
                        
                    </p>
                    <p class="setting">
                        <span>Address</span>&nbsp;<asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Text="" Width="200" Height="25"></asp:TextBox>
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
                    </p>
                    <p class="setting">
                        <span>Mobile No</span>&nbsp;<asp:TextBox ID="TextBox6" runat="server" Text="" Width="200" Height="25"></asp:TextBox>
                    </p>
                    <p class="setting">
                        <span>Email Id</span>&nbsp;<asp:TextBox ID="TextBox7" runat="server" Text="" Width="200" Height="25"></asp:TextBox>
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
            </ContentTemplate>
        </cc1:TabPanel>
        <cc1:TabPanel runat="server" HeaderText="Experience & Skills" ID="TabPanel2" TabIndex="1">
            <ContentTemplate>
                <div style="width: 100%; margin-top: 10px">
                    <fieldset class="cls">
                        <div align="left" style="font-size: large; width: 100%; color: #008cc4;">
                            Experience</div>
                        <hr />
                        <div align="left">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text="Select Header"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList4" runat="server" Width="205" Height="25">
                                            <asp:ListItem>Select Header</asp:ListItem>
                                            <asp:ListItem>Comedy</asp:ListItem>
                                            <asp:ListItem>Commercial</asp:ListItem>
                                            <asp:ListItem>Corporate</asp:ListItem>
                                            <asp:ListItem>Dance</asp:ListItem>
                                            <asp:ListItem>Educational Film</asp:ListItem>
                                            <asp:ListItem>Film</asp:ListItem>
                                            <asp:ListItem>Modeling</asp:ListItem>
                                            <asp:ListItem>Music</asp:ListItem>
                                            <asp:ListItem>Radio</asp:ListItem>
                                            <asp:ListItem>Short Film</asp:ListItem>
                                            <asp:ListItem>Stage</asp:ListItem>
                                            <asp:ListItem>Television</asp:ListItem>
                                            <asp:ListItem>Theatre</asp:ListItem>
                                            <asp:ListItem>Training</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="Enter New Credit Title"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server" Width="200" Height="25"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="Select Credit Role"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox10" runat="server" Width="200" Height="25"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text="Enter New Credit Director"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server" Width="200" Height="25"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text="Select Video if any"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList6" runat="server" Width="205" Height="25">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="Select Audio if any"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList7" runat="server" Width="205" Height="25">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="center">
                                        <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </fieldset>
                </div>
                <div style="width: 100%; margin-top: 10px">
                    <fieldset class="cls">
                        <div align="left" style="font-size: large; width: 100%; color: #008cc4;">
                            Skills</div>
                        <hr />
                        <div align="left">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text="Select Category"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList8" runat="server" Width="205" Height="25" AutoPostBack="True"
                                            OnSelectedIndexChanged="DropDownList8_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text="Select SubCategory"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList9" runat="server" Width="205" Height="25">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Text="Select Experience Level"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList10" runat="server" Width="205" Height="25">
                                            <asp:ListItem>No Experience</asp:ListItem>
                                            <asp:ListItem>Novice</asp:ListItem>
                                            <asp:ListItem>Intermediate</asp:ListItem>
                                            <asp:ListItem>Expert</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label10" runat="server" Text="Select Video if any"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList11" runat="server" Width="205" Height="25">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label12" runat="server" Text="Select Audio if any"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList12" runat="server" Width="205" Height="25">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="center">
                                        <asp:Button ID="Button4" runat="server" Text="Submit" OnClick="Button4_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </fieldset>
                </div>
            </ContentTemplate>
        </cc1:TabPanel>
        <cc1:TabPanel runat="server" HeaderText="Edit Experience & Skills" ID="TabPanel3"
            TabIndex="2">
            <ContentTemplate>
                <div style="width: 100%; margin-top: 10px">
                    <fieldset class="cls">
                        <div align="left" style="font-size: large; width: 100%; color: #008cc4;">
                            Edit Experience</div>
                        <hr />
                        <div align="left">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="0px"
                                CssClass="cngpwd" CellPadding="4" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Left"
                                OnRowDeleting="GridView1_RowDeleting" CellSpacing="1" OnPageIndexChanging="GridView1_PageIndexChanging"
                                DataKeyNames="exp_id" OnRowCommand="GridView1_RowCommand">
                                <Columns>
                                    <asp:TemplateField HeaderText="Heading">
                                        <ItemTemplate>
                                            <asp:Label ID="Label13" runat="server" Text='<%#bind("heading") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Title">
                                        <ItemTemplate>
                                            <asp:Label ID="Label14" runat="server" Text='<%#bind("title") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Role">
                                        <ItemTemplate>
                                            <asp:Label ID="Label15" runat="server" Text='<%#bind("role") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Director">
                                        <ItemTemplate>
                                            <asp:Label ID="Label16" runat="server" Text='<%#bind("director_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Video">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="video" CommandArgument='<%#bind("video_path") %>'><img src="../images/video.png" height="50px" width="50px" /></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Audio">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="audio" CommandArgument='<%#bind("audio_path") %>'><img src="../images/audio.png" height="45px" width="45px"/></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField ShowDeleteButton="True" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" Height="40px" Font-Bold="True" ForeColor="White"
                                    HorizontalAlign="Center" VerticalAlign="Middle" />
                                <PagerSettings Mode="NumericFirstLast" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#242121" />
                                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:GridView>
                        </div>
                    </fieldset>
                </div>
                <div style="width: 100%; margin-top: 10px">
                    <fieldset class="cls">
                        <div align="left" style="font-size: large; width: 100%; color: #008cc4;">
                            Edit Skills</div>
                        <hr />
                        <div align="left">
                            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="0px"
                                CssClass="cngpwd" CellPadding="4" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Left"
                                CellSpacing="1" DataKeyNames="skill_id" OnPageIndexChanging="GridView2_PageIndexChanging"
                                OnRowDeleting="GridView2_RowDeleting" OnRowCommand="GridView2_RowCommand">
                                <Columns>
                                    <asp:TemplateField HeaderText="Category">
                                        <ItemTemplate>
                                            <asp:Label ID="Label19" runat="server" Text='<%#bind("casting_cat_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="SubCategory">
                                        <ItemTemplate>
                                            <asp:Label ID="Label20" runat="server" Text='<%#bind("casting_subcat_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Experience">
                                        <ItemTemplate>
                                            <asp:Label ID="Label21" runat="server" Text='<%#bind("experience") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Video">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="video" CommandArgument='<%#bind("video_path") %>'><img src="../images/video.png" height="50px" width="50px" /></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Audio">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="audio" CommandArgument='<%#bind("audio_path") %>'><img src="../images/audio.png" height="45px" width="45px"/></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField ShowDeleteButton="True" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" Height="40px" Font-Bold="True" ForeColor="White"
                                    HorizontalAlign="Center" VerticalAlign="Middle" />
                                <PagerSettings Mode="NumericFirstLast" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#242121" />
                                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:GridView>
                        </div>
                    </fieldset>
                </div>
            </ContentTemplate>
        </cc1:TabPanel>
    </cc1:TabContainer>
    <asp:Button ID="btnPopUpGridView9" runat="server" Style="display: none" />
    <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnPopUpGridView9"
        PopupControlID="Panel1" CancelControlID="Button9" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="Panel1" runat="server" BackColor="White" Width="38%" Style="margin: 5px 5px 5px 5px;">
        <div style="text-align: center; margin: 5px 3px 0px 3px">
            <table width="100%" cellpadding="0" cellspacing="10px">
                <table cellpadding="0" cellspacing="10px" width="100%">
                    <tr align="center" style="background-color: Black; height: 10%; color: White; font-weight: bold;
                        font-size: larger">
                        <td>
                            <td align="left">
                                <asp:Label ID="Label17" runat="server" Text="moviefsdfsd"></asp:Label>
                            </td>
                        </td>
                        <td align="right">
                            <asp:ImageButton ID="Button9" runat="server" Height="35" ImageUrl="../images/cancel.png"
                                Width="35" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <td colspan="2" align="center" style="width: 100%">
                                <aspnetvideo:quicktime id="QuickTime1" runat="server" showcontrolpanel="true" autoplay="false"
                                    height="300px" width="350px">
                                </aspnetvideo:quicktime>
                            </td>
                        </td>
                    </tr>
                </table>
            </table>
        </div>
    </asp:Panel>
    <cc1:ModalPopupExtender ID="ModalPopupExtender3" runat="server" TargetControlID="btnPopUpGridView9"
        PopupControlID="Panel3" CancelControlID="Button11" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="Panel3" runat="server" BackColor="Black" Width="38%" Style="margin: 5px 5px 5px 5px;">
        <div style="text-align: center; margin: 5px 3px 0px 3px">
            <table width="100%" cellpadding="0" cellspacing="10px">
                <table cellpadding="0" cellspacing="10px" width="100%">
                    <tr align="center" style="background-color: Black; height: 10%; color: White; font-weight: bold;
                        font-size: larger">
                        <td>
                            <td align="left">
                                <asp:Label ID="Label18" runat="server" Text="moviefsdfsd"></asp:Label>
                            </td>
                        </td>
                        <td align="right">
                            <asp:ImageButton ID="Button11" runat="server" Height="35" ImageUrl="../images/cancel.png"
                                Width="35" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <td colspan="2" align="center" style="width: 100%">
                                <aspnetvideo:quicktime id="QuickTime2" runat="server" showcontrolpanel="true" autoplay="false"
                                    height="70px">
                                </aspnetvideo:quicktime>
                            </td>
                        </td>
                    </tr>
                </table>
            </table>
        </div>
    </asp:Panel>
    <cc1:ModalPopupExtender ID="ModalPopupExtender2" runat="server" TargetControlID="btnPopUpGridView9"
        PopupControlID="Panel2" CancelControlID="Button10" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="Panel2" runat="server" BackColor="White" Width="38%" Style="margin: 5px 5px 5px 5px;">
        <div style="text-align: center; margin: 5px 3px 0px 3px">
            <table width="100%" cellpadding="0" cellspacing="10px">
                <table cellpadding="0" cellspacing="10px" width="100%">
                    <tr align="center" style="background-color: Black; height: 10%; color: White; font-weight: bold;
                        font-size: larger">
                        <td>
                            <td align="left">
                                <asp:Label ID="Label22" runat="server" Text="moviefsdfsd"></asp:Label>
                            </td>
                        </td>
                        <td align="right">
                            <asp:ImageButton ID="Button10" runat="server" Height="35" ImageUrl="../images/cancel.png"
                                Width="35" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <td colspan="2" align="center" style="width: 100%">
                                <aspnetvideo:quicktime id="QuickTime3" runat="server" showcontrolpanel="true" autoplay="false"
                                    height="300px" width="350px">
                                </aspnetvideo:quicktime>
                            </td>
                        </td>
                    </tr>
                </table>
            </table>
        </div>
    </asp:Panel>
    <cc1:ModalPopupExtender ID="ModalPopupExtender4" runat="server" TargetControlID="btnPopUpGridView9"
        PopupControlID="Panel4" CancelControlID="Button12" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="Panel4" runat="server" BackColor="Black" Width="38%" Style="margin: 5px 5px 5px 5px;">
        <div style="text-align: center; margin: 5px 3px 0px 3px">
            <table width="100%" cellpadding="0" cellspacing="10px">
                <table cellpadding="0" cellspacing="10px" width="100%">
                    <tr align="center" style="background-color: Black; height: 10%; color: White; font-weight: bold;
                        font-size: larger">
                        <td>
                            <td align="left">
                                <asp:Label ID="Label23" runat="server" Text="moviefsdfsd"></asp:Label>
                            </td>
                        </td>
                        <td align="right">
                            <asp:ImageButton ID="Button12" runat="server" Height="35" ImageUrl="../images/cancel.png"
                                Width="35" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <td colspan="2" align="center" style="width: 100%">
                                <aspnetvideo:quicktime id="QuickTime4" runat="server" showcontrolpanel="true" autoplay="false"
                                    height="70px">
                                </aspnetvideo:quicktime>
                            </td>
                        </td>
                    </tr>
                </table>
            </table>
        </div>
    </asp:Panel>
</asp:Content>
