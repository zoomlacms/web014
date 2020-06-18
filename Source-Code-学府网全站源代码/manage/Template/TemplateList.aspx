﻿<%@ page language="C#" autoeventwireup="true" enableviewstatemac="false" inherits="ZoomLa.WebSite.Manage.Template.TemplateList, App_Web_3brxpbum" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>文件管理</title>
<link type="text/css" href="/App_Themes/AdminDefaultTheme/Guide.css" rel="stylesheet" />
<link type="text/css" href="/App_Themes/AdminDefaultTheme/index.css" rel="stylesheet" />
<link type="text/css" href="/App_Themes/AdminDefaultTheme/main.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
    <div>
        <table style="width: 100%; height: 100%" border="0" cellpadding="2" cellspacing="0"
            class="border">
            <tr style="height: 100%; width: 100%">                    
                <td class="tdbg" align="left" valign="top" colspan="3" style="width: 70%;">
                    <%-- <iframe id="main_right" name="main_right" scrolling="yes" style="width: 100%; height: 100%"
                        src="SelectTemplate.aspx" frameborder="0" marginheight="0" marginwidth="1"></iframe>--%>
                    <iframe id="main_right" name="main_right" scrolling="yes" style="width: 100%;height:420px;" src="SelectTemplate.aspx" frameborder="0" marginheight="0" marginwidth="1"></iframe>
                </td>
            </tr>
            <tr class="title" style="height: 22; width: 177px">
                <td style="width: 103px" align="right">
                    文件名称：</td>
                <td align="left">
                    <input type="text" id="FileName" size="60" style="height:22px;" readonly="readOnly" class="l_input" />
                    <input type="hidden" id="ParentDirText" />
                        <asp:HiddenField ID="HdnParentDir" runat="server" />
                    </td>
                    <td align="center" style="width: 177px">
                        <input type="button"  id="BtnSubmit" class="C_input" value="　确定　" onclick="javascript:window.close();add()" />
                        <input type="button"  id="BtnCancel" class="C_input" value="　取消　" onclick="javascript:window.close();" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
<script language="javascript" type="text/javascript">
function add()
{
    window.dialogArguments.document.getElementById('<%= FilePathInput %>').value = document.getElementById('FileName').value;
}
</script>
</body>
</html>
