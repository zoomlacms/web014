<%@ page language="C#" autoeventwireup="true" inherits="API_GetPageHtml, App_Web_fvvkczdz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>源码分析器</title>
<link type="text/css" href="../../App_Themes/AdminDefaultTheme/Guide.css" rel="stylesheet" />
<link type="text/css" href="../../App_Themes/AdminDefaultTheme/index.css" rel="stylesheet" />
<link type="text/css"  href="../../App_Themes/AdminDefaultTheme/main.css"rel="stylesheet" />
<script>
var xmlHttp=new XMLHttpRequest();
function updatePage() {
	//readState == 4，表示请求成功完成
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			var response = xmlHttp.responseText; //HTTP请求返回的文本内容
			document.getElementById("txtValue").value = response;
		} else if (request.status == 404) {
			//HTTP状态码为404，无法找到资源
			alert("404 Not Found");
		} else if (request.status == 403) {
			//HTTP状态码为403，资源不可用
			alert("403 Forbidden");
		} else if (request.status == 401) {
			//HTTP状态码为401，未经授权
			alert("401 Unauthorized");
		}
	}
}
function callServer() {
	//表单中获取必要的数据
	//var city = document.getElementById("city").value;
	//var state = document.getElementById("state").value;
	//只有在数据不为空时才发出请求
	//if ((city == null)(city == "")) return;
	//if ((state == null)(state == "")) return;
	//请求的URL
	var url = "ShopSource.aspx";
	//联系服务器，打开连接
	xmlHttp.open("GET", url, true); //"true"代表该请求是异步的
	//设置请求完成时的响应函数,注意这里是请求完成时，并不是响应完成时
	xmlHttp.onreadystatechange = updatePage;
	//发送请求,因为已经在请求URL中添加了要发送给服务器的数据(city和state)，所以请求中 无需再发送其他数据.
	xmlHttp.send(null);
}
</script>
</head>
<body onload="callServer()">
<form id="aspNetBuffer" method="post" runat="server">
<div class="r_navigation">后台管理&gt;&gt;系统设置 &gt;&gt;源码探测速</div>
目标网址：
  <asp:TextBox id="UrlText" runat="server" Width="400px" class="l_input">http://www.zoomla.cn</asp:TextBox>　<input type="text" id="txtValue" value="" class="l_input" />　
  <asp:Button id="WebClientButton" Runat="server" Text="用WebClient得到" onclick="WebClientButton_Click" class="C_input" Height="25px"></asp:Button>
  <asp:Button id="WebRequestButton" runat="server" Text="用WebRequest得到" onclick="WebRequestButton_Click" class="C_input" Height="25px"></asp:Button>
  <br>
  <asp:TextBox id="ContentHtml" runat="server" Width="100%" Height="360px" TextMode="MultiLine"> </asp:TextBox>
</form>
</body>
</html>