<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="L04._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div>
        <p>HTMLInputReset<input id="Reset1" type="reset" value="reset" runat="server" onserverclick="Reset_ButtonClick" /></p>
        <p>HTMLInputButton<input id="Button1" type="button" value="button" runat="server" onserverclick="ButtonClick" /></p>
        <p>HTMLInputSubmit<input id="Submit1" type="submit" value="submit" runat="server" onserverclick="Submit_ButtonClick" /></p>
        <p>HTMLInputFile<input id="File1" type="file" runat="server" onserverclick="File_ButtonClick" /></p>
        <p>HTMLInputText<input id="Text1" type="text" runat="server" onserverchange="Common_onserverchange" /></p>
        <p>HTMLInputPassword<input id="Password1" type="password" runat="server" onserverchange="Common_onserverchange" /></p>
        <p>HTMLInputCheckBox<input id="Checkbox1" type="checkbox" runat="server" OnServerClick="Common_onserverchange" /></p>
        <p>HTMLInputRadioButton
            <input id="Radio1" type="radio" runat="server" onserverchange="Common_onserverchange" />
            <input id="Radio2" type="radio" runat="server" onserverchange="Common_onserverchange" />
        </p>
        <p>HTMLTextArea<textarea id="TextArea1" cols="20" rows="2" runat="server" onserverchange="Common_onserverchange"></textarea></p>
        
        <p>HTMLSelect
            <select id="Select1" runat="server">
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
            </select>
        </p>
    </div>

</asp:Content>
