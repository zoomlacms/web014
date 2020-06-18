<%@ page language="C#" autoeventwireup="true" inherits="PayOnline_StoreOrderpay, App_Web_5zllz4bu" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>选择支付平台</title>
<link href="../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
<link href="../User/css/commentary.css" rel="stylesheet" type="text/css" />
<link href="../User/css/default1.css" rel="stylesheet" type="text/css" />
<link type="text/css" href="../../App_Themes/UserThem/style.css" rel="Stylesheet" />
 <link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<style>#DDLPayPlat{ width:auto}</style>
</head>
<body style=" background:none">
<div class="top_pay"><div class="pay_logo"><img src="<%Call.Label("{$LogoUrl/}"); %>"></div></div>
    <div class="pay_select">
    <div class="pay_tab" style="background-image:none">
<form id="form1" runat="server">
  <table class="border" align="center" cellspacing="1" width="100%">
    <tr class="title">
      <td> <strong>在线支付操作(选择支付平台)</strong></td>
    </tr>
    <tr class="tdbg">
      <td style=" text-align:center;"> 
        <table width="500px" cellspacing="1" cellpadding="2">
          <tr class="title">
            <td colspan="2" align="left"><b>平台选择</b></td>
          </tr>
          <tr class="tdbg">
            <td style="width: 30%; text-align: right;"> 支付平台：</td>
            <td style="text-align: left;"><asp:DropDownList ID="DDLPayPlat" runat="server"> </asp:DropDownList></td>
          </tr>
          <tr class="tdbg">
            <td style="width: 30%; text-align: right;"> 订单号码：</td>
            <td style="text-align: left;"><asp:Label ID="OrderCode" runat="server" Text=""></asp:Label></td>
          </tr>
          <tr class="tdbg">
            <td style="text-align: right;"> 支付金额：</td>
            <td style="text-align: left;"><asp:Label ID="TxtvMoney" runat="server" Text="0"></asp:Label>
              <asp:HiddenField ID="nfdmy" runat="server" /></td>
          </tr>
          <tr class="tdbg">
            <td colspan="2"><asp:Button ID="BtnSubmit" runat="server" CssClass="i_bottom" Text="" OnClick="BtnSubmit_Click" /></td>
          </tr>
        </table>
        <br /></td>
    </tr>
    <tr><td><label style=" color:Red;" id="error" visible="false" runat="server" >该商家未配置支付接口，您可以选择官方支付接口。</label></td></tr>
  </table>
</form>
</div>
</div>
</body>
</html>