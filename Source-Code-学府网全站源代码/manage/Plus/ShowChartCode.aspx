﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_ShowChartCode, App_Web_wnr3b5xj" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>获取图表代码</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" /> 
<script src="/JS/jquery-1.5.1.min.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 扩展功能 &gt;&gt; <a href="ChartManage.aspx">图表管理</a>>>获取图表代码</div> 
<div class="spacingtitle">获取图表代码</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
	<tr class="tdbg">
		<td align="left"   style="height:30px; padding-left:60px; padding-bottom:20px; padding-top:30px;">
			<asp:TextBox ID="TxtChartCode" runat="server" TextMode="MultiLine" class="x_input" style="Width:578px;Height:60px; padding:5px;"></asp:TextBox>
		 &nbsp; <input id="Button1" type="button" value="获取图表代码" class="C_input"  onclick="copy()"/>
		<input id="Button1" type="button" value="返回列表"  class="C_input"  onclick="javascript:history.back()"  /></td>
	</tr> 
 <tr class="tdbg">
		<td align="left" style="  padding-left:60px;" >
		<span style="color:Grey">提示：点击按钮复制代码，支持以GET方式定义图表大小，如：http://url/manage/Charts/Show.aspx?Did=129&width=600&height=480<br/></span></td>
	</tr>
</table>
</form>
<script>
function copy() {
	var innerHTML = "复制失败您的浏览器不支持复制，请手动复制代码。";
	if (window.clipboardData) {
		innerHTML = "复制成功您现在可以将代码粘贴（ctrl+v）到网页中预定的模板代码位置。";

		var str = $("#TxtChartCode").html();
		while (str.indexOf("&lt;") >= 0) {
			str = str.replace("&lt;", "<");
		}
		while (str.indexOf("&gt;") >= 0) {
			str = str.replace("&gt;", ">");
		}

		window.clipboardData.setData("Text", str);
		alert(innerHTML);

	}
	else { alert(innerHTML); }
}
</script>
</body>
</html>