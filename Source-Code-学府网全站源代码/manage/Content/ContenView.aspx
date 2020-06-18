<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_ContenView, App_Web_hffwpi2t" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html >
<head runat="server">
<title>查看评论</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    
</head>
<body>
<div>
<form id="form1" runat="server">
<table width="100%" border="0" cellpadding="0" cellspacing="1" id="bindset">
   <tr align="center">
    <td colspan="4" class="spacingtitle"><strong>查看评论信息</strong>
    </td>
   </tr>
</table> 
  <div class="clearbox" > </div>
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
    <asp:Repeater ID="Repeater1" runat="server" >
       <ItemTemplate>
        <tr class="tdbg">
            <td class="tdbgleft" style="width: 15%; height: 25px;" align="right"> 评论ID： </td>
            <td style="width: 35%; height: 25px;" align="left"><%#Eval("CommentID") %> &nbsp;
            <td class="tdbgleft" style="width: 15%; height: 22px" align="right">标题：</td>
            <td  style="width: 35%" align="left"><%#Eval("Title")%></td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" style="width: 15%; height: 42px" align="right"> 评论内容： </td>
            <td style="width: 35%" align="left"><%#Eval("Contents")%></td>
            <td class="tdbgleft" style="width: 15%; height: 42px" align="right">评论时间：</td>
            <td  style="width: 35%" align="left"><%#Eval("CommentTime")%></td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 评论分数： </td>
            <td style="width: 35%" align="left"><%#Eval("Score")%></td>
            <td class="tdbgleft" style="width: 15%; height: 22px" align="right">审核状态：</td>
            <td  style="width: 35%" align="left"><%#Eval("status")%></td>
        </tr>
       </ItemTemplate>
    </asp:Repeater>
</table>
<div style="text-align:center;"> <input id="Button1" type="button" value="返回"  class="C_input"  onclick="javascript:history.back()"  />
</form>
</body>
</html>