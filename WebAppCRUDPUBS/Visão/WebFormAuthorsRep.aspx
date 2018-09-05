<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormAuthorsRep.aspx.cs" Inherits="WebAppCRUDPUBS.WebFormAuthorsRep" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Cadastro de Autores" Font-Names="Lucida Console"></asp:Label>
            <hr/>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1" OnItemCommand="Repeater1_ItemCommand">
                
                <HeaderTemplate>
                    <table cellpadding="1" cellspacing="1" border="0" style="font: 10pt verdana">
                    <tr> 
                        <td><font color="#0000FF">Codigo</font></td>
                        <td><font color="#0000FF">Nome</font></td>
                        <td><font color="#0000FF">Sobrenome</font></td>
                        <td><font color="#0000FF">Telefone</font></td>
                        <td><font color="#0000FF">Endereço</font></td>
                        <td><font color="#0000FF">Cidade</font></td>
                        <td><font color="#0000FF">Estado</font></td>
                        <td><font color="#0000FF">CEP</font></td>
                        <td><font color="#0000FF">Contrato</font></td>  
                    </tr>    
                    <tr height="2" bgcolor="#15880a">
                        <td colspan="9"></td>
                    </tr>
                 </HeaderTemplate>

                 <ItemTemplate>
                        <tr>
                            <td><font color="#AA00FF"> <%# DataBinder.Eval(Container.DataItem, "au_id")%> </font> </td>
                            <td><font color="#AA00FF"> <%# DataBinder.Eval(Container.DataItem, "au_name")%> </font> </td>
                            <td><font color="#AA00FF"> <%# DataBinder.Eval(Container.DataItem, "au_fname")%> </font> </td>
                            <td><font color="#AA00FF"> <%# DataBinder.Eval(Container.DataItem, "phone")%> </font> </td>
                            <td><font color="#AA00FF"> <%# DataBinder.Eval(Container.DataItem, "address")%> </font> </td>
                            <td><font color="#AA00FF"> <%# DataBinder.Eval(Container.DataItem, "city")%> </font> </td>
                            <td><font color="#AA00FF"> <%# DataBinder.Eval(Container.DataItem, "state")%> </font> </td>
                            <td><font color="#AA00FF">
                            <asp:Label ID="lblid" Visible="true" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"zip") %>'></asp:Label></font></td>
                            <td><font color="#AA00FF">
                           <asp:Checkbox ID="Checkbox1" Visible="true" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "contract")%>'></asp:Checkbox></font></td>
                        </tr>    
                 </ItemTemplate>
                 
                <FooterTemplate>
                    <tr style="background-color:#15880a">
                    <td colspan="9">
                 </FooterTemplate>
            
            </asp:Repeater>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="WebAppCRUDPUBS.Modelo.Authors" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="SelectAll" TypeName="WebAppCRUDPUBS.DAL.DALAuthors" UpdateMethod="Update"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
