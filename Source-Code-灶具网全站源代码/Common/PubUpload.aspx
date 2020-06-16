﻿<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Commons.PubUpload, App_Web_eafztl0p" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>上传文件</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/MasterPage.css" type="text/css" rel="stylesheet" />
<script src="Common.js" type="text/javascript"></script>
</head>
<body class="tdbg">
<form id="form1" runat="server" enctype="multipart/form-data">
<table style="height: 100%; border: 0; width: 100%">
<tr class="tdbg">
  <td valign="top"><asp:FileUpload ID="FupFile" runat="server" />
	<asp:Button ID="BtnUpload" runat="server" Text="上传" OnClick="BtnUpload_Click" />
	<asp:RequiredFieldValidator ID="ValFile" runat="server" ErrorMessage="请选择上传路径" ControlToValidate="FupFile"></asp:RequiredFieldValidator>
	<asp:Label ID="LblMessage" runat="server" ForeColor="red" Text=""></asp:Label>
	<asp:HiddenField ID="HiddenNodeDir" runat="server" /></td>
</tr>
</table>
</form>
</body>
</html>