<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.PayOnline.Orderpay, App_Web_5zllz4bu" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>选择支付平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" href="../../App_Themes/UserThem/style.css" rel="Stylesheet" />
 <link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
 function createImage(a, b) {
     var array = b.split(",");
      for (var i = 0; i < (array.length - 1); i++) {
          var image = document.createElement("image");
          image.display = "block";
         var id = array[i];
         image.src = a + id + ".jpg";
       var obj = document.getElementById("td_" + id).parentNode;
//        obj.style.height = "40px";
//      obj.style.lineHeight = "40px";
          obj.appendChild(image);
      }
   }
</script>
</head>
<body style="background:none">
<div class="top_pay"><div class="pay_logo"><a href="/"><img src="<%Call.Label("{$LogoUrl/}"); %>"></a></div></div>

<form id="form1" runat="server" target="_blank">
<div class="pay_select">
<div class="pay_tab">
<strong>订单提交成功，请您尽快付款！</strong><br/>
订单号:<asp:Label ID="OrderCode" runat="server" Text=""></asp:Label>&nbsp;&nbsp;
应付金额：<asp:Label ID="TxtvMoney" runat="server" Text="0"></asp:Label> 
 </div>
  <table class="border" cellspacing="1" style="margin: auto; width:100%; margin-top: 10px; height: 180px;">
    <tr class="title">
      <td style="color:#F60; font-size:14px;"><strong style="padding-left:10px;">在线支付操作(选择支付平台)</strong></td>
    </tr>
    <tr class="tdbg">
      <td style="text-align: center;"><table width="100%" cellspacing="1" cellpadding="2">
          <tr>
            <td colspan="2" style="text-align: center; vertical-align: top;">
              <asp:HiddenField ID="nfdmy" runat="server" />
              <div class="PayPlat_s">
               <asp:RadioButtonList ID="DDLPayPlat" Style="text-align: center; vertical-align: middle; text-align:left;" runat="server" RepeatDirection="Horizontal" OnDataBinding="DDLPayPlat_DataBinding" RepeatColumns="4"> </asp:RadioButtonList>
     <asp:Button ID="BtnSubmit" CssClass="i_bottom"  runat="server" Text="" OnClick="BtnSubmit_Click" />
 
               <div class="clear"></div>
               </div></td>
          </tr>
        
            
         
        </table></td>
    </tr>
  </table>


</div>





</form>
</body>
</html>