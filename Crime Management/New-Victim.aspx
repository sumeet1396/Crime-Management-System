<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="New-Victim.aspx.cs" Inherits="New_Victim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="width:80%; height:100%; position:relative; left:20%;">  
    <center><h1>New Victim</h1></center>
    <br /><br />
    <div>
        <center>
        <asp:Table ID="Table1" runat="server" Height="226px" Width="631px">
            <asp:TableRow>
                <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Text="First Name :"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Text="Middle Name :"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="Last Name :"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="TextBox1" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Middle Name is required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="TextBox2" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Last Name is required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="TextBox3" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="DOB"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label5" runat="server" Text="Birth Place"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label9" runat="server" Text="Age"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" ></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="DOB is required" ControlToValidate="TextBox4"></asp:RequiredFieldValidator><br />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Birth Place is required" ControlToValidate="TextBox5"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="TextBox5" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Age is required" ControlToValidate="TextBox8"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="TextBox8" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label6" runat="server" Text="Mobile Number"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label10" runat="server" Text="Phone Number"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label13" runat="server" Text="Aadhar Number"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Mobile Number is Required" ControlToValidate="TextBox6"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="TextBox6" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                </asp:TableCell>
                <asp:TableCell>
                     <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Age is required" ControlToValidate="TextBox9"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="TextBox9" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                </asp:TableCell>
                <asp:TableCell>
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox><br />    
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Aadhar Number is Required" ControlToValidate="TextBox14"></asp:RequiredFieldValidator>  <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="Enter Valid Aadhar Number" ControlToValidate="TextBox14" ValidationExpression="^[0-9]{12}$"></asp:RegularExpressionValidator> 
            </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:RadioButtonList><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Gender is required" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                       <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3">
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine"  Width="80%" Height="100px"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
        
            <asp:TableRow>
                <asp:TableCell>
                        <asp:Label ID="Label11" runat="server" Text="Victim Photo"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label12" runat="server" Text="Victim Status"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                        <asp:FileUpload ID="FileUpload1" runat="server" accept=".jpg,.jpeg,.png"></asp:FileUpload>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Dead</asp:ListItem>
                        <asp:ListItem>Alive</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table><br />

            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click"></asp:Button>
        </center>
        <br /><br />
        </div>
    </asp:Content>

