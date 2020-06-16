﻿<%@ page language="C#" title="发送信息" autoeventwireup="true" inherits="User.MessageSend, App_Web_du31ah4f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>发送信息</title>
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
      <div id="help"> <a onclick="help_show('109')" title="帮助"></a></div>
  <%} %></div>
  <div> 
    <script type="text/javascript">
        function SelectUser()
        {
            window.open('UserList.aspx?TypeSelect=UserList&OpenerText=<%=TxtInceptUser.ClientID %>','','width=600,height=450,resizable=0,scrollbars=yes');

        }
    </script>
    <div class="r_navigation"> 后台管理&gt;&gt;用户管理&gt;&gt;<a href="MessageSend.aspx" >信息发送</a>&gt;&gt;发送短消息</div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr align="center">
        <td colspan="2" class="spacingtitle"><b>发送网站短消息</b></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" style="height: 28px; width: 15%;">&nbsp;收件人：</td>
        <td><table id="TblAddMessage" width="100%" visible="true" runat="server">
            <tr>
              <td style="height: 22px"><asp:RadioButton ID="RadIncept1" runat="server" GroupName="InceptGroup" Checked="true" Text="所有会员" /></td>
              <td></td>
            </tr>
            <tr>
              <td><asp:RadioButton ID="RadIncept3" runat="server" Text="指定用户名" GroupName="InceptGroup" />
                <asp:TextBox class="l_input" ID="TxtInceptUser" runat="server" Width="326px"></asp:TextBox></td>
              <td>&nbsp;<span style="color: #0000ff">&lt;=【</span><a href="#" onclick="SelectUser();"> 
              <span style="text-decoration: underline; color: Green;">会员列表</span></a><span style="color: #0000ff">】</span></td>
            </tr>
          </table></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" style="height: 28px; width: 15%;"> 短消息主题：</td>
        <td><asp:TextBox class="l_input" ID="TxtTitle" runat="server" Width="300px"> </asp:TextBox>
          <font color=red>*</font>
          <asp:RequiredFieldValidator ID="ValrTitle" runat="server" ControlToValidate="TxtTitle" ErrorMessage="短消息主题不能为空" Display="Dynamic"></asp:RequiredFieldValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" style="height: 23px; width: 15%;"> 短消息内容：</td>
        <td><asp:TextBox class="x_input" ID="EditorContent" runat="server" Rows="10" TextMode="MultiLine" Width="99%"></asp:TextBox>
          <font color=red>*</font>
          <asp:RequiredFieldValidator ID="ValrContent" runat="server" ControlToValidate="EditorContent" ErrorMessage="短消息内容不能为空" Display="Dynamic"></asp:RequiredFieldValidator></td>
      </tr>
      <tr align="center" class="tdbg">
        <td colspan="2" style="height: 50px;" align="center"><asp:HiddenField ID="HdnMessageID" runat="server" />
          &nbsp;
          <asp:Button ID="BtnSend" runat="server" Text="发送" OnClick="BtnSend_Click" class="C_input" />
          &nbsp;                
          &nbsp;
          <asp:Button ID="BtnReset" runat="server" Text="清除" OnClick="BtnReset_Click" class="C_input" />
          <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>