<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            color: #FFFFFF;
            background-color: #990D68;
        }
        #Reset1 {
            width: 87px;
            margin-left: 81px;
            color: #FFFFFF;
            background-color: #CC0099;
        }
        .auto-style6 {
            background-color: #CC0099;
        }
        .auto-style10 {
            background-color: #FFFFFF;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            width: 100%;
            height: 304px;
        }
        .auto-style20 {
            height: 50px;
        }
        .auto-style21 {
            text-align: right;
        }
        .auto-style22 {
            height: 50px;
            text-align: right;
        }
        .auto-style23 {
            text-align: left;
        }
        .auto-style24 {
            height: 50px;
            text-align: left;
        }
    </style>
</head>
<body style="font-weight: 700; text-align: left; background-color: #990D68;">
    <form id="form1" runat="server">
    <div class="auto-style1" style="text-align: center">
    
        REGISTRATION</div>
        <p style="background-color: #990D68">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/images - 2021-06-04T095634.381.jpeg" Height="430px" style="text-align: center; margin-left: 259px; margin-right: 6px; margin-bottom: 0px" Width="696px">
            <table class="auto-style12">
                <tr>
                    <td class="auto-style21">Name</td>
                    <td>
                        <asp:TextBox ID="TextBoxUsername" runat="server" Width="300px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsername" CssClass="auto-style10" ErrorMessage="please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Password</td>
                    <td>
                        <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" CssClass="auto-style10" ErrorMessage="please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm password </td>
                    <td>
                        <asp:TextBox ID="TextBoxVerifyPassword" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxVerifyPassword" CssClass="auto-style10" ErrorMessage="confirm password incorrect" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxVerifyPassword" ErrorMessage="both password must be same" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Age</td>
                    <td>
                        <asp:TextBox ID="TextBoxAge" runat="server" TextMode="Number" Width="300px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxAge" CssClass="auto-style10" ErrorMessage="age required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBoxAge" ErrorMessage=" age range must be btw 21-30" ForeColor="Red" MaximumValue="30" MinimumValue="21"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">E-mail ID</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="TextBoxEmailID" runat="server" style="margin-bottom: 32px" TextMode="Email" Width="300px"></asp:TextBox>
                    </td>
                    <td class="auto-style24">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxEmailID" CssClass="auto-style10" ErrorMessage="e-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmailID" CssClass="auto-style10" ErrorMessage="you must enter a valid e-mail ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">User ID</td>
                    <td>
                        <asp:TextBox ID="TextBoxUserID" runat="server" Width="300px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxUserID" ErrorMessage="user ID required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="LabelUserID" runat="server" ForeColor="Red" Text="user id must have at least 1 cap and digit and is btw 7-20 char"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button_submit" runat="server" CssClass="auto-style6" OnClick="Button_submit_Click" style="text-align: center; margin-left: 0px; color: #FFFFFF;" Text="submit" Width="91px" />
            <input id="Reset1" type="reset" value="reset" class="auto-style6" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" style="color: #000000" Text="Already have an account?"></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" PostBackUrl="~/Default2.aspx">Login</asp:LinkButton>
        </asp:Panel>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p class="auto-style11">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    </form>
</body>
</html>
