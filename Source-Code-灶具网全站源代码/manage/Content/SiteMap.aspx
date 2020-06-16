<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.SiteMap, App_Web_ae3omzt1" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<title>ZoomLaSiteMap</title>
</head>
<body>
<form id="form1" runat="server">    
<div id="overstr"></div>
<div class="r_navigation">
	<span>��̨����</span> &gt;&gt; <span><a href="ContentManage.aspx">���ݹ���</a></span> &gt;&gt;
	<span>SiteMap���ɷ���</span>
</div>

<asp:Label ID="Label1" runat="server" Text=""><br /></asp:Label>

<table width="100%" border="0" align="center" cellpadding="6" cellspacing="0" class="border">
	<tr class="tdbg">
		<td width="34%" height="24" align="left" class="title">
			��GOOGLE�淶��XML��ͼ���ɲ���
		</td>
	</tr>
	<tr class="tdbg">
		<td height="17" align="center">
			<a href='http://www.google.com/webmasters/sitemaps/login' target='_blank'>
				<img border="0" src="../../images/google.gif" /></a>���ɷ���GOOGLE�淶��XML��ʽ��ͼҳ��
			<br />
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td height="18">
			����Ƶ�ʣ�
			<asp:DropDownList ID="DropDownList1" runat="server">
				<asp:ListItem Value="always">Ƶ���ĸ���</asp:ListItem>
				<asp:ListItem Value="hourly">ÿСʱ����</asp:ListItem>
				<asp:ListItem Value="daily" Selected="selected">ÿ�ո���</asp:ListItem>
				<asp:ListItem Value="weekly">ÿ�ܸ���</asp:ListItem>
				<asp:ListItem Value="monthly">ÿ�¸���</asp:ListItem>
				<asp:ListItem Value="yearly">ÿ�����</asp:ListItem>
				<asp:ListItem Value="never">�Ӳ�����</asp:ListItem>
			</asp:DropDownList>
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td height="35">
			ÿ��ϵͳ���ã�
			<asp:TextBox ID="TextBox1" runat="server" class="l_input" Width="29px" Height="16px">5</asp:TextBox>
			����Ϣ����Ϊ���ע���
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td height="35">
			ע �� �ȣ�<asp:TextBox ID="TextBox2" class="l_input" runat="server" Width="30px" Text="0.5"></asp:TextBox>&nbsp;0-1.0֮��,�Ƽ�ʹ��Ĭ��ֵ
		</td>
	</tr>
</table>

<table width="100%" border="0" align="center" cellpadding="6" cellspacing="0">
	<tr>
		<td height="45" align="center">
			<asp:Button ID="Button1" runat="server" Text="��ʼ������վ��ͼ" class="C_input" OnClick="Button1_Click"
				Width="180px" />&nbsp;
		</td>
	</tr>
</table>

<table width="100%" border="0" align="center" cellpadding="6" cellspacing="0" class="border">
	<tr class="tdbg">
		<td width="34%" height="24" align="left" class="title">
			��ٶ����ſ���Э��XML���ɲ���
		</td>
	</tr>
	<tr class="tdbg">
		<td height="17" align="center">
			<a href="http://news.baidu.com/newsop.html#kg" target="_blank">
				<img border="0" src="../../images/baidulogo.gif" /></a>���ɷ��ϰٶ�XML��ʽ�Ŀ�������Э��
			<br />
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td height="18">
			�������ڣ�<asp:TextBox ID="changefreq" class="l_input" runat="server" Width="36px">15</asp:TextBox>����
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td height="35">ÿ��ϵͳ���ã�<asp:TextBox ID="prioritynum" class="l_input" runat="server" Width="31px" Height="18px">50</asp:TextBox>����Ϣ����Ϊ���ע���(���100��)
		</td>
	</tr>
</table>

<table width="100%" border="0" align="center" cellpadding="6" cellspacing="0">
	<tr>
		<td height="45" align="center">
			<asp:Button ID="Submit1" runat="server" Text="��ʼ������վ��ͼ" class="C_input" OnClick="Submit1_Click" Width="180px" />
		</td>
	</tr>
</table>
</form>
</body>
</html>