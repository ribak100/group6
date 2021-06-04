<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 334px;
        }
        .auto-style2 {
            width: 761px;
            text-align: center;
        }
    </style>
</head>
<body style="background-color: #8D1670">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="text-align: center">
                    <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-size: xx-large; font-weight: 700" Text="LOGIN SUCCESSFUL"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Default2.aspx">go back</asp:LinkButton>
                </td>
                <td style="text-align: right">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
