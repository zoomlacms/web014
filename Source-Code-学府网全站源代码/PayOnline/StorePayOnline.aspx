<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Shop.StorePayOnline, App_Web_5zllz4bu" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>在线支付</title>
<link type="text/css" href="../../App_Themes/UserThem/style.css" rel="Stylesheet" />
 <link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
 <style>.PayPlat_s{ line-height:25px;}</style>

<script type="text/javascript" src="../JS/jquery.js"></script>
<script type="text/javascript">
    (function () {
        var _skin, _jQuery;
        var _search = window.location.search;
        if (_search) {
            _skin = _search.split('demoSkin=')[1];
            _jQuery = _search.indexOf('jQuery=true') !== -1;
            if (_jQuery) document.write('<scr' + 'ipt src="../../js/jquery.js"></sc' + 'ript>');
        };
        document.write('<scr' + 'ipt src="../User/artDialog.source.js?&skin=' + (_skin || 'aero') + '"></sc' + 'ript>');
    })();
</script>
 
</head>
<body style=" background:none">
<asp:PlaceHolder ID="form1" runat="server">
<div style=" position:relative; width:950px; margin:auto;"> 
  <table cellspacing="0" style="margin: auto; width:100%; margin-top: 10px; height: 180px;" id="display1"  runat="server">
  <tr><td><div class="top_pay"><div class="pay_logo"><a href="/"><img src="<%Call.Label("{$LogoUrl/}"); %>"></a></div></div></td></tr>
    <tr class="title">
      <td>
      <div class="pay_select">
<div class="pay_tab" id="pay_con">
<strong>订单提交成功，请您尽快付款！</strong><br/>
订单号:<asp:Label ID="LblOid" runat="server"></asp:Label>&nbsp;&nbsp;
应付金额：<span style="display:"><asp:Label ID="LblPayMoney" runat="server"></asp:Label>&nbsp;&nbsp;</span>
<asp:Label ID="LblvMoney" runat="server"> </asp:Label><br/>
<asp:Label Text="手续费：" ID="Fee" runat="server"></asp:Label><asp:Label ID="LblRate" runat="server"></asp:Label><div id="RateTips" runat="server"></div>
 </div>
    <div class="PayPlat_s">
    <p>请选择在线支付的方式：<br/>
    <asp:Label ID="Plat" Text="支付平台：" runat="server"></asp:Label>
    <asp:Label ID="LblPayPlatform" runat="server"></asp:Label><a href="javascript:history.back()" style="margin-left:10px;">重新选择</a>
    </p>
    <asp:Label ID="LblHiddenValue" runat="server" CssClass="fleft"></asp:Label>
    </div>   
    <span style="display:none">  <asp:Label ID="Titles" runat="server"><strong>在线支付操作（确认支付款项)</strong></asp:Label></span></td>
    </tr>
    <tr>
      <td class="tdbg">
        <div class="p_center"  style=" display:">
          <table width="500" cellspacing="1" cellpadding="2">
            <tr class="tdbg" style="display:">
                <td align="right"> </td>
                <td align="left"></td>
            </tr>
            <tr class="tdbg" id="Paymoney" visible="false" runat="server" style=" color:Red; display:none">
                <td align="right" style=" font-size:20px; font-weight:bolder;">支付金额：</td>
                <td align="left"><asp:Label ID="Label1" Font-Size="20px" runat="server"></asp:Label></td>
            </tr>
            <tr class="tdbg" id="Paymoney2" runat="server" style="display:none">
                <td align="right">支付金额：</td>
                <td align="left"></td>
            </tr>
            <tr class="tdbg" id="ActualAmount1" runat="server" style="display:none">
                <td align="right">：</td>
                <td align="left"> </td>
            </tr>
            <tr class="tdbg" id="aa" runat="server" style="display:none">
                <td colspan="2" align="center" style="height: 38px;"><strong>点击“确认支付”按钮后，将进入在线支付界面。</strong></td>
            </tr>
            <tr class="tdbg" id="bb" runat="server">
                <td colspan="5" align="center" style="height: 38px; padding-left: 140px;"></td>
            </tr>
          </table>
        </div>
      </td>
    </tr>
  </table>
  <div style=" position:absolute; top:310px; left:0px;">
    <form id="Form2" runat="server">
     <%-- <input type="hidden" id="ddHid" name="ddHid" value=""  runat="server" />--%>
      &nbsp;&nbsp;<asp:Button Text="确认支付" ID="Confirm"   runat="server" OnClick="Confirm_Click" />
    <span style="display:none">  <input type="button"  id="Cancel" value="取消支付"  Class="i_bottom" runat="server" onclick="javascript:history.back()" /></span>
        <%--<asp:Button runat="server" Text="余额支付" ID="BtnXuNi" OnClick="BtnXuNi_Click1" Style="float: left;" />--%>
      <table class="border" visible="false" style="margin:auto; text-align:center;" cellspacing="1" id="Table1" runat="server">
        <tr class="title"><td><strong>选择支付方式！</strong></td></tr>
        <tr>
            <td>
              <asp:RadioButtonList ID="Payment" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="Purse" Selected="True">写意金币</asp:ListItem>
                <asp:ListItem Value="SilverCoin">写意银币</asp:ListItem>
              </asp:RadioButtonList>
            </td>
        </tr>
        <tr><td><%--<asp:Button runat="server" Text="支付" ID="Button1" Style="float: left;" onclick="Button1_Click" />--%></td></tr>
      </table>
    </form>
  </div>
</div> 
<table class="border" style="margin:auto;width:100%" cellspacing="1" id="display2" runat="server">
<tr><td><div class="top_pay"><div class="pay_logo"><img src="<%Call.Label("{$LogoUrl/}"); %>"></div></div></td></tr>
 
  <tr>
    <td class="tdbg">
      <div class="p_center">
       <div class="pay_select">
   <div class="pay_tab">
   <strong>恭喜您，下单成功！</strong><br/>
 <B>  确 认 款 项</B> </div>
   <div class="PayPlat_s" style="margin-top:10px;">
   支付方式：<asp:Label ID="zfpt" runat="server"></asp:Label><br/>
   订单号：<asp:Label ID="ddh" runat="server"></asp:Label><br/>
   支付金额：<asp:Label ID="zfje" runat="server"></asp:Label><br/>
   <asp:Label ID="fees" runat="server" Text="手续费："></asp:Label><asp:Label ID="sxf" runat="server"></asp:Label><br/>
     <table width="500" cellspacing="1" cellpadding="2" style="display:none">
          <tr class="tdbg" id="ActualAmount" runat="server">
            <td align="right">实际金额： </td>
            <td align="left"><asp:Label ID="sjhbje" runat="server"></asp:Label> </td>
          </tr>
        
        </table><input id="bt2" type="button" value="返回首页" onclick="window.location.href='/Default.aspx'" />
   </div>
  
   
   </div>
         
      </div>
    </td>
  </tr>
</table>
<table class="border" style="margin:auto;width:100%" cellspacing="1" id="display3" runat="server">
<tr><td><div class="top_pay"><div class="pay_logo"><img src="<%Call.Label("{$LogoUrl/}"); %>"></div></div></td></tr>
  <tr>
    <td class="tdbg" align="center">
      <div class="p_center">
此订单已支付!请不要重复刷新！
</div>
</td>
</tr>
</table>
</asp:PlaceHolder>
</body>
</html>