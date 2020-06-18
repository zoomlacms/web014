﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_User_EditUrlReWr, App_Web_acccxktx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>栏目变子站管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<style type="text/css">
.style1 { line-height: 22px; color: #1e860b; font-weight: bold; letter-spacing: 8px; background: #dbf9d9 url('../../App_Themes/AdminDefaultTheme/Images/title.gif') repeat-x 50% top; }
.style4 { background: #e0f7e5; line-height: 120%; width: 250px; }
</style>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;系统配置&gt;&gt;<a href="UrlReWr.aspx">栏目变子站管理</a></div>
  <div>
    <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
      <tr align="center">
        <td colspan="2" class="style1"> 修改栏目变子站</td>
      </tr>
      <tr class="WebPart">
        <td class="style4" align="right"> 转换记录标题名称：</td>
        <td><asp:TextBox ID="KeyName" runat="server" Width="240px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="KeyName" ErrorMessage="标题不能为空!"></asp:RequiredFieldValidator></td>
      </tr>
      <tr class="WebPart">
        <td class="style4" align="right"> 转发目标类型：<br />
          <i>打开本站页面还是打开第三方网站页面</i></td>
        <td><asp:RadioButtonList runat="server" AutoPostBack="True" RepeatDirection="Horizontal" ID="xuan" onselectedindexchanged="Unnamed1_SelectedIndexChanged" Height="16px">
            <asp:ListItem Value="0" >本站</asp:ListItem>
            <asp:ListItem Value="1">第三方网站</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="WebPart" id="two" runat="server">
        <td height="22" class="style4" align="right"> 转换形式：</td>
        <td><asp:RadioButtonList runat="server" AutoPostBack="True" RepeatDirection="Horizontal" ID="RadioButtonList1" onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" >
            <asp:ListItem Value="0" >站点转换</asp:ListItem>
            <asp:ListItem Value="1">页面转换</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="WebPart">
        <td height="22" class="style4" align="right"> 请求来源地址：</td>
        <td><asp:TextBox ID="UrlLook" runat="server" Width="311px"></asp:TextBox>
          <br />
          <asp:Label ID="Label2" runat="server" Text="&nbsp;&nbsp;<span style='color:#1e860b;'>样例：index.aspx或abc/index.aspx.子站转换则输入全路径：样例：www.zoomla.cn/default.aspx</span>"></asp:Label></td>
      </tr>
      <tr class="WebPart">
        <td height="22" class="style4" align="right"> 转换目地址标(<u>真实地址</u>)： </td>
        <td><asp:TextBox ID="UrlSend" runat="server" Width="311px"></asp:TextBox>
          <br />
          <asp:Label ID="Label1" runat="server" Text="<span style='color:#1e860b;'>&nbsp;&nbsp;输入格式为：http://www.zoomla.cn/default.aspx。</span>"></asp:Label></td>
      </tr>
      <tr class="WebPart">
        <td class="style4" align="right"> 是否可访问目标地址：</td>
        <td><asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatColumns="2">
            <asp:ListItem Selected="True" Value="1">是</asp:ListItem>
            <asp:ListItem Value="0">否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="WebPart">
        <td height="22" class="style4" align="right"><strong></strong></td>
        <td><asp:Button ID="Button1" runat="server"  Text="　修　改　" onclick="Button1_Click" />
          <asp:Button ID="Button2" runat="server" Text="返回列表" OnClientClick="javascript:location.href='UrlReWr.aspx';return false;" />
          <asp:HiddenField ID="HdnNodeID" runat="server" />
          <asp:HiddenField ID="HiddenID" runat="server" />
          <asp:HiddenField ID="HdnKeyName" runat="server" />
          <asp:HiddenField ID="HiddenUSend" runat="server" /></td>
      </tr>
    </table>
    <br />
    <div style="line-height:20px;" class="r_navigation">
      <div style="width:98%; padding:10px"> 　<b>说　　明：</b>栏目变子站功能为<u>地址交换</u>功能，此功能将改变浏览器浏览该地址的路径；实现可以从请求来源地址转发到任意转换目标地址，如果目标地址为 http:// 开头，系统将自动跳转而不会转发。<br />
        <u>转换目标地址</u>为网站的真实地址，现实存在此地址；<u>请求来源地址</u>为本站的虚假地址，此地址不存在，本功能实现目标为：将&quot;虚假&quot;地址替换成&quot;真实&quot;地址！<br />
        <b>注　　意：</b>对于多个地址交换项目，请不要将来源地址和其他重复，否则系统无法辨别目标地址；此功能请勿转发到其他站点，以防外站含有病毒，对您的电脑将产生影响！<br />
      </div>
    </div>
  </div>
</form>
</body>
</html>