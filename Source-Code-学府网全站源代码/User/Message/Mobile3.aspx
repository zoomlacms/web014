<%@ page language="C#" autoeventwireup="true" inherits="User_Message_Mobile, App_Web_wtzgd1id" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>手机短信</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/App_Themes/AdminDefaultTheme/index.css" />
<style>#phone_cont p{ color:#666}
#phone_cont{ color:#39F; width:120px;}
.us_seta td{ line-height:25px;}
.us_seta  strong{ font-size:14px; color:#666; }
 </style>
</head>
<body>
<form id="form1" runat="server">
  <div class="us_topinfo" style="display:none;"> 您现在的位置： <a title="网站首页" href="/" target="_blank">
    <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
    </a>&nbsp;&gt;&gt; <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&nbsp;&gt;&gt; <a title="发送手机短信" href="/User/Message/Mobile.aspx">发送手机短信</a> </div>

  <div style="margin-top:10px auto; width:500px; border:none" class="us_seta">
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="left" colspan="2"></td>
      </tr>
      
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
             <td rowspan="2" id="phone_cont" style="border:1px solid #ccc; line-height:25px; padding:0px 5px">短信内容</td> <td><table id="TblAddMessage" width="100%" visible="true" runat="server">
            <tr >
                     <td align="center" ><strong>将左侧信息免费发送到手机 (不支持小灵通)</strong></td></tr>
    <tr>
                     <td > </td></tr>
            <tr>  <td ><p style=" margin-left:10px; margin-top:30px;">手机号码：<asp:TextBox ID="TxtInceptUser" runat="server" class="l_input"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="TxtInceptUser" runat="server" ></asp:RequiredFieldValidator></p>
              </td>
            
            </tr>
          </table></td>
      </tr>

      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style=" display:none">
                <td><asp:TextBox ID="EditorContent" runat="server" Rows="10" TextMode="MultiLine" Width="99%" class="x_input"></asp:TextBox>
          <asp:RequiredFieldValidator ID="ValrContent" runat="server" ControlToValidate="EditorContent" ErrorMessage="短消息内容不能为空" Display="Dynamic">*</asp:RequiredFieldValidator></td>
      </tr>
      <tr align="center" class="tdbg">
        <td colspan="2" style="height: 50px;" align="center"><asp:Button ID="BtnSend" runat="server" Text="发送" OnClick="BtnSend_Click" class="C_input" />
          &nbsp;&nbsp;
         <span style="display:none;"> <asp:Button ID="BtnReset" runat="server" Text="清除" OnClientClick="return CheckIsMobile(document.getElementById('TxtInceptUser').value)" OnClick="BtnReset_Click" class="C_input" /></span>
          <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" /></td>
      </tr>
    </table>
</div>
  <div style=" display:none">
   <asp:Label ID="LblMobile" runat="server" Text="Label" style="color:Red;"></asp:Label>
  </div>
</form>
<script type="text/javascript">
 
	var uid='<%Call.Label("{ZL:GetuserID()/}"); %>';
	var phone='<%Call.Label("{$GetRequest(tel)$}"); %>';
var a=parent.document.getElementById('shtitle').innerHTML;
var b=parent.document.getElementById('tels').innerHTML;
document.getElementById("TxtInceptUser").value='<%Call.Label("{ZL.Label id=\"会员手机号\"/}"); %>'
document.getElementById("EditorContent").value='名称:'+a+';电话：'+b;
   </script>



</body>
</html>