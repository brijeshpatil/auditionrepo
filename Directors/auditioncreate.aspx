<%@ page title="" language="C#" masterpagefile="~/Directors/director.master" autoeventwireup="true" inherits="Talents_Default, App_Web_yynbuuye" %>

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
        p
        {
            text-align: justify;
        }
        
        .span
        {
            color: #21328B;
        }
        
        .toggle_container .block
        {
            padding: 0px 0px 0px 20px;
        }
        .a:link
        {
            background-color: rgb(7, 7, 7);
            color: white;
            border-style: solid;
            border-width: 1px 4px 4px 1px;
            text-decoration: none;
            padding: 4px;
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
<li><a href="talents.aspx">Home</a></li>
    <li><a href="myprofile.aspx">My Profile</a>
        <ul>
            <li><a href="myprofile.aspx">View Profile</a></li>
            <li><a href="editprofile.aspx">Edit Profile</a></li>
        </ul>
    </li>
    <li class="current"><a href="auditioncreate.aspx">Auditions Create</a> </li>
    <li><a href="talents.aspx">Talents</a>
        <ul>
            <li><a href="sortlisted.aspx">Sortlisted Talents</a></li>
        </ul>
    </li>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <h1 class="pagetitle">
        Create Audition</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
    <div style="width: 100%; margin-top: 10px">
        <fieldset class="cls">
            <div align="left" style="font-size: large; width: 100%; color: #008cc4;">
                Create Audition
            </div>
            <hr />
            <asp:DataList ID="DataList1" runat="server" OnItemDataBound="DataList1_ItemDataBound"
                RepeatColumns="8" RepeatLayout="Flow" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div id="toggle">
                        <h2 class="trigger">
                            <span class="span">
                                <asp:Label ID="Label1" runat="server" Text='<%#bind("project_name") %>' Style="float: left;"></asp:Label>&nbsp;&nbsp;<asp:LinkButton
                                    ID="LinkButton1" runat="server" CssClass="a" CommandName="apply" CommandArgument='<%#bind("project_id") %>'>Create Audition</asp:LinkButton></span></h2>
                        <div class="toggle_container">
                            <div class="block">
                                <p>
                                    <table border="0">
                                        <tr>
                                            <td>
                                                <b>Place:</b>&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text='<%#bind("place") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Startdate:</b>&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text='<%#bind("startdate","{0:dd/MM/yyyy}") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <b>Enddate:</b>&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text='<%#bind("enddate","{0:dd/MM/yyyy}") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Director:</b>&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text='<%#Eval("first_name")+" "+Eval("last_name") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Description:</b>&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text='<%#bind("project_desc") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <div align="center">
                <asp:Button ID="btnfirst1" runat="server" Text="<<" Visible="false" OnClick="btnfirst1_Click" /><asp:Button
                    ID="btnprev1" runat="server" Text="<" Visible="false" OnClick="btnprev1_Click" /><asp:Button
                        ID="btnnext1" runat="server" Text=">" Visible="false" OnClick="btnnext1_Click" /><asp:Button
                            ID="btnlast1" runat="server" Text=">>" Visible="false" OnClick="btnlast1_Click" /></div>
        </fieldset>
    </div>
    <asp:Button ID="btnPopUpGridView9" runat="server" Style="display: none" />
    <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnPopUpGridView9"
        PopupControlID="Panel1" CancelControlID="Button9" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="Panel1" runat="server" BackColor="White" Width="38%" Style="margin: 5px 5px 5px 5px;
        overflow: scroll;">
        <div style="text-align: center; margin: 5px 3px 0px 3px">
            <table width="100%" cellpadding="0" cellspacing="10px">
                <tr style="background-color: Black; height: 10%; color: White; font-weight: bold;
                    font-size: larger" align="center">
                    <td>
                        <asp:Label ID="lbluname" runat="server" Text="AuditionDetails"></asp:Label>
                    </td>
                    <td>
                        <asp:ImageButton ID="Button9" runat="server" Height="35" Width="35" ImageUrl="../images/cancel.png" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width="100%">
                            <tr>
                                <td>
                                    <asp:TextBox ID="sdmsg" runat="server" TextMode="MultiLine" Height="80px" Width="215px"
                                        Style="margin: 9% 0% 14% 3%"></asp:TextBox>
                                    
                                </td>
                                <td>
                                    <asp:Button ID="sdbtn" runat="server" Text="CREATE" Style="margin-left: 15%;" 
                                        ValidationGroup="reply" onclick="sdbtn_Click" />
                                </td>
                                </tr>
                                <tr><td><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Description"
                                        ControlToValidate="sdmsg" ForeColor="Red" Display="Dynamic" ValidationGroup="reply"></asp:RequiredFieldValidator></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </asp:Panel>
</asp:Content>
