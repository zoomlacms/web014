<%@ page language="C#" autoeventwireup="true" inherits="User_SetSecondPwd, App_Web_ar1kifn0" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html >

<html >
<head runat="server">
    <title></title>
    <link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link  rel="stylesheet" type="text/css" href="../App_Themes/UserThem/bidding.css" />
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
    function chack() {
        var s = document.getElementById("TxtPassword").attributes.length;
        if (s < 6) {
            alert("密码长度不能小于6位！");
            document.getElementById("TxtPassword").focus();
        }
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="us_topinfo" runat="server" id="DV_shezhi">
您现在的位置：<a title="网站首页" href="/" target="_blank">
<asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a> &gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt;<a href="SetPayPwd.aspx" target="_self">支付密码</a>&gt;&gt  支付密码设置
</div>
 
  <div style="margin-top: 10px;">
  <div class="us_seta" style="margin-top: 5px;width:100%;" runat="server" id="DV_Set" visible="false">
  <div class="us_topinfo" ><font color="red">初次使用请先设置支付密码：</font> </div>
  <table align="center" border="0">
     <tr>
          <td align="center" width="40%"><strong>密 码：</strong></td>
          <td><asp:TextBox ID="TextBox1" runat="server" TextMode="Password"  CssClass="f_input" Height="18px" onblur="chack()" /> <font style="color:Red">*</font>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ControlToValidate="TextBox1" ValidationExpression="[\S]{6,}" ErrorMessage="密码至少6位"
                                Display="Dynamic"></asp:RegularExpressionValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                SetFocusOnError="false" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
     <tr>
          <td align="center" width="40%"><strong>确认密码：</strong></td>
          <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="f_input" Height="18px" /> <font style="color:Red">*</font>
            
            <asp:CompareValidator ID="CompareValidator2" ControlToValidate="TextBox2" ControlToCompare="TextBox1" ErrorMessage="两次输入的密码不一致！" runat="server" /></td>
        </tr>
        <tr align="center">
          <td align="center" colspan="2"><asp:Button ID="Button1" runat="server" Text="保存"  
                  class="i_bottom" onclick="Button1_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="取消"  ValidationGroup="BtnCancel"  
                  class="i_bottom" onclick="Button2_Click" /></td>
        </tr>
  </table>
  </div>
    
    <div class="us_seta" style="margin-top: 5px;width:100%;" runat="server" id="DV_show">
      <table align="center" border="0">
        <tr>
          <td align="center" width="40%"><strong>原 密 码：</strong></td>
          <td><asp:TextBox ID="TxtOldPassword" runat="server" CssClass="f_input" Height="18px" TextMode="Password" />
           </td>
        </tr>
        <tr>
          <td align="center" width="40%"><strong>新 密 码：</strong></td>
          <td><asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"  CssClass="f_input" Height="18px" onblur="chack()" /> <font style="color:Red">*</font>
           <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassword" runat="server"
                                ControlToValidate="TxtPassword" ValidationExpression="[\S]{6,}" ErrorMessage="密码至少6位"
                                Display="Dynamic"></asp:RegularExpressionValidator>
             <asp:RequiredFieldValidator ID="ReqTxtPassword" runat="server" ControlToValidate="TxtPassword"
                                SetFocusOnError="false" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
          <td align="center" width="40%"><strong>确认密码：</strong></td>
          <td><asp:TextBox ID="TxtPassword2" runat="server" TextMode="Password" CssClass="f_input" Height="18px" /> <font style="color:Red">*</font>
            
            <asp:CompareValidator ID="CompareValidator1" ControlToValidate="TxtPassword2" ControlToCompare="TxtPassword" ErrorMessage="两次输入的密码不一致！" runat="server" /></td>
        </tr>
        <tr align="center">
          <td align="center" colspan="2"><asp:Button ID="BtnSubmit" runat="server" Text="修改" OnClick="BtnSubmit_Click" class="i_bottom" />
            &nbsp;&nbsp;
            <asp:Button ID="BtnCancle" runat="server" Text="取消" OnClick="BtnCancle_Click" ValidationGroup="BtnCancel"  class="i_bottom" /></td>
        </tr>
      </table>
        <div style="width:100%; text-align:center;margin-top:10px">
      </div>
    </div>
  </div>
    </form>
</body>
</html>
