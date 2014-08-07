<%@ page title="" language="C#" masterpagefile="~/Talents/talent.master" autoeventwireup="true" inherits="Talents_Default, App_Web_zqycote3" %>

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
    <li><a href="media.aspx">My Media</a>
        <ul>
            <li><a href="media.aspx">Upload Video</a></li>
            <li><a href="media.aspx">Upload Audio</a></li>
            <li><a href="media.aspx">Upload Photos</a></li>
        </ul>
    </li>
    <li class="current"><a href="inbox.aspx">Inbox</a> </li>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <h1 class="pagetitle">
        Inbox</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
    <asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
    <ol class="commentlist">
        <li>
            <div class="comment-body">
                <div class="comment-arrow">
                </div>
                <div class="avatar-img">
                    <asp:Image ID="Image1" runat="server" Height="80" Width="80" ImageUrl='<%#bind("profile_image") %>' class="avatar" /></div>
                <cite class="fn">
                    <asp:Label ID="lblsender" runat="server" Text='<%#Eval("first_name")+" "+Eval("last_name") %>'></asp:Label></cite>
                <span class="tdate">
                    <asp:Label ID="Label1" runat="server" Text='<%#bind("send_date","{0:dd/MM/yyyy}") %>'></asp:Label></span>
                <div class="commenttext">
                    <p>
                        <asp:Label ID="Label2" runat="server" Text='<%#bind("mail_msg") %>'></asp:Label>
                    </p>
                </div>
            </div>
        </li>
    </ol>
    </ItemTemplate>
    </asp:DataList>
    <div align="center">
                <asp:Button ID="btnfirst1" runat="server" Text="<<" Visible="false" 
                    onclick="btnfirst1_Click" /><asp:Button
                    ID="btnprev1" runat="server" Text="<" Visible="false" 
                    onclick="btnprev1_Click" /><asp:Button
                        ID="btnnext1" runat="server" Text=">" Visible="false" 
                    onclick="btnnext1_Click"  /><asp:Button
                            ID="btnlast1" runat="server" Text=">>" Visible="false" 
                    onclick="btnlast1_Click"  /></div>
</asp:Content>
