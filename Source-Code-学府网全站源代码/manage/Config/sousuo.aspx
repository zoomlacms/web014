<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_sousuo, App_Web_3l1u0nin" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>全库搜索</title>
    <link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/Guide.css" />
    <link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/index.css" />
    <link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/main.css" />
    <script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/Common.js"></script>
</head>
<body>
<form id="form1" runat="server">
   <div class="r_navigation"><%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('67')" title="帮助"></a></div>
  <%} %>后台管理&gt;&gt;扩展功能&gt;&gt;数据维护&gt;&gt;全库搜索</div>
  <div class="spacingtitle">全库搜索</div>
<!--end录入脚本-->
<!--end上传脚本-->
<div style="clear: both;">
</div>
<table style="width: 100%;" cellpadding="2" cellspacing="1" class="border">
   <tr class="tdbg">
     <td class="tdbgleft" style="width: 200px;"><strong>搜索内容：</strong></td>
     <td><asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="x_input" 
        Height="20px"></asp:TextBox> &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="搜索"  CssClass="C_input" 
        onclick="Button1_Click"/></td>
   </tr>
</table>
<div id="list" runat="server" visible="false" style="text-align:left; font-size: 15px;
        font-weight: bold;">
  <table style="width: 100%;" cellpadding="2" cellspacing="1" class="border">
     <tr class="tdbg"> 
      <td class="tdbgleft" style="width: 200px;"><strong>查询的结果：</strong></td>
      <td>
         <asp:ListBox ID="listBox1"  runat="server" Height="220px" Width="200px" class="l_input" SelectionMode="Multiple" />
      </td>
   </tr>
  </table>
</div>
</form>
</body>
</html>

