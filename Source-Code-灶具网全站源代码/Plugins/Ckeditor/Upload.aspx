<%@ page language="C#" autoeventwireup="true" inherits="ckeditor_Upload, App_Web_kcbmyea0" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>上传页面</title>
<script src="../../JS/jquery-1.5.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        window.parent.GetPicurl('" + UploadPath + "');
        window.parent.CKEDITOR.tools.callFunction(2, '<%=UploadPath %>', '');
    })
</script>
</head>
<body>
<form id="form1" runat="server">
</form>
</body>
</html>