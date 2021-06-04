<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contributors.aspx.cs" Inherits="Contributors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 275px;
            background-color: #CCCCFF;
        }
        #Reset1 {
            width: 63px;
            margin-left: 167px;
        }
        .auto-style2 {
            width: 258px;
            text-align: right;
        }
        .auto-style3 {
            width: 258px;
            text-align: right;
            height: 22px;
        }
        .auto-style4 {
            height: 22px;
        }
        .auto-style6 {
            height: 22px;
            width: 182px;
        }
        .auto-style7 {
            width: 182px;
        }
        .auto-style8 {
            width: 258px;
            text-align: right;
            height: 47px;
        }
        .auto-style9 {
            height: 47px;
        }
        .auto-style10 {
            width: 182px;
            height: 47px;
        }
    </style>
</head>
<body style="background-color: #B11B94">
    <form id="form1" runat="server">
        <p style="text-align: center; color: #FFFFFF; font-weight: 700; font-size: x-large">
            CONTRIBUTOR PAGE</p>
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style6" Height="273px" style="margin-left: 315px" Width="486px">
            <table class="auto-style1" border="0">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxUsername" runat="server" Width="237px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="Username required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="User ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxUserId" runat="server" Width="237px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxUserId" ErrorMessage="User ID Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Amount"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxAmount" runat="server" TextMode="Password" Width="237px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxAmount" ErrorMessage="Amount Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBoxAmount" ErrorMessage="Minimum amount is 100" ForeColor="Red" MinimumValue="100"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBoxDate" runat="server" style="margin-bottom: 0px" TextMode="Month" Width="237px"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxDate" ErrorMessage="Date required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Donate" />
                        <input id="Reset1" type="reset" value="reset" />
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
