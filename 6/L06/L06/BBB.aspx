<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BBB.aspx.cs" Inherits="L06.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
       <p>Фамилия<asp:TextBox ID="TextBoxF" runat="server"></asp:TextBox></p> 
         <p>Имя <asp:TextBox ID="TextBoxN" runat="server"></asp:TextBox></p> 
         <p> Отчество<asp:TextBox ID="TextBoxLN" runat="server"></asp:TextBox></p> 
         <p> Дата<asp:TextBox ID="TextBoxData" runat="server"></asp:TextBox></p> 
         <p> e-mail<asp:TextBox ID="TextBoxEMail" runat="server"></asp:TextBox></p> 
         <p> сумма1<asp:TextBox ID="TextBoxSum" runat="server"></asp:TextBox></p> 
         <p> пароль<asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password"></asp:TextBox></p> 
         <p> <asp:Button ID="Button1" runat="server" Text="Button" /></p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorF" runat="server" ErrorMessage="Введите фамилию" ControlToValidate="TextBoxF" Display="None"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorF" runat="server" ErrorMessage="Фамилия должна быть только на русском языке и не более32" ControlToValidate="TextBoxF" Display="None" ValidationExpression="^[а-яА-ЯёЁъЪ]{1,32}$"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Введите имя" ControlToValidate="TextBoxN" Display="None"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorName" runat="server" ErrorMessage="Имя должна быть только на русском языке и не более32" ControlToValidate="TextBoxLN" Display="None" ValidationExpression="^[а-яА-ЯёЁъЪ]{1,32}$"></asp:RegularExpressionValidator>
         <asp:RequiredFieldValidator ID="RequiredFieldValidatorLName" runat="server" ErrorMessage="Введите Отчество" ControlToValidate="TextBoxN" Display="None"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorLName" runat="server" ErrorMessage="Отчество должна быть только на русском языке и не более32" ControlToValidate="TextBoxLN" Display="None" ValidationExpression="^[а-яА-ЯёЁъЪ]{1,32}$"></asp:RegularExpressionValidator>
        <asp:CompareValidator ID="CompareValidatorDate" runat="server" ErrorMessage="Дата превышает сегодня" ControlToValidate="TextBoxData" Display="None" Operator="LessThan" Type="Date" ></asp:CompareValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEMail" runat="server" ErrorMessage="Invalid e-mail" Display="None" ControlToValidate="TextBoxEMail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:RangeValidator ID="RangeValidatorSum" runat="server" ErrorMessage="Сумма вне диапазона [1000 2000]" ControlToValidate="TextBoxSum" Display="None" MaximumValue="2000" MinimumValue="1000" Type="Integer"></asp:RangeValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorPass1" runat="server" ErrorMessage="Строчные и прописные латинские буквы, цифры, спецсимволы. Минимум 8 символов" ControlToValidate="TextBoxPass" Display="None" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator>
        <asp:CustomValidator ID="CustomValidatorPass" runat="server" ErrorMessage="Not unique symbols in password" ControlToValidate="TextBoxPass" Display="None" OnServerValidate="CustomValidatorPass_ServerValidate"></asp:CustomValidator>
        
        
        
        
        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />



    </div>
</asp:Content>
