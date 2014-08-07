<%@ page title="" language="C#" masterpagefile="~/Admin/admin.master" autoeventwireup="true" inherits="Admin_Default, App_Web_hgibpgn3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<li><a href="viewagents.aspx">Home</a></li>
    <li><a href="registermember.aspx">Create Managers</a></li>
    <li class="current"><a href="viewagents.aspx">Agents</a></li>
    <li><a href="viewdirectors.aspx">Directors</a></li>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<h1 class="pagetitle">
        View Agents</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
<div style="width: 100%; margin-top: 10px">
        <fieldset class="cls">
            <div align="left" style="font-size: large; width: 100%; color: #008cc4;">
                Agents</div>
            <hr />
            <div align="left">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="0px"
                    CssClass="cngpwd" CellPadding="4" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Left"
                    CellSpacing="1" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Width="115" Height="115" CssClass="userphoto" ImageUrl='<%#bind("profile_image") %>'/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("first_name")+" "+Eval("last_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Dob">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%#bind("dob","{0:dd/MM/yyyy}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("gender")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("email_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Ph No">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%#Eval("ph_no") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%#Eval("state_name")+","+Eval("country_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Registration Date">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%#Eval("reg_date","{0:dd/MM/yyyy}")%>'></asp:Label>
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
</asp:Content>

