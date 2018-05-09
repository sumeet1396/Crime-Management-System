<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EvidenceList.aspx.cs" Inherits="EvidenceList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:80%; height:100%; position:relative; left:20%;">
        <center>
           <asp:Table ID="Table1" runat="server">
               <asp:TableRow>
                   <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="Evidence Name"></asp:Label><br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:Label ID="Label5" runat="server" Text="Case Name"></asp:Label><br />
                       <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                   </asp:TableCell>
                   <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Text="is used as weapon"></asp:Label><br />
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:CheckBoxList>
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:Label ID="Label2" runat="server" Text="Evidence Location"></asp:Label><br />
                       <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:Label ID="Label4" runat="server" Text="Evidence Location"></asp:Label><br />
                       <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
                   </asp:TableCell>                                        
               </asp:TableRow>
           </asp:Table> 
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"></asp:Button>
        <br /><br />
            <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="evidence_id" DataSourceID="SqlDataSource1" BorderColor="White">
                <Columns>
                    <asp:BoundField DataField="evidence_id" HeaderText="evidence_id" InsertVisible="False" ReadOnly="True" SortExpression="evidence_id" />
                    <asp:BoundField DataField="evidence_specification" HeaderText="evidence_specification" SortExpression="evidence_specification" />
                    <asp:BoundField DataField="usedAsWeapon" HeaderText="usedAsWeapon" SortExpression="usedAsWeapon" />
                    <asp:BoundField DataField="evidence_location" HeaderText="evidence_location" SortExpression="evidence_location" />
                    <asp:ImageField DataImageUrlField="evidence_photo" HeaderText="Evidence Image">
                        <ControlStyle Height="75px" Width="75px" />
                    </asp:ImageField>
                </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT * FROM [Evidence]"></asp:SqlDataSource>
            </div>
        </center>
    </div>
</asp:Content>

