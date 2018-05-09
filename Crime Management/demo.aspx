<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="demo.aspx.cs" Inherits="demo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DropDownList ID="Drss" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>Alive</asp:ListItem>
        <asp:ListItem>Dead</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</asp:Content>

