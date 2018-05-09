<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PoliceStationlist.aspx.cs" Inherits="PoliceStation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:80%; height:100%; position:relative; left:10%; margin-left:10%;">
        <center>
            <h1>Police Station</h1>
            <div style="width:720px; border:2px solid black; background-color:white; color:black;">
            <table width="700px">
                <tr>
                    <td colspan="3"><asp:Label ID="Label1" runat="server" Text="Dadar"></asp:Label> Police Station</td>
                </tr>
                <tr>
                    <td colspan="3">Cases</td>
                </tr>
                <tr>
                    <td>Murder Case : <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                    <td>Theft Case : <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                    <td>Rape Case : <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>Attempt to Murder Case : <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                    <td>Hit and Run Case : <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                    <td>Suicide Case : <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View full Detail</asp:LinkButton>
                    </td>
                    <td></td>
                </tr>
            </table>
            </div><br /><hr width="90%"/>
            <br />
            <div style="width:720px; border:2px solid black; background-color:white; color:black;">
            <table width="700px">
                <tr>
                    <td colspan="3"><asp:Label ID="Label8" runat="server" Text="Matunga"></asp:Label> Police Station</td>
                </tr>
                <tr>
                    <td colspan="3">Cases</td>
                </tr>
                <tr>
                    <td>Murder Case : <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
                    <td>Theft Case : <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td>
                    <td>Rape Case : <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>Attempt to Murder Case : <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td>
                    <td>Hit and Run Case : <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></td>
                    <td>Suicide Case : <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">View full Detail</asp:LinkButton>
                    </td>
                    <td></td>
                </tr>
            </table>
            </div><br /><hr width="90%"/>
            <br />
            <div style="width:720px; border:2px solid black; background-color:white; color:black;">
            <table width="700px">
                <tr>
                    <td colspan="3"><asp:Label ID="Label15" runat="server" Text="Andheri"></asp:Label> Police Station</td>
                </tr>
                <tr>
                    <td colspan="3">Cases</td>
                </tr>
                <tr>
                    <td>Murder Case : <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></td>
                    <td>Theft Case : <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></td>
                    <td>Rape Case : <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>Attempt to Murder Case : <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label></td>
                    <td>Hit and Run Case : <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label></td>
                    <td>Suicide Case : <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">View full Detail</asp:LinkButton>
                    </td>
                    <td></td>
                </tr>
            </table>
            </div><br /><hr width="90%"/>
            <br />
            <div style="width:720px; border:2px solid black; background-color:white; color:black;">
            <table width="700px">
                <tr>
                    <td colspan="3"><asp:Label ID="Label22" runat="server" Text="Santacruz"></asp:Label> Police Station</td>
                </tr>
                <tr>
                    <td colspan="3">Cases</td>
                </tr>
                <tr>
                    <td>Murder Case : <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label></td>
                    <td>Theft Case : <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label></td>
                    <td>Rape Case : <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>Attempt to Murder Case : <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label></td>
                    <td>Hit and Run Case : <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label></td>
                    <td>Suicide Case : <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">View full Detail</asp:LinkButton>
                    </td>
                    <td></td>
                </tr>
            </table>
            </div><br /><hr width="90%"/>
            <br />
            <div style="width:720px; border:2px solid black; background-color:white; color:black;">
            <table width="700px">
                <tr>
                    <td colspan="3"><asp:Label ID="Label29" runat="server" Text="Mahim"></asp:Label> Police Station</td>
                </tr>
                <tr>
                    <td colspan="3">Cases</td>
                </tr>
                <tr>
                    <td>Murder Case : <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label></td>
                    <td>Theft Case : <asp:Label ID="Label31" runat="server" Text="Label"></asp:Label></td>
                    <td>Rape Case : <asp:Label ID="Label32" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>Attempt to Murder Case : <asp:Label ID="Label33" runat="server" Text="Label"></asp:Label></td>
                    <td>Hit and Run Case : <asp:Label ID="Label34" runat="server" Text="Label"></asp:Label></td>
                    <td>Suicide Case : <asp:Label ID="Label35" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">View full Detail</asp:LinkButton>
                    </td>
                    <td></td>
                </tr>
            </table>
            </div><br /><hr width="90%"/>
            <br />
            <div style="width:720px; border:2px solid black; background-color:white; color:black;">
            <table width="700px">
                <tr>
                    <td colspan="3"><asp:Label ID="Label36" runat="server" Text="Byculla"></asp:Label> Police Station</td>
                </tr>
                <tr>
                    <td colspan="3">Cases</td>
                </tr>
                <tr>
                    <td>Murder Case : <asp:Label ID="Label37" runat="server" Text="Label"></asp:Label></td>
                    <td>Theft Case : <asp:Label ID="Label38" runat="server" Text="Label"></asp:Label></td>
                    <td>Rape Case : <asp:Label ID="Label39" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>Attempt to Murder Case : <asp:Label ID="Label40" runat="server" Text="Label"></asp:Label></td>
                    <td>Hit and Run Case : <asp:Label ID="Label41" runat="server" Text="Label"></asp:Label></td>
                    <td>Suicide Case : <asp:Label ID="Label42" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">View full Detail</asp:LinkButton>
                    </td>
                    <td></td>
                </tr>
            </table>
            </div><br /><hr width="90%"/>
            <br />
            <div style="width:720px; border:2px solid black; background-color:white; color:black;">
            <table width="700px">
                <tr>
                    <td colspan="3"><asp:Label ID="Label43" runat="server" Text="Fort"></asp:Label> Police Station</td>
                </tr>
                <tr>
                    <td colspan="3">Cases</td>
                </tr>
                <tr>
                    <td>Murder Case : <asp:Label ID="Label44" runat="server" Text="Label"></asp:Label></td>
                    <td>Theft Case : <asp:Label ID="Label45" runat="server" Text="Label"></asp:Label></td>
                    <td>Rape Case : <asp:Label ID="Label46" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>Attempt to Murder Case : <asp:Label ID="Label47" runat="server" Text="Label"></asp:Label></td>
                    <td>Hit and Run Case : <asp:Label ID="Label48" runat="server" Text="Label"></asp:Label></td>
                    <td>Suicide Case : <asp:Label ID="Label49" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">View full Detail</asp:LinkButton>
                    </td>
                    <td></td>
                </tr>
            </table>
            </div><br /><hr width="90%"/>
            <br />
            <div style="width:720px; border:2px solid black; background-color:white; color:black;">
            <table width="700px">
                <tr>
                    <td colspan="3"><asp:Label ID="Label50" runat="server" Text="Colaba"></asp:Label> Police Station</td>
                </tr>
                <tr>
                    <td colspan="3">Cases</td>
                </tr>
                <tr>
                    <td>Murder Case : <asp:Label ID="Label51" runat="server" Text="Label"></asp:Label></td>
                    <td>Theft Case : <asp:Label ID="Label52" runat="server" Text="Label"></asp:Label></td>
                    <td>Rape Case : <asp:Label ID="Label53" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>Attempt to Murder Case : <asp:Label ID="Label54" runat="server" Text="Label"></asp:Label></td>
                    <td>Hit and Run Case : <asp:Label ID="Label55" runat="server" Text="Label"></asp:Label></td>
                    <td>Suicide Case : <asp:Label ID="Label56" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">View full Detail</asp:LinkButton>
                    </td>
                    <td></td>
                </tr>
            </table>
            </div><br />
            <br />
            
        </center>
    </div>
</asp:Content>

