<%@ page language="C#" autoeventwireup="true" inherits="User_StationGuid, App_Web_ar1kifn0" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>站群功能导航</title>
<link href="../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script src="../JS/jquery.js" type="text/javascript"></script>
<script src="../js/UserDefault.js" type="text/javascript" ></script>
</head>
<body class="user_left">
<form id="form1" runat="server">
<div class="left_font" onclick=" usershow('#td1','#span1')">
<span id="span1" class="imgbgover img_icon" onclick=" usershow('#td1','#span1')" ></span>
学校信息 </div>
<ul id="td1" class="tabtr">
<li><a href="/User/Pages/PageInfo.aspx?menu=modifile" target="main_right">学校信息</a></li>
<li style="display:none"><a href="/User/Pages/Modifyinfo.aspx" target="main_right">配置黄页</a></li>
<li><a href="Pages/ClassManage.aspx" target="main_right">栏目管理</a></li>
<li><a href="Pages/ChangeSkins.aspx"target="main_right">风格设置</a></li>
</ul>

<div class="left_font"  onclick=" usershow('#td4','#span4')"> 
<span id="span4" class="imgbgout img_icon" onclick=" usershow('#td4','#span4')" ></span>内容管理</div>
<ul id="td4" class="tabtr">
<li><a href="Pages/MyContent.aspx?ModelID=2" target="main_right">课程专业</a></li>
<li><a href="Pages/MyContent.aspx?ModelID=3" target="main_right">院校动态</a></li>
<li><a href="Pages/MyContent.aspx?ModelID=4"target="main_right">招生信息</a></li>
<li><a href="Pages/MyContent.aspx?ModelID=5" target="main_right">师资介绍</a></li>
<li><a href="Pages/MyContent.aspx?ModelID=6" target="main_right">学校相册</a></li>
<li><a href="/User/Pages/MyContent.aspx?ModelID=12" target="main_right">学校分院</a></li>
</ul>            
</form>
</body>
</html>