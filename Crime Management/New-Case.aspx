<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="New-Case.aspx.cs" Inherits="New_Case" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="width:80%; height:100%; position:relative; left:20%;">
    <center>
        <h1>New Case</h1>
        <div style="width:60%; height:550px;">
            <br />
            <center>
        <asp:Table ID="Table1" runat="server" Height="76px" Width="357px">
            <asp:TableRow>
                <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Text="Case Name"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Text="Case Type"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Case Name is required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br />
                </asp:TableCell>
                <asp:TableCell>
                     <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="crimeSpecification" DataValueField="crimetypeID"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT * FROM [crime_type]"></asp:SqlDataSource>
 
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label3" runat="server" Text="Crime done date"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="Criminal Captured date"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox><br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Crime Done Date is required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Criminal Captured Date" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3">
                    <asp:Label ID="Label5" runat="server" Text="Case Description"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell ColumnSpan="3">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="80%"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Case Description is required" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label6" runat="server" Text="Officer Incharge"></asp:Label>
                </asp:TableCell>
                 <asp:TableCell>Jail Name</asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label7" runat="server" Text="Jail Term"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="firstname" DataValueField="u_id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT [u_id], [firstname] FROM [Users]"></asp:SqlDataSource>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="JailName" DataTextField="Jail_Name" DataValueField="Jail_ID"></asp:DropDownList>
        <asp:SqlDataSource ID="JailName" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT [Jail_ID], [Jail_Name] FROM [Jail]"></asp:SqlDataSource>
                </asp:TableCell>
                <asp:TableCell>
                   <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Jail Term is required" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">
                    <asp:Label ID="Label8" runat="server" Text="Case Registered at"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">
                   <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Jail_Location" DataValueField="Jail_Location"></asp:DropDownList>
                   <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT [Jail_Location] FROM [Jail]"></asp:SqlDataSource>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell ColumnSpan="3"><hr /></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label9" runat="server" Text="Criminal Name"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label15" runat="server" Text="Criminal Statement"></asp:Label>
                </asp:TableCell>
       
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                  <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="CriminalName" DataTextField="firstname" DataValueField="criminal_id"></asp:DropDownList>
          <asp:SqlDataSource ID="CriminalName" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT [criminal_id], [firstname] FROM [criminal]"></asp:SqlDataSource>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Width="80%"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Criminal Statement is required" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                 </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3"><hr /></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label10" runat="server" Text="Victim Name"></asp:Label>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:Label ID="Label16" runat="server" Text="Victim Statement"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="VictimName" DataTextField="firstname" DataValueField="victim_ID"></asp:DropDownList>
         <asp:SqlDataSource ID="VictimName" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT [victim_ID], [firstname] FROM [victim]"></asp:SqlDataSource>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine" Width="80%"></asp:TextBox><br />
                </asp:TableCell>
                </asp:TableRow>
            <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label22" runat="server" Text="Date and Time of Death"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:Label ID="Label23" runat="server" Text="Reason of Death"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox12" runat="server" TextMode="DateTime"></asp:TextBox><br />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell ColumnSpan="3"><hr /></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="Label12" runat="server" Text="Witness Name"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:Label ID="Label17" runat="server" Text="Witness Statement"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                      <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource6" DataTextField="firstname" DataValueField="witness_ID"></asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT [witness_ID], [firstname] FROM [witness]"></asp:SqlDataSource>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Width="80%"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3"><hr /></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="Label14" runat="server" Text="Evidence List"></asp:Label></asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                
                 <asp:TableCell>                         
    <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="evidence" DataTextField="caseName" DataValueField="evidence_id"></asp:DropDownList>      
    <asp:SqlDataSource ID="evidence" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT [evidence_id], [caseName] FROM [Evidence]"></asp:SqlDataSource>
                 </asp:TableCell>
                </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell ColumnSpan="3"><hr /></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Case Image1</asp:TableCell>
                <asp:TableCell>Case Image2</asp:TableCell>
                <asp:TableCell>Case Image3</asp:TableCell>                
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload></asp:TableCell>
                <asp:TableCell><asp:FileUpload ID="FileUpload2" runat="server"></asp:FileUpload></asp:TableCell>
                <asp:TableCell><asp:FileUpload ID="FileUpload3" runat="server"></asp:FileUpload></asp:TableCell>                
            </asp:TableRow>
        </asp:Table><br /></center>
          <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click"></asp:Button>            
        </div>
        </center>
</div><br /><br /><br />
  </asp:Content>

