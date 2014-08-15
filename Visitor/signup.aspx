﻿<%@ page title="" language="C#" masterpagefile="~/Visitor/visitor.master" autoeventwireup="true" inherits="Visitor_Default, App_Web_iqu3l3y1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
        
        .select
        {
            width: 205px;
            height: 35px;
            border-radius: 5px 5px 5px 5px;
            color: #663300;
            border: 2px solid silver;
            font-family: Verdana;
        }
        .txtarea
        {
            width: 200px;
            height: 100px;
            border-radius: 5px 5px 5px 5px;
            color: #663300;
            border: 2px solid silver;
            font-family: Verdana;
        }
        
        #reg
        {
            margin-top: 10px; /*  margin: 5px 0px 0px 295px;*/
        }
        
        .fromDtPos
        {
            top: 960px !important; /* change as per requirement*/
            border: 1px solid black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <li><a href="auditionbuilder.aspx">Home</a></li>
    <li><a href="talent.aspx">Talent</a></li>
    <li><a href="help.aspx">Help</a></li>
    <li><a href="aboutus.aspx">About Us</a></li>
    
    <li><a href="contactus.aspx">Contact Us</a></li>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <h1 class="pagetitle">
        Talent Sign Up</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
    <div style="width: 100%; text-align: center; background-color: #1f1b19; color: White;
        font-size: 1.2em; text-transform: uppercase; font-family: 'ambleregular'; padding: 8px 0;">
        <p style="margin-bottom: 0px; font-size: 1.2em;">
            Sign Up</p>
    </div>
    <div style="width: 100%; margin-top: 10px">
        <fieldset class="cls" style="margin-top: 15px;">
            <div align="left" style="font-size: large; width: 100%; color: #008cc4;">
                Login Details</div>
            <hr />
            <table>
                <tr>
                    <td colspan="2">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        UserName:
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtuname" 
                            runat="server" Width="200px" CssClass="select" AutoPostBack="True" 
                            ontextchanged="txtuname_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                            Display="Dynamic" ForeColor="Red" ControlToValidate="txtuname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Password:
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtpwd" runat="server" Width="200px" TextMode="Password"
                            CssClass="select"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                            Display="Dynamic" ForeColor="Red" ControlToValidate="txtpwd"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Confirm Password:
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtcnf" runat="server" Width="200px" TextMode="Password"
                            CssClass="select"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtcnf"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Write Same Password"
                            ControlToCompare="txtpwd" ControlToValidate="txtcnf" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Email Id:
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtemail" 
                            runat="server" Width="200px" CssClass="select"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Write Correct EmailId"
                            ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        Security Question:
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="drpsecq" runat="server" class="select">
                            <asp:ListItem>What is your first Vehical?</asp:ListItem>
                            <asp:ListItem>Where is your birth place?</asp:ListItem>
                            <asp:ListItem>Who is your favorite school Teacher?</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Answer:
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtans" runat="server" Width="200px" CssClass="select"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtans"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset class="cls" style="margin-top: 15px;">
            <div align="left" style="font-size: large; width: 100%; color: #008cc4;">
                Personal Information</div>
            <hr />
            <table>
                <tr>
                    <td colspan="2">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        First Name:
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtfname" runat="server" Width="200px" CssClass="select"
                            Style="margin-left: 32px;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtfname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Last Name:
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtlname" runat="server" Width="200px" CssClass="select"
                            Style="margin-left: 32px;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtlname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Date of Birth:
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtdate" runat="server" Width="200px" CssClass="select"
                            Style="margin-left: 32px;"></asp:TextBox>
                        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" PopupPosition="Right"
                            TargetControlID="txtdate" Format="dd-MMM-yyyy" CssClass="fromDtPos">
                        </cc1:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtdate"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Gender:
                    </td>
                    <td>
                        <asp:RadioButtonList ID="radiogender" runat="server" RepeatDirection="Horizontal"
                            ForeColor="#658969" Style="margin-left: 42px;">
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Address:
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtaddr" runat="server" Width="200px" TextMode="MultiLine"
                            CssClass="select" Style="margin-left: 32px;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtaddr"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Country:
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="drpcountry" runat="server" class="select"
                            AutoPostBack="True" Style="margin-left: 32px;" 
                            onselectedindexchanged="drpcountry_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        State:
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="drpstate" runat="server" class="select" AutoPostBack="True"
                            Style="margin-left: 32px;" 
                            onselectedindexchanged="drpstate_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        City:
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="drpcity" runat="server" class="select" Style="margin-left: 32px;">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Pincode:
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtpin" runat="server" MaxLength="10" Width="200px"
                            Style="margin-left: 32px;" CssClass="select"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtpin"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Mobile:
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtmob" runat="server" MaxLength="10" Width="200px"
                            Style="margin-left: 32px;" CssClass="select"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="txtmob"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Correct Mobile No"
                            ControlToValidate="txtmob" Display="Dynamic" ForeColor="Red" ValidationExpression="^[0-9]\d{9}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Profile Image:
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Width="200px" CssClass="select"
                            Style="margin-left: 32px;" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset class="cls" style="margin-top: 15px;">
            <asp:CheckBox ID="CheckBox1" runat="server" />&nbsp;&nbsp;I confirm that I have
            read and agreed to Privacy and Terms of use of AuditionBuilder
        </fieldset>
        <div id="reg" align="center">
            <table>
                <tr>
                    <td>
                        <asp:Button ID="txtreg" runat="server" Text="Register" OnClick="txtreg_Click" />
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:Button ID="txtcan" runat="server" Text="Cancel" onclick="txtcan_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
