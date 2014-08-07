<%@ page title="" language="C#" masterpagefile="~/Agents/agent.master" autoeventwireup="true" inherits="Talents_Default, App_Web_xlaczkua" %>

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
        Talent Profile</h1>
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
                        User Profile</h1>
                    <section class="section" id="settings">
                  
                    <p class="p">
                        <h1>Personal Info:</h1></p>
                        <p class="setting">&nbsp;</p>
                    <p class="setting">
                        <span>Name</span>&nbsp;<asp:Label ID="Label1" runat="server" Text='<%#Eval("first_name")+""+Eval("last_name") %>'/>
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
            <section class="section" id="settings">
                    
                    <p class="p">
                        <h1>Experience:</h1></p>
                   <p class="setting">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                Width="100%" BackColor="White" BorderColor="#CCCCCC" 
                            BorderStyle="None" BorderWidth="0px"
                                CssClass="cngpwd" CellPadding="4" ForeColor="Black" 
                            GridLines="Horizontal" HorizontalAlign="Left"
                                 CellSpacing="1" 
                                DataKeyNames="exp_id" 
                            onpageindexchanging="GridView1_PageIndexChanging" 
                            onrowcommand="GridView1_RowCommand">
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
                                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="video" CommandArgument='<%#bind("video_path") %>'><img src="../images/video.png" height="50px" width="50px" /></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Audio">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="audio" CommandArgument='<%#bind("audio_path") %>'><img src="../images/audio.png" height="45px" width="45px"/></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
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
                    </p>
                    <p class="setting">&nbsp;</p>
                </section>
            <section class="section" id="settings">
                    
                    <p class="p">
                        <h1>Skill:</h1></p>
                   <p class="setting">
                   <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                Width="100%" BackColor="White" BorderColor="#CCCCCC" 
                           BorderStyle="None" BorderWidth="0px"
                                CssClass="cngpwd" CellPadding="4" ForeColor="Black" 
                           GridLines="Horizontal" HorizontalAlign="Left"
                                CellSpacing="1" DataKeyNames="skill_id" 
                           onpageindexchanging="GridView2_PageIndexChanging" 
                           onrowcommand="GridView2_RowCommand">
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
                    </p>
                     <p class="setting">&nbsp;</p>
                </section>
        </div>
    </div>
    
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
                                <asp:Label ID="Label2" runat="server" Text="moviefsdfsd"></asp:Label>
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
                               <ASPNetVideo:QuickTime ID="QuickTime1" runat="server" ShowControlPanel="true" AutoPlay="false"
                                    Height="300px" Width="350px">
                                </ASPNetVideo:QuickTime>
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
                                <asp:Label ID="Label17" runat="server" Text="moviefsdfsd"></asp:Label>
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
                                <ASPNetVideo:QuickTime ID="QuickTime2" runat="server" ShowControlPanel="true" AutoPlay="false"
                                    Height="70px">
                                </ASPNetVideo:QuickTime>
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
                                <asp:Label ID="Label11" runat="server" Text="moviefsdfsd"></asp:Label>
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
                                 <ASPNetVideo:QuickTime ID="QuickTime3" runat="server" ShowControlPanel="true" AutoPlay="false"
                                    Height="300px" Width="350px" >
                                </ASPNetVideo:QuickTime>
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
                                <asp:Label ID="Label18" runat="server" Text="moviefsdfsd"></asp:Label>
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
                                <ASPNetVideo:QuickTime ID="QuickTime4" runat="server" ShowControlPanel="true" AutoPlay="false"  Height="70px">
                                </ASPNetVideo:QuickTime>
                            </td>
                        </td>
                    </tr>
                </table>
            </table>
        </div>
    </asp:Panel>
</asp:Content>
