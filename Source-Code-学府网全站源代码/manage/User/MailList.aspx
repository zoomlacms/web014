﻿<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.User.MailList, App_Web_du31ah4f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>发送邮件列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/Common.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation"><%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('110')" title="帮助"></a></div>
  <%} %></div>
  <div> 
    <script type="text/javascript">
        function SelectUser()
        {
            window.open('UserList.aspx?TypeSelect=UserList&OpenerText=<%=TxtUserName.ClientID %>','','width=600,height=450,resizable=0,scrollbars=yes');

        }
    </script>
    <div class="r_navigation"> 后台管理&gt;&gt;用户管理&gt;&gt;<a href="MessageSend.aspx" >信息发送</a>&gt;&gt;邮件发送</div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr>
        <td align="center" colspan="2" class="spacingtitle"><b>邮件发送</b></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="15%" align="right" class="tdbgleft"><strong>收件人选择：</strong></td>
        <td style="text-align: left"><table>
            <tr>
              <td><asp:RadioButton ID="RadUserType0" runat="server" GroupName="UserType" Text="所有会员" Checked="True" /></td>
              <td></td>
            </tr>
            <tr>
              <td valign="top"><asp:RadioButton ID="RadUserType2" runat="server" GroupName="UserType" Text="指定用户名" /></td>
              <td><asp:TextBox class="l_input" ID="TxtUserName" runat="server" Width="260px"></asp:TextBox>
                <span style="color: blue"><=【</span><a href="javascript:void(0)" onclick="SelectUser();"><span style="color: green">会员列表</span></a>
                <span style="color: blue">】</span>多个用户名间请用<span style="color: blue">英文的逗号</span>分隔</td>
            </tr>
            <tr>
              <td valign="top"><asp:RadioButton ID="RadUserType3" runat="server" GroupName="UserType" Text="指定会员Email" /></td>
              <td><asp:TextBox class="l_input" ID="TxtEmails" runat="server" Width="260px"></asp:TextBox>多个Email间请用<span style="color: blue">英文的逗号</span>分隔</td>
            </tr>
          </table></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" class="tdbgleft"><strong>邮件主题：</strong></td>
        <td><asp:TextBox class="l_input" ID="TxtSubject" runat="server" Width="390px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="ValrSubject" runat="server" ControlToValidate="TxtSubject"  Display="None" ErrorMessage="邮件主题不能为空！"></asp:RequiredFieldValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" class="tdbgleft"><strong>邮件内容：</strong></td>
        <td><asp:TextBox class="x_input" ID="TxtContent" runat="server" Height="158px" TextMode="MultiLine" Width="476px"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" class="tdbgleft"><strong>发件人：</strong></td>
        <td><asp:TextBox class="l_input" ID="TxtSenderName" runat="server" Width="350px"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" class="tdbgleft"><strong>回复Email：</strong></td>
        <td><asp:TextBox class="l_input" ID="TxtSenderEmail" runat="server" Width="350px"></asp:TextBox>
          <asp:RegularExpressionValidator ID="ValeSenderEmail" runat="server" ControlToValidate="TxtSenderEmail"  Display="None" ErrorMessage="回复Email不是有效的Email地址！" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" class="tdbgleft"><strong>邮件优先级：</strong></td>
        <td><asp:RadioButtonList ID="RadlPriority" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Value="2">高</asp:ListItem>
            <asp:ListItem Selected="True" Value="0">普通</asp:ListItem>
            <asp:ListItem Value="1">低</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbgbottom">
        <td colspan="2"><asp:Button ID="BtnSend" runat="server" Text="发送" OnClick="BtnSend_Click" CssClass="C_input" />
          &nbsp;&nbsp; &nbsp;
          <input id="Reset1" type="reset" value=" 清除 " class="C_input" /></td>
      </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"  ShowSummary="False" />
  </div>
</form>
</body>
</html>