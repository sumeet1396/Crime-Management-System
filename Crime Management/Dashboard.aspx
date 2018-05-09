<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Dashboard</title>
    <link href="css/default.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="bd" style="width:80%; height:100%; position:relative; left:20%;">
   <center><h1>DASHBOARD</h1></center>
    <div class="block1" style="color:black">
        <div class="t1"">
            <div class="sum">
            <center><h1 style="margin-top:-2px; ">Summary</h1></center><br />
            </div>
            <table style="margin-left:40px">
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Total Criminal Listed : " ForeColor="Black" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;&nbsp;</td>
                    <td><asp:Label ID="Label2" runat="server" Text="Total Victim Listed : " ForeColor="Black" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;&nbsp;</td>
                    <td><asp:Label ID="Label3" runat="server" Text="Total Witness Listed : " ForeColor="Black" Font-Size="X-Large"></asp:Label></td>
                </tr>
                <tr>
                    <td><br /><br /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Total Jail Listed : " ForeColor="Black" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;&nbsp;</td>
                    <td><asp:Label ID="Label5" runat="server" Text="Total Users Listed : " ForeColor="Black" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;&nbsp;</td>
                    <td><asp:Label ID="Label6" runat="server" Text="Total Cases Listed : " ForeColor="Black" Font-Size="X-Large"></asp:Label></td>
                </tr>
            </table>

             </div>
        <br /><br /><br />
        <div class="block2">
            <div class="sub-b1">
                <center><h2>Cases</h2></center>
                <div class="t2">
                    <br /><br />
                    <table style="margin-left:40px;">
                        <tr><td><asp:Label ID="Label7" runat="server" Text="Murder Case : " ForeColor="Black" Font-Size="X-Large"></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label8" runat="server" Text="Theft Case : " ForeColor="Black" Font-Size="X-Large"></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label9" runat="server" Text="Rape Case : " ForeColor="Black" Font-Size="X-Large"></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label10" runat="server" Text="Attempt to Murder Case : " ForeColor="Black" Font-Size="X-Large"></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label11" runat="server" Text="Hit and Run Case : " ForeColor="Black" Font-Size="X-Large"></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label12" runat="server" Text="Suicide Case : " ForeColor="Black" Font-Size="X-Large"></asp:Label></td></tr>
                    </table>
                </div>
            </div>
            <div class="sub-b2">
                 <center><h2>No of Cases Registered</h2></center>
                <div class="t3">
                    <br />
                    <table style="margin-left:40px;">
                        <tr><td><asp:Label ID="Label13" runat="server" Text="Dadar :" ForeColor="Black" Font-Size="X-Large"></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label14" runat="server" Text="Matunga :" ForeColor="Black" Font-Size="X-Large"></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label15" runat="server" Text="Andheri :" ForeColor="Black" Font-Size="X-Large"></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label16" runat="server" Text="Santacruz :" ForeColor="Black" Font-Size="X-Large"></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label17" runat="server" Text="Mahim : " ForeColor="Black" Font-Size="X-Large"></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label18" runat="server" Text="Arthur Road : " ForeColor="Black" Font-Size="X-Large"></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label19" runat="server" Text="Azad Maidan : " ForeColor="Black" Font-Size="X-Large"></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label20" runat="server" Text="Colaba : " ForeColor="Black" Font-Size="X-Large"></asp:Label></td></tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
        </div>
</asp:Content>

