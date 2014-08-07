<%@ page title="" language="C#" masterpagefile="~/Talents/talent.master" autoeventwireup="true" inherits="Talents_Default, App_Web_yp4syi5o" %>

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
        .a:hover
        {
            color: Red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
   <li><a href="viewprofile.aspx">Home</a></li>
   <li class="current"><a href="apply.aspx">Audition</a></li>
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
    <li><a href="inbox.aspx">Inbox</a> </li>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <h1 class="pagetitle">
        Apply For Auditions</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
    <div style="width: 100%; margin-top: 10px">
        <fieldset class="cls">
            <div align="left" style="font-size: large; width: 100%; color: #008cc4;">
              Apply Here For Audition</div>
            <hr />
            <asp:DataList ID="DataList1" runat="server" OnItemDataBound="DataList1_ItemDataBound"
                RepeatColumns="8" RepeatLayout="Flow" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div id="toggle">
                        <h2 class="trigger">
                            <span class="span">
                                <asp:Label ID="Label1" runat="server" Text='<%#bind("project_name") %>' Style="float: left;"></asp:Label>&nbsp;&nbsp;<asp:LinkButton
                                    ID="LinkButton1" runat="server" CssClass="a" CommandName="apply" CommandArgument='<%#bind("audition_id") %>'>Apply</asp:LinkButton></span></h2>
                        <div class="toggle_container">
                            <div class="block">
                                <p>
                                    <table border="0">
                                        <tr>
                                            <td>
                                                <b>Audition Description:</b>&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text='<%#bind("audition_desc") %>'></asp:Label>
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
</asp:Content>
