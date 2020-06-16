﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_WAP_WapFileUp, App_Web_a1d2qkeh" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>上传文件</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body class="tdbg">
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
        <table style="height: 100%; border: 0; width: 100%">
            <tr class="tdbg">
                <td valign="top">
                    <asp:FileUpload ID="FupFile" runat="server" />
                    <asp:Button ID="BtnUpload"  runat="server" Text="上传" OnClick="BtnUpload_Click" />
                    <asp:RequiredFieldValidator ID="ValFile" runat="server" ErrorMessage="请选择上传路径" ControlToValidate="FupFile"></asp:RequiredFieldValidator>
                    <asp:HiddenField ID="HdnCID" runat="server" />
                    <asp:HiddenField ID="HdnType" runat="server" />
               </td>
            </tr>
        </table>
    </form>
</body>
</html>