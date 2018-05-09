<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="New-Criminal.aspx.cs" Inherits="New_Criminal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>New Criminal Entry</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:80%; height:100%; position:relative; left:20%;">
    <center><h1>NEW CRIMINAL</h1></center>
    <br /><br />
    
    <div>
     <center> 
    <asp:Table ID="Table1" runat="server" CellPadding="10">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Text="First Name*"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Text="Middle Name*"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="Last Name*"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox ID="TextBox1" runat="server" ToolTip="RequiredFieldValidator1"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="TextBox1" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Middle Name is required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="TextBox2" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>   
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Last Name is Required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="TextBox3" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label4" runat="server" Text="Birth Place*"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server" Text="Birth Date*"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>                
                <asp:Label ID="Label17" runat="server" Text="Age*"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Birth Place is Required" ControlToValidate="TextBox4"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="TextBox4" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
            </asp:TableCell>
            <asp:TableCell>
               <asp:TextBox ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox><br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Birth Date is Required" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox117" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Age is Required" ControlToValidate="TextBox117"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Only Numbers allowed" ControlToValidate="TextBox117" ValidationExpression="\d+"></asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Mobile Number*</asp:TableCell>
            <asp:TableCell>Phone Number*</asp:TableCell>
            <asp:TableCell>Aadhar Card Number</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox><br />    
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Contact Number is Required" ControlToValidate="TextBox15"></asp:RequiredFieldValidator> <br />    
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Only Numbers allowed" ControlToValidate="TextBox15" ValidationExpression="\d+"></asp:RegularExpressionValidator>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox><br />    
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Contact Number is Required" ControlToValidate="TextBox16"></asp:RequiredFieldValidator>  <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Only Numbers allowed" ControlToValidate="TextBox16" ValidationExpression="\d+"></asp:RegularExpressionValidator>   
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox><br />    
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Aadhar Number is Required" ControlToValidate="TextBox14"></asp:RequiredFieldValidator>  <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="Enter Valid Aadhar Number" ControlToValidate="TextBox14" ValidationExpression="^[0-9]{12}$"></asp:RegularExpressionValidator> 
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Gender*</asp:TableCell>
            <asp:TableCell>Blood Group*</asp:TableCell>
        </asp:TableRow>
        
         <asp:TableRow>
            <asp:TableCell>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Gender is required" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
            </asp:TableCell>
             <asp:TableCell>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>O-positive</asp:ListItem>
                    <asp:ListItem>O-negative</asp:ListItem>
                    <asp:ListItem>A-positive</asp:ListItem>
                    <asp:ListItem>A-negative</asp:ListItem>
                    <asp:ListItem>B-positive</asp:ListItem>
                    <asp:ListItem>B-negative</asp:ListItem>
                    <asp:ListItem>AB-positive</asp:ListItem>
                    <asp:ListItem>AB-negative</asp:ListItem>
                </asp:DropDownList><br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Blood group is required" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
             </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label6" runat="server" Text="Height*"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label7" runat="server" Text="Weight*"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label8" runat="server" Text="DNA*"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Height is required" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="weight is Required" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="DNA is Required" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label9" runat="server" Text="HairColour*"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                 <asp:Label ID="Label10" runat="server" Text="EyeColour*"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label11" runat="server" Text="SkinColour*"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Hair Color is required" ControlToValidate="TextBox9"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="TextBox9" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>   
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox><br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Eye Color is required" ControlToValidate="TextBox10"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="TextBox10" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>   
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox><br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Skin Color is required" ControlToValidate="TextBox11"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="Please enter only alphabets" ControlToValidate="TextBox11" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>   
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label12" runat="server" Text="Address*"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox ID="TextBox12" runat="server" TextMode="MultiLine" Width="180%" Height="100px"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Address is Required" ControlToValidate="TextBox12"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label13" runat="server" Text="Identification Mark*"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox ID="TextBox13" runat="server" TextMode="MultiLine" Width="80%" Height="50px"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Identification Mark is required" ControlToValidate="TextBox13"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label14" runat="server" Text="Finger Print*"></asp:Label>
            </asp:TableCell>
              <asp:TableCell>
                <asp:Label ID="Label15" runat="server" Text="Photo*"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:FileUpload ID="fingerprint" runat="server" accept=".jpg,.jpeg,.png"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:FileUpload ID="picture" runat="server" accept=".jpg,.jpeg,.png"/>
            </asp:TableCell>
        </asp:TableRow>
        
    </asp:Table><br />
          
     
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"></asp:Button></center>
    <br /><br />
</center>
         
  </div>  
    </asp:Content>

