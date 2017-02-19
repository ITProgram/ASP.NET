<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="L01._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  
  
    <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="Label"></asp:Label>
    <a class="btn btn-default" >
    <asp:TextBox ID="TextBox1" runat="server" Width="286px"></asp:TextBox>
    </a>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" />
    <asp:DropDownList ID="DropDownList1" runat="server" OnTextChanged="DropDownList1_TextChanged" >
        <asp:ListItem Text="1">0</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>

    </asp:DropDownList>  

</asp:Content>
