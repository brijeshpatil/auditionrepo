<%@ page title="" language="C#" masterpagefile="~/Directors/director.master" autoeventwireup="true" inherits="Agents_Default, App_Web_fl50ulqq" %>

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
        .cngpwd
        {
            border: 0px solid black;
            padding: 6px;
            -webkit-box-shadow: 0px 2px 2px 2px rgba(79, 79, 79, 0.54);
            -moz-box-shadow: 0px 2px 2px 2px rgba(79, 79, 79, 0.54);
            box-shadow: 0px 2px 2px 2px rgba(79, 79, 79, 0.54);
            border-radius: 0px;
        }
        .userphoto
        {
            display: block;
            padding: 2px;
            background: #fff;
            -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.4);
            -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.4);
            box-shadow: 0 1px 3px rgba(0,0,0,0.4);
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
        .select
        {
            width: 205px;
            height: 35px;
            border-radius: 5px 5px 5px 5px;
            color: #663300;
            border: 2px solid silver;
            font-family: Verdana;
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
    <li><a>Create Project</a>
        <ul>
            <li><a href="projectcreate.aspx">Project Create</a></li>
            <li><a href="auditioncreate.aspx">Auditions Create</a> </li>
        </ul>
    </li>
    <li class="current"><a href="talents.aspx">Talents</a>
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
                Select Project</div>
            <hr />
            <div align="center">
                <asp:DropDownList ID="DropDownList1" runat="server" class="select" AutoPostBack="True"
                    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
        </fieldset>
    </div>
    <div style="width: 100%; margin-top: 10px">
        <fieldset class="cls">
            <div align="left" style="font-size: large; width: 100%; color: #008cc4;">
                View Talents</div>
            <hr />
            <div align="left">
                <asp:Label ID="Label9" runat="server" Text="Please Select Project" Visible="false"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="0px"
                    CssClass="cngpwd" CellPadding="4" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Left"
                    CellSpacing="1" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand"
                    DataKeyNames="project_id">
                    <EmptyDataTemplate>
                        <asp:Label ID="Label8" runat="server" Style="font-size: large; font-weight: bolder;"
                            Text="No Data Found...."></asp:Label>
                    </EmptyDataTemplate>
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Width="125" Height="125" CssClass="userphoto"
                                    ImageUrl='<%#bind("profile_image") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("first_name")+" "+Eval("last_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("gender")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%#Eval("state_name")+","+Eval("country_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" CommandArgument='<%#bind("user_id") %>' CommandName="moreinfo"
                                    runat="server" CssClass="a">More Info</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" CommandName="showphotos" runat="server" CssClass="a"
                                    CommandArgument='<%#bind("user_id") %>'>Show Photos</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton3" CommandName="sendmail" CommandArgument='<%#bind("user_id") %>'
                                    runat="server" CssClass="a">Send Mail</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton4" runat="server" CommandName="sortlist" CssClass="a"
                                    CommandArgument='<%#Eval("user_id")+","+Eval("agent_id")+","+Eval("project_id") %>'>Sortlist</asp:LinkButton>
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
            </div>
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
                        <asp:Label ID="lbluname" runat="server" Text="Send Mail"></asp:Label>
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
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*"
                                        ControlToValidate="sdmsg" ForeColor="Red" Display="Dynamic" ValidationGroup="reply"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:Button ID="sdbtn" runat="server" Text="SEND" OnClick="sdbtn_Click" Style="margin-left: 15%;"
                                        ValidationGroup="reply" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </asp:Panel>
</asp:Content>
