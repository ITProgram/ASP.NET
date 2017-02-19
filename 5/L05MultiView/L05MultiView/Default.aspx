<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="L05MultiView._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0"
        OnActiveViewChanged="MultiView1_ActiveViewChanged">
        <asp:View ID="View1" runat="server">
            <asp:Label ID="Label1" runat="server" Text="View1"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Style="margin-left: 26px" Width="222px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Style="margin-left: 50px" UseSubmitBehavior="false" Text="Button1" OnClick="Button1_Click" />
            <asp:Wizard ID="Wizard1" runat="server" Height="16px" Width="435px" ActiveStepIndex="0" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" DisplayCancelButton="True" Font-Names="Verdana" Font-Size="0.8em" OnFinishButtonClick="Wizard1_FinishButtonClick" OnActiveStepChanged="Wizard1_ActiveStepChanged" OnCancelButtonClick="Wizard1_CancelButtonClick">
                <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
                <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
                <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
                <WizardSteps>
                    <asp:WizardStep runat="server" Title="TextBox">
                        <div style="position: relative">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/image/banner11.bmp" ImageAlign="Middle" ToolTip="aaa" Width="100%" Height="100%" />
                            <div style="position: absolute; width: 100%; top: 30px;">
                                <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" GridLines="Both" Font-Size="XX-Small">
                                    <asp:TableHeaderRow>
                                        <asp:TableCell>TextBox</asp:TableCell>
                                    </asp:TableHeaderRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:TextBox ID="TextBoxStep1" runat="server" AutoPostBack="True"></asp:TextBox>
                                            <asp:Button ID="ButtonStep1" runat="server" Text="Button" UseSubmitBehavior="false" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </div>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="RadioButtonList">
                        <asp:Table ID="Table2" runat="server" HorizontalAlign="Center" GridLines="Both" Font-Size="XX-Small">
                            <asp:TableHeaderRow>
                                <asp:TableCell>RadioButtonList</asp:TableCell>
                            </asp:TableHeaderRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:RadioButtonList ID="RadioButtonList1Step2" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="0">0</asp:ListItem>




                                        <asp:ListItem Value="1">1</asp:ListItem>




                                        <asp:ListItem Value="2">2</asp:ListItem>




                                    </asp:RadioButtonList>




                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="CheckButtonList">
                        <asp:Table ID="Table3" runat="server" HorizontalAlign="Center" GridLines="Both" Font-Size="XX-Small">
                            <asp:TableHeaderRow>
                                <asp:TableCell>CheckBoxList</asp:TableCell>
                            </asp:TableHeaderRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:CheckBoxList ID="CheckBoxList1Step3" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">1</asp:ListItem>




                                        <asp:ListItem Value="2">2</asp:ListItem>




                                        <asp:ListItem Value="3">3</asp:ListItem>




                                    </asp:CheckBoxList>




                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="ListBox">
                        <asp:Table ID="Table4" runat="server" HorizontalAlign="Center" GridLines="Both" Font-Size="XX-Small">
                            <asp:TableHeaderRow>
                                <asp:TableCell>ListBox</asp:TableCell>
                            </asp:TableHeaderRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:ListBox ID="ListBox1Step4" runat="server">
                                        <asp:ListItem Value="1">111</asp:ListItem>




                                        <asp:ListItem Value="2">222</asp:ListItem>




                                        <asp:ListItem Value="3">333</asp:ListItem>




                                    </asp:ListBox>





                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Calendar">
                        <asp:Table ID="Table5" runat="server" HorizontalAlign="Center" GridLines="Both" Font-Size="XX-Small">
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Calendar ID="Calendar1Step5" runat="server"></asp:Calendar>




                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Summary">
                        <asp:Table ID="Table6" runat="server" HorizontalAlign="Center" GridLines="Both" Font-Size="XX-Small">
                            <asp:TableHeaderRow>
                                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                                    Summary
                                </asp:TableCell>
                            </asp:TableHeaderRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label ID="Label5" runat="server" Text="TextBox"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell ID="CellSummaryTextBox">
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label ID="Label6" runat="server" Text="RadioButtonList"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell ID="CellSummaryRadioButtonList">
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label ID="Label7" runat="server" Text="CheckButtonList"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell ID="CellSummaryCheckButtonList">
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label ID="Label8" runat="server" Text="ListBox"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell ID="CellSummaryListBox">
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label ID="Label9" runat="server" Text="Calendar"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell ID="CellSummaryCalendar">
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Label ID="Label2" runat="server" Text="View2"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Style="margin-left: 26px" Width="222px"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Style="margin-left: 50px" UseSubmitBehavior="false" Text="Button2" OnClick="Button2_Click" />
            <br />
            <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows" OnTreeNodeCheckChanged="TreeView1_TreeNodeCheckChanged" ShowCheckBoxes="All" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                <ParentNodeStyle Font-Bold="False" />
                <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
            <Nodes >
                <asp:TreeNode  Text="1" ImageUrl="~/image/banner11.bmp" ShowCheckBox="True" ToolTip="111111111111">
                    <asp:TreeNode Text="1.1" ShowCheckBox="True" Value="1.1"></asp:TreeNode>
                    <asp:TreeNode ShowCheckBox="True" Text="1.2" Value="1.2"></asp:TreeNode>
                    <asp:TreeNode ShowCheckBox="True" Text="1.3" Value="1.3"></asp:TreeNode>
                </asp:TreeNode>


                <asp:TreeNode ShowCheckBox="True" Text="2" Value="2">
                    <asp:TreeNode ShowCheckBox="True" Text="2.1" Value="2.1"></asp:TreeNode>
                    <asp:TreeNode ShowCheckBox="True" Text="2.2" Value="2.2"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="3" Value="3">
                    <asp:TreeNode Text="3.1" Value="3.1"></asp:TreeNode>
                </asp:TreeNode>


            </Nodes>
            </asp:TreeView>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <asp:Label ID="Label3" runat="server" Text="View3"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Style="margin-left: 26px" Width="222px"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Style="margin-left: 50px" UseSubmitBehavior="false" Text="Button3" OnClick="Button3_Click" />

            <br />
            <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
                <Items>
                    <asp:MenuItem Text="1" ToolTip="Menu1" Value="1">
                        <asp:MenuItem Text="1.1" Value="1.1"></asp:MenuItem>
                        <asp:MenuItem Text="1.2" Value="1.2"></asp:MenuItem>
                        <asp:MenuItem Text="1.3" Value="1.3"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="2" Value="2">
                        <asp:MenuItem Text="2.1" Value="2.1">
                            <asp:MenuItem Text="2.1.1" Value="2.1.1"></asp:MenuItem>
                            <asp:MenuItem Text="2.1.2" Value="2.1.2"></asp:MenuItem>
                        </asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="3" Value="3">
                        <asp:MenuItem Text="3.1" Value="3.1"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
                <StaticMenuItemStyle BorderStyle="Solid" />
                <StaticMenuStyle BorderStyle="Dotted" HorizontalPadding="50px" />
            </asp:Menu>

        </asp:View>
    </asp:MultiView>
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="MultiView" Width="66px" />

    <asp:AdRotator ID="AdRotator1" runat="server" KeywordFilter="" AdvertisementFile="~/App_Data/AdRotator.xml" />
    <asp:Button ID="ButtonAdRotatorMode" runat="server" Text="AdRotatorMode" UseSubmitBehavior="false" OnClick="ButtonAdRotatorMode_Click" />


</asp:Content>
