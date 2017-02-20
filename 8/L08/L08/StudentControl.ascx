<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StudentControl.ascx.cs" Inherits="L08.StudentControl" %>
<div ">
    <h1>StudentInfo</h1>
    <p>
        <asp:TextBox ID="TextBoxFamily" runat="server" placeholder="Фамилия"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Введите фамилию" ControlToValidate="TextBoxFamily" Display="None"></asp:RequiredFieldValidator>
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
    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Группа не в диапазоне 1 100" Font-Overline="False" ControlToValidate="TextBoxGroup" MaximumValue="100" MinimumValue="1" Type="Integer" Display="None"></asp:RangeValidator>    
</p>
    <p><asp:Button ID="ButtonCancel" runat="server" Text="Отказаться" /><asp:Button ID="ButtonEnter" runat="server" Text="Ввод" />
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="ValidGr1" />

</div>
