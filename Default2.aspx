<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            text-align: center;
            color: #33CC33;
        }
        .auto-style8 {
            width: 100%;
            height: 340px;
        }
        .auto-style9 {
            height: 41px;
            color: #000099;
        }
        .auto-style10 {
            height: 71px;
        }
        .auto-style12 {
            height: 62px;
        }
    </style>
</head>
<body style="text-align: center; height: 470px; width: 822px; background-color: #B11B94">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong style="color: #FFFFFF">LOGIN</strong></div>
        <p>
            &nbsp;</p>
        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images - 2021-06-04T095711.659.jpeg" Height="319px" style="margin-left: 138px" Width="652px">
            <table class="auto-style8">
                <tr>
                    <td class="auto-style10" style="color: #000099">Username</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBoxUsernameLogin" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsernameLogin" ErrorMessage="Username required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;Password</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBoxPasswordLogin" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPasswordLogin" ErrorMessage="password requred" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style12">
                        <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" style="height: 26px; margin-left: 0px; text-align: left;" Text="Login" />
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" style="color: #999999" Text="Dont have an account?"></asp:Label>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" PostBackUrl="~/Default.aspx">Register</asp:LinkButton>
                    </td>
                    <td class="auto-style12"></td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
