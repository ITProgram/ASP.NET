<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="L10.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <script type="text/javascript">
            function add() {
                let x = $get("TextBoxX").value;
                let y = $get("TextBoxY").value;
                L10.WebService1.Add(x, y, setResult);
            }
            function sub() {
                let x = $get("TextBoxX").value;
                let y = $get("TextBoxY").value;
                L10.WebService1.Sub(x, y, setResult);
            }
            function mul() {
                let x = $get("TextBoxX").value;
                let y = $get("TextBoxY").value;
                L10.WebService1.Mul(x, y, setResult);
            }
            function setResult(result) {
                $get("TextBoxResult").value = result;
            }
        </script>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/WebService1.asmx" />
            </Services>
        </asp:ScriptManager>
        <div>
            <br />
            X<asp:TextBox ID="TextBoxX" runat="server" Width="200px"></asp:TextBox>
            <br />
            Y<asp:TextBox ID="TextBoxY" runat="server" Width="200px"></asp:TextBox>
            <div>
                <input type="button" id="ButtonAdd" value="+" style="margin: 0 30px" onclick="add()" />
                <input type="button" id="ButtonSub" value="-" style="margin: 0 30px" onclick="sub()" />
                <input type="button" id="ButtonMul" value="*" style="margin: 0 30px" onclick="mul()" />
                <asp:Label ID="Label1" runat="server" Text="Результат" Style="font-size: x-large"></asp:Label>
                <asp:TextBox ID="TextBoxResult" runat="server" ReadOnly="true"></asp:TextBox>
                <br />
                <asp:Button ID="ButtonSavetoCookie" runat="server" Text="SavetoCookie" OnClick="ButtonSavetoCookie_Click" />
                <br />
                <asp:Button ID="ButtonSavetoApplication" runat="server" Text="SavetoApplication" OnClick="ButtonSavetoApplication_Click" UseSubmitBehavior="false" />
            </div>
        </div>
    </form>
</body>
</html>
