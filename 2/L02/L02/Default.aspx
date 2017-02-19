<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="L02._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div >
        <p>
            <asp:Button ID="Button1" runat="server" Text="Button" OnDisposed="Button1_Disposed" OnClick="Button1_Click" OnCommand="Button1_Command" OnInit="Button1_Init" OnLoad="Button1_Load" OnPreRender="Button1_PreRender" OnUnload="Button1_Unload" />
            <asp:TextBox ID="TextBox1" runat="server" Width="239px"></asp:TextBox>
            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
        </p>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </div>

</asp:Content>
