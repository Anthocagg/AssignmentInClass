<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="InClass04112024.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .ListBoxCssClass
      {
        color:GhostWhite;
        background-color:DarkOliveGreen;
        font-family:Courier New;
        font-size:large;
        font-style:italic;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox   ID="lbFruits" runat="server" CssClass="ListBoxCssClass" OnSelectedIndexChanged="lbFruits_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSourceInClass04092024" DataTextField="LastName" DataValueField="NameID">
                <asp:ListItem>Avocado</asp:ListItem>
                <asp:ListItem>Peach</asp:ListItem>
                <asp:ListItem>Plum</asp:ListItem>
                <asp:ListItem>Orange</asp:ListItem>
                <asp:ListItem>Guava</asp:ListItem>
            </asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSourceInClass04092024" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringInClass20240409 %>" ProviderName="<%$ ConnectionStrings:ConnectionStringInClass20240409.ProviderName %>" SelectCommand="SELECT [NameID], [UserName], [LastName], [FirstName] FROM [tName]"></asp:SqlDataSource>
        </div>
        <asp:Label ID="lblChosenFruit" runat="server" Text="Select a Fruit"></asp:Label>
    </form>
</body>
</html>
