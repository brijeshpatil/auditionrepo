<%@ page title="" language="C#" masterpagefile="~/Talents/talent.master" autoeventwireup="true" inherits="Talents_Default, App_Web_xvt4uykw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="../js/tinynav.min.js"></script>
    <script type="text/javascript" src="../js/hoverIntent.js"></script>
    <script type="text/javascript" src="../js/superfish.js"></script>
    <script type="text/javascript" src="../js/supersubs.js"></script>
    <script type="text/javascript" src="../js/custom.js"></script>
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
        Change Password</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
    <div style="width: 100%; margin: 10px 10px 10px 10px;">
        <table width="100%">
            <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Enter Old Password " Style="float: left;" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="220px" Height="25px" Style="margin-left: 15px"
                        TextMode="Password" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox8"
                        ErrorMessage="Enter Current Password" ValidationGroup="cngpwd" Display="Dynamic"
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Enter New Password" Style="float: left;" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Width="220px" Height="25px" Style="margin-left: 15px"
                        TextMode="Password" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="cngpwd"
                        ControlToValidate="TextBox9" ErrorMessage="Enter New Password" Display="Dynamic"
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Confirm Password" Style="float: left;" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" Width="220px" Height="25px" Style="margin-left: 15px"
                        TextMode="Password" />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter Same Password" ControlToCompare="TextBox9"
                        ControlToValidate="TextBox10" ValidationGroup="cngpwd" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox10"
                        ErrorMessage="Enter New Password" ValidationGroup="cngpwd" Display="Dynamic"
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button2" runat="server" Text="Change Password" ValidationGroup="cngpwd"
                        CssClass="submit_button" Style="position: relative;" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
