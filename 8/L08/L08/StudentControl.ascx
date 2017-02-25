<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StudentControl.ascx.cs" Inherits="L08.StudentControl" %>
<div >
    <h1>StudentInfo</h1>
    <p>
        <asp:TextBox ID="TextBoxFamily" runat="server" placeholder="Фамилия"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="TextBoxName" runat="server" placeholder="Имя"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="TextBoxPatro" runat="server" placeholder="Отчество"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="TextBoxDate" runat="server" placeholder="Дата рождения"></asp:TextBox>
    </p>
    <p>
        <asp:RadioButtonList ID="RadioButtonListSex" runat="server" RepeatDirection="Horizontal" >
            <asp:ListItem Value="0" Text="Ж" ></asp:ListItem>
            <asp:ListItem Value="1" Text="М" Selected="true"></asp:ListItem>
        </asp:RadioButtonList>
    </p>
    
    <p>Факультет
        <asp:DropDownList ID="DropDownListFaculty" runat="server" >
            <asp:ListItem Value="ИТ"></asp:ListItem>
            <asp:ListItem Value="ПИМ"></asp:ListItem>
            <asp:ListItem Value="ХТиТ"></asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:TextBox ID="TextBoxYear" runat="server" placeholder="Год поступления"></asp:TextBox>
    </p>
<p>
        <asp:TextBox ID="TextBoxGroup" runat="server" placeholder="Группа"></asp:TextBox>
</p>
    <p>
        <asp:Button ID="ButtonCancel" runat="server" Text="Отказаться" UseSubmitBehavior="false"/>
        <asp:Button ID="ButtonEnter" runat="server" Text="Ввод" UseSubmitBehavior="false"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Введите фаилию" ControlToValidate="TextBoxFamily" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Введите № группы" ControlToValidate="TextBoxGroup" Display="None"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidatorTextBoxGroup" runat="server" ErrorMessage="№ группы в диапазоне 1 100" ControlToValidate="TextBoxGroup" MaximumValue="100" MinimumValue="1" Type="Integer" Display="None"></asp:RangeValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            
   

</div>
