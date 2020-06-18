<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_SiteMap, App_Web_lmrcgmxm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<title>ZoomLaSiteMap</title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="column">
        <div class="columntitle">��ǰλ�ã����ܵ��� >><a href="SiteMap.aspx">SiteMap���ɷ���</a></div>
    
    <asp:Label ID="Label1" runat="server" Text=""><br /></asp:Label>
    
    <table width="100%" border="0" align="center" cellpadding="6" cellspacing="0" class="border">
        <tr class="tdbg" style="background-color:#F0F6FC">
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
        <tr class="tdbg">
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
        <tr class="tdbg">
            <td height="35">
                ÿ��ϵͳ���ã�
                <asp:TextBox ID="TextBox1" runat="server" Width="29px" Height="16px">5</asp:TextBox>
                ����Ϣ����Ϊ���ע���
            </td>
        </tr>
        <tr class="tdbg">
            <td height="35">
                ע �� �ȣ�<asp:TextBox ID="TextBox2" runat="server" Width="30px" Text="0.5"></asp:TextBox>&nbsp;0-1.0֮��,�Ƽ�ʹ��Ĭ��ֵ
            </td>
        </tr>
    </table>
    
    <table width="100%" border="0" align="center" cellpadding="6" cellspacing="0">
        <tr>
            <td height="45" align="center">
                <asp:Button ID="Button1" runat="server" Text="��ʼ������վ��ͼ"  CssClass="button" OnClick="Button1_Click"
                    Width="161px" />&nbsp;
            </td>
        </tr>
    </table>
    
    <table width="100%" border="0" align="center" cellpadding="6" cellspacing="0" class="border">
        <tr class="tdbg" style="background-color:#F0F6FC">
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
        <tr class="tdbg">
            <td height="18">
                �������ڣ�<asp:TextBox ID="changefreq" runat="server" Width="36px">15</asp:TextBox>
                ����
            </td>
        </tr>
        <tr class="tdbg">
            <td height="35">
                ÿ��ϵͳ���ã�<asp:TextBox ID="prioritynum" runat="server" Width="31px" Height="18px">50</asp:TextBox>
                ����Ϣ����Ϊ���ע���(���100��)
            </td>
        </tr>
    </table>
    
    <table width="100%" border="0" align="center" cellpadding="6" cellspacing="0">
        <tr>
            <td height="45" align="center">
                <asp:Button ID="Submit1" runat="server" Text="��ʼ������վ��ͼ"  CssClass="button" OnClick="Submit1_Click" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>

