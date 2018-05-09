<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/default.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body
        {
            margin: 0;
            padding: 0;
            background-image:url('../IMG/loginbg.png');
            background-repeat:no-repeat;
            background-size:cover;
            background-position:center;
        }
        .auto-style1 {
            font-size: 22px;
            width: 456px;
            border-radius: 20px;
            background-color: #ffffff;
            box-shadow:5px 0px 5px 0px black;
        }
    </style>
</head>
<body style="background-color:navy; color:#ffffff;">
    <form id="form1" runat="server">
    <div style="position:relative; width:100%; height: 180px;">
        <br />
        <center>
            <img src="IMG/logo.gif" width="100px" height="100px" />
            <h3>CRIME MANAGEMENT SYSTEM</h3>
        </center>
    </div>
        <center>
        <br /><br />
        <div class="auto-style1">
        <asp:Table ID="Table1" runat="server" Height="150px" Width="470px">
            <asp:TableRow>
                <asp:TableCell RowSpan="2">
                  <img src="IMG/mumbai-police_2_baxuyh.png" width="200px" height="100px" />
                </asp:TableCell>
                <asp:TableCell Height="36px">
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="70%" placeholder="Username"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" *" tooltip="Username Required" ControlToValidate="textbox1"></asp:RequiredFieldValidator>
                </asp:TableCell>
               
            </asp:TableRow>
            <asp:TableRow>
                
                <asp:TableCell Height="36px">
                    <asp:TextBox ID="TextBox2" runat="server" type="password" Height="28px" Width="70%"  placeholder="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" *" ToolTip="Password Required" ControlToValidate="textbox2"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        </div><br />
        <asp:Button ID="Button1" class="log" runat="server" Text="Login" Height="33px" Width="79px" font-size="Medium" OnClick="Button1_Click"/>
            </center>
    </form>
</body>
</html>
