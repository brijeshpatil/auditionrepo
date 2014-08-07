<%@ page title="" language="C#" masterpagefile="~/Directors/director.master" autoeventwireup="true" inherits="Directors_Default, App_Web_yynbuuye" %>

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
    <li><a class="current">Create Project</a>
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
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
    <div style="width: 100%; margin-top: 10px">
        <fieldset class="cls">
            <div align="left" style="font-size: large; width: 100%; color: #008cc4;">
                Create Project
            </div>
            <hr />
            <table>
                <tr>
                    <td>
                        Project Name:
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="200" Height="25"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                            Display="Dynamic" ForeColor="Red" ValidationGroup="project" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        Place:
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="200" Height="25"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="project" runat="server" ErrorMessage="*"
                            Display="Dynamic" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        Start Date:
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="200" Height="25"></asp:TextBox>
                        <asp:RequiredFieldValidator  ValidationGroup="project" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                            Display="Dynamic" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        End Date:
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="200" Height="25"></asp:TextBox>
                        <asp:RequiredFieldValidator  ValidationGroup="project" ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                            Display="Dynamic" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        Project Description:
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Width="200" Height="75"></asp:TextBox>
                        <asp:RequiredFieldValidator  ValidationGroup="project" ID="RequiredFieldValidator5" runat="server" ErrorMessage="*"
                            Display="Dynamic" ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <asp:Button ID="Button1" runat="server" Text="CREATE" ValidationGroup="project" onclick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </fieldset>
    </div>
    <div style="width: 100%; margin-top: 10px">
        <fieldset class="cls">
            <div align="left" style="font-size: large; width: 100%; color: #008cc4;">
                Projects List
            </div>
            <hr />
            <asp:DataList ID="DataList1" runat="server"  RepeatColumns="8" RepeatLayout="Flow">
                <ItemTemplate>
                    <div id="toggle">
                        <h2 class="trigger">
                            <span class="span">
                                <asp:Label ID="Label1" runat="server" Text='<%#bind("project_name") %>' Style="float: left;"></asp:Label></span></h2>
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
</asp:Content>
