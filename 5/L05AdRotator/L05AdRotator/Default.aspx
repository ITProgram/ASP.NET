<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="L05AdRotator._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/App_Data/AdRotator.xml" KeywordFilter="" OnInit="AdRotator1_Init"/>

        <asp:Button ID="ButtonAdRotatorMode" runat="server" Text="AdRotatorMode" UseSubmitBehavior="false"  OnClick="ButtonAdRotatorMode_Click" />

    </div>
</asp:Content>
