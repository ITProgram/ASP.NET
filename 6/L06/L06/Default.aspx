<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="L06._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div>
            <p>
                <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="ValidationGroup1" CausesValidation="True"></asp:TextBox>
                <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="ValidationGroup1" CausesValidation="True">
                    <asp:ListItem Value="1" Text="1"></asp:ListItem>
                    <asp:ListItem Value="2" Text="2"></asp:ListItem>
                    <asp:ListItem Value="3" Text="3"></asp:ListItem>
                </asp:DropDownList>
            </p>
            <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="ValidationGroup1" />
        </div>
        <div>
            <p>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1TextBox" runat="server" ErrorMessage="TextBox is empty" ValidationGroup="ValidationGroup1" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDropDownList" runat="server" ErrorMessage="DropDownList is empty" ValidationGroup="ValidationGroup1" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
        </div>

        <div>
            <asp:TextBox ID="TextBoxRangeInteger" runat="server" ValidationGroup="ValidationGroup2"></asp:TextBox>
            <asp:TextBox ID="TextBoxRangeDate" runat="server" ForeColor="Red" ValidationGroup="ValidationGroup2"></asp:TextBox>
            <p>
                <asp:Button ID="Button2" runat="server" Text="Button" />
            </p>
        </div>
        <div>
            <p>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Значение не в диапазоне 100 200" MaximumValue="200" MinimumValue="100" Type="Integer" ValidationGroup="ValidationGroup2" ForeColor="Red" ControlToValidate="TextBoxRangeInteger"></asp:RangeValidator>
            </p>
            <p>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Значение не в диапазоне [01.01.2011, 31.12.2011]" MaximumValue="31.12.2011" MinimumValue="01.01.2011" Type="Date" ValidationGroup="ValidationGroup2" ForeColor="Red" ControlToValidate="TextBoxRangeDate"></asp:RangeValidator>
            </p>
        </div>

        <div>
            Dates<asp:TextBox ID="TextBoxCompareDate1" runat="server" ValidationGroup="ValidationGroup3"></asp:TextBox>
            <asp:TextBox ID="TextBoxCompareDate2" runat="server" ValidationGroup="ValidationGroup3"></asp:TextBox>
            <p>
                <asp:Button ID="Button3" runat="server" Text="Button" />
            </p>
        </div>
        <div>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Значение 1 поля больше первого" ForeColor="Red" ValidationGroup="ValidationGroup3" ControlToCompare="TextBoxCompareDate1" ControlToValidate="TextBoxCompareDate2" Operator="GreaterThan" Type="Date"></asp:CompareValidator>
        </div>

        <div>
            Regular e-mail<asp:TextBox ID="TextBoxRegular" runat="server" ValidationGroup="ValidationGroup4"></asp:TextBox>
            <p>
                <asp:Button ID="Button4" runat="server" Text="Button" />
            </p>
        </div>
        <div>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid e-mail" ControlToValidate="TextBoxRegular" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="ValidationGroup4" Display="Dynamic"></asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:TextBox ID="TextBoxC" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Число не простое" ControlToValidate="TextBoxC" OnServerValidate="CustomValidator2_ServerValidate" ForeColor="Red" ClientValidationFunction="customV"></asp:CustomValidator>
            <asp:Button ID="Button5" runat="server" Text="Button" />
        </div>

        <script>
            function customV(ctl, args) {
                var n = parseInt(args.Value);
                for (let i = 2; i <= n / 2; i++)
                {
                    if (n % i == 0)
                {
                    //prost = false;
                        args.IsValid = false;
                        break;
                }
            }
            }
        </script>
        <div>
        </div>

    </div>
</asp:Content>
