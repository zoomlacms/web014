<%@ page language="C#" autoeventwireup="true" inherits="Edit_ShowEdit, App_Web_j5mbvgnt" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>选择打开文件</title>
<% m_UserInput = Request.QueryString["OpenWords"];%> 
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/UserThem/edit.css" rel="stylesheet" type="text/css" />
<base target="_self" /> 
</head>
<body>
    <form id="form1" runat="server">
    <script src="/JS/Popup.js" language="javascript" type="text/javascript"></script>
    <table width="100%" border="0" cellpadding="2" cellspacing="1">
        <tr class="tdbg">
            <td align="right">
                搜索当前目录文件：
                <asp:TextBox ID="TxtSearchKeyword" runat="server"></asp:TextBox>
                <asp:Button ID="BtnSearch" runat="server" Text="搜索" />
            </td>
        </tr>
    </table>
    <br />
    <table width="100%">
        <tr>
            <td>
                当前目录：<asp:Label ID="LblCurrentDir" runat="server"></asp:Label>
            </td>
         </tr>
    </table>
   <div class="editdocLi"> <ul>
    <asp:Repeater ID="RptFiles" runat="server" OnItemCommand="RptFiles_ItemCommand"> 
        <ItemTemplate>
            <li>   <%# System.Convert.ToInt32(Eval("type")) == 1 ? "<a  href=\"ShowUploadFiles.aspx?Dir=" + Server.UrlEncode(Request.QueryString["Dir"] + "/" + Eval("Name").ToString()) + "\" >" + Eval("Name").ToString() + "</a>" : "<span>" + "<a href='javascript:add(\"" + Request.QueryString["Dir"] + "/" + Eval("Name").ToString() + "\")' title='" + Eval("Name").ToString() + "'>" + Eval("Name").ToString() + "</a></span>"%>
               </li>
        </ItemTemplate> 
    </asp:Repeater>
    </ul>
    </div>
    <div id="dHTMLADPreview" style="z-index: 1000; left: 0px; visibility: hidden; width: 10px;
        position: absolute; top: 0px; height: 10px">
    </div>
    <script language="javascript" type="text/javascript">
        function add(obj) {
            opener.document.getElementById('<%= m_UserInput %>').value = "";
            if (obj == "") { return false; }
            opener.document.getElementById('<%= m_UserInput %>').value = obj;
            window.close();
            opener.GetWord();
        }
    </script>
    </form>
</body>
</html>
