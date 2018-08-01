<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormMenu.aspx.cs" Inherits="WebAppCRUDPUBS.WebFormMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink NavigateUrl="~/WebFormTitle.aspx" ID="HyperLink1" runat="server" Font-Names="Verdana">Cadastro de Livros</asp:HyperLink>
            <br />
            <asp:HyperLink NavigateUrl="~/WebFormAuthors.aspx" ID="HyperLink2" runat="server" Font-Names="Verdana">Cadastro de Autores</asp:HyperLink>
        </div>
    </form>
</body>
</html>
