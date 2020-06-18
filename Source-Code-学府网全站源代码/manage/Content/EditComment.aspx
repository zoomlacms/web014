<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_EditComment, App_Web_hffwpi2t" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE>
<html >
<head runat="server">
<title>修改评论</title> 
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div>
 <table cellpadding="2" cellspacing="1" class="border" style="background-color: white; margin-top:5px;" width="100%">
		<tr class="tdbg" >
			<td align="center" class="title" colspan="2" height="24" width="100%">
				修改评论内容
			</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right" class="tdbgleft">
				标题
			</td>
			<td>
				<asp:TextBox Enabled="false" ID="Title" class="l_input" runat="server" Width="453px"></asp:TextBox>*标题不可更改
			</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right" class="tdbgleft">
				内容
			</td>
			<td>
				<asp:TextBox ID="Txt_contents" class="l_input" runat="server" Height="107px" TextMode="MultiLine" Width="456px"></asp:TextBox>
			</td>
			<td>
				&nbsp;</td>
		</tr>
		</table>
</div>
<div style="text-align:center;">
<asp:Button  runat="server" ID="Save" CssClass="C_input"  Text="保存评论" onclick="Save_Click" /><input id="Button1" type="button" value="返回列表"  class="C_input"  onclick="javascript:history.back()"  />
</div>
</form>
</body>
</html>