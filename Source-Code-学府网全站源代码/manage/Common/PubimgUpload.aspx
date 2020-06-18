﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_Common_PubUpload, App_Web_inyinzzm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Assembly="Brettle.Web.NeatUpload" Namespace="Brettle.Web.NeatUpload"
    TagPrefix="Upload" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>图片上传</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 305px;
        }
        .style2
        {
            width: 86px;
        }
    </style>
</head>
<body class="tdbg">
    <form id="form1" runat="server">
    <div>
    </div>
    <Upload:InputFile ID="InputFile1" runat="server" />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上传" />
    <Upload:ProgressBar ID="pbProgressBar" Visible="false" runat="server" Width="500px"
        Height="100">
    </Upload:ProgressBar>
    </form>
</body>
</html>
