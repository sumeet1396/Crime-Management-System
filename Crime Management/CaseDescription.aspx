<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CaseDescription.aspx.cs" Inherits="CaseDescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <div style="width:80%; height:100%; position:relative; left:10%; color:white;">
        <h3>Case Description</h3>

        <asp:Table ID="Table1" runat="server" Height="192px" Width="700px" CellPadding="20" >
            <asp:TableRow>
                <asp:TableCell>Case ID : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell>Case Name : <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell>Crime Type : <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Crime Done Date : <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell>Criminal Captured Date : <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell>Jail Term : <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3">Case Description: <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Image 1</asp:TableCell>
                <asp:TableCell>Image 2</asp:TableCell>
                <asp:TableCell>Image 3</asp:TableCell>                
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Image ID="Image2" runat="server" Width="250px" Height="250px"></asp:Image></asp:TableCell>
                <asp:TableCell><asp:Image ID="Image3" runat="server" Width="250px" Height="250px"></asp:Image></asp:TableCell>
                <asp:TableCell><asp:Image ID="Image4" runat="server" Width="250px" Height="250px"></asp:Image></asp:TableCell>                
            </asp:TableRow>
        </asp:Table>
        <br />
        <asp:Label ID="Label23" runat="server" Text="Criminal Details"></asp:Label>
        <asp:Table ID="Table3" runat="server" Width="700px">
            <asp:TableRow>
                <asp:TableCell RowSpan="2">
                    Criminal ID :<asp:Label ID="Label12" runat="server" Text=""></asp:Label><br />
                    <asp:Image ID="Image5" runat="server" Width="250px" Height="250px"></asp:Image></asp:TableCell>
                <asp:TableCell ColumnSpan="2">Criminal Name : <asp:Label ID="Label13" runat="server" Text=""></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Gender: <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell>Age: <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell>DOB: <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell RowSpan="3"><asp:Image ID="Image6" runat="server" Width="250px" Height="250px"></asp:Image><br />Finger print</asp:TableCell>
                <asp:TableCell>Birth Place: <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell ColumnSpan="2">Contact :<asp:Label ID="Label18" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3">Address :<asp:Label ID="Label19" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3">Criminal Statement : <asp:Label ID="Label29" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <h3>Victim Details</h3>
        <asp:Table ID="Table2" runat="server" Width="700px">
            <asp:TableRow>
               <asp:TableCell RowSpan="4">
                   Victim ID : <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label><br />
                   <asp:Image ID="Image1" runat="server" Width="250px" Height="250px"></asp:Image></asp:TableCell>
               <asp:TableCell ColumnSpan="2">Victim Name: <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
               <asp:TableCell>Gender : <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></asp:TableCell>
               <asp:TableCell>Age: <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></asp:TableCell>
               <asp:TableCell>DOB: <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Birth Place: <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell ColumnSpan="2">Contact :<asp:Label ID="Label22" runat="server" Text="Label"></asp:Label></asp:TableCell>           
            </asp:TableRow>
            <%--<asp:TableRow>
                <asp:TableCell>Birth Place :<asp:Label ID="Label23" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell ColumnSpan="2">Contact: <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>--%>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3">Address : <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Victim Status :<asp:Label ID="Label26" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3">Victim Statement :<asp:Label ID="Label28" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
        </asp:Table><br />
        <div class="witness" style="width:850px;">
        <asp:Label ID="Label24" runat="server" Text="Witness Details"></asp:Label>
        <asp:Table ID="Table4" runat="server" Width="700px">
            <asp:TableRow>
                <asp:TableCell RowSpan="3">Witness ID : <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label><br />
                    <asp:Image ID="Image7" runat="server" Width="250px" Height="250px"></asp:Image>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">Witness Name :<asp:Label ID="Label31" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
               <asp:TableCell>Gender : <asp:Label ID="Label32" runat="server" Text="Label"></asp:Label></asp:TableCell>
               <asp:TableCell>Age: <asp:Label ID="Label33" runat="server" Text="Label"></asp:Label></asp:TableCell>
               <asp:TableCell>DOB: <asp:Label ID="Label34" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">Contact :<asp:Label ID="Label35" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3">Address :<asp:Label ID="Label37" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3">Witness Statement :<asp:Label ID="Label38" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
        </asp:Table><br />
            <div>
                <asp:Label ID="Label27" runat="server" Text="Evidence Details"></asp:Label>
                <asp:Table ID="Table5" runat="server" Width="700px">
                    <asp:TableRow>
                        <asp:TableCell RowSpan="2">Evidence ID: <asp:Label ID="Label39" runat="server" Text="Label"></asp:Label><br />
                            <asp:Image ID="Image8" runat="server" Width="250px" Height="250px"></asp:Image>
                        </asp:TableCell>
                        <asp:TableCell>Evidence Specification : <asp:Label ID="Label40" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Used as Weapon : <asp:Label ID="Label41" runat="server" Text="Label"></asp:Label></asp:TableCell>
                        <asp:TableCell>Evidence Location : <asp:Label ID="Label42" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </div>
    </div>
    </center>
    
</asp:Content>

