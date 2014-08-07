<%@ page title="" language="C#" masterpagefile="~/Talents/talent.master" autoeventwireup="true" inherits="Talents_Default, App_Web_j3ccda3d" %>

<%@ Register Assembly="ASPNetVideo.NET4" Namespace="ASPNetVideo" TagPrefix="ASPNetVideo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="../js/tinynav.min.js"></script>
    <script type="text/javascript" src="../js/hoverIntent.js"></script>
    <script type="text/javascript" src="../js/superfish.js"></script>
    <script type="text/javascript" src="../js/supersubs.js"></script>
    <script type="text/javascript" src="../js/custom.js"></script>
    <style type="text/css">
        .video
        {
            margin: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
     <li><a href="viewprofile.aspx">Home</a></li>
   <li><a href="apply.aspx">Audition</a></li>
    <li><a href="viewprofile.aspx">My Profile</a>
        <ul>
            <li><a href="viewprofile.aspx">View Profile</a></li>
            <li><a href="editprofile.aspx">Edit Profile</a></li>
        </ul>
    </li>
    <li class="current"><a href="media.aspx">My Media</a>
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
        Audios</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" 
        RepeatDirection="Horizontal" onitemdatabound="DataList1_ItemDataBound">
        <ItemTemplate>
            <div style="float: left; margin-left: 5%;">
                <ASPNetVideo:QuickTime ID="QuickTime1" CssClass="video" runat="server" ShowControlPanel="true"
                    AutoPlay="false" Height="70px" Width="290px" >
                </ASPNetVideo:QuickTime>
                <div>
                    <asp:Label ID="Label1" runat="server" Text='<%#bind("audio_title") %>' Style="font-family: monospace;
                        font-size: large; font-weight: 500;"></asp:Label>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
