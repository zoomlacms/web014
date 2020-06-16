﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_OrderDeliverinfo, App_Web_cbl2ckqe" validaterequest="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>发货状态修改</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form2" runat="server">
<div class="r_navigation">

<span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <a href="UserOrderlist.aspx">店铺订单</a>&gt;&gt; <span>物流状态处理</span>
</div>
<div class="clearbox"></div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;" align="center">
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td width="35%"> 请选择状态：<asp:HiddenField ID="hforderid" runat='server' /></td>
    <td> <asp:DropDownList ID="ddstate" runat='server' AutoPostBack="True" 
            onselectedindexchanged="ddstate_SelectedIndexChanged">
            <asp:ListItem Value="0">未安排</asp:ListItem>
            <asp:ListItem Value="1">已安排,待发货</asp:ListItem>
            <asp:ListItem Value="2">已发货,待签收</asp:ListItem>
            <asp:ListItem Value="3">本人签收</asp:ListItem>
            <asp:ListItem Value="4">他人签收</asp:ListItem>
            <asp:ListItem Value="5">未签收,未送出</asp:ListItem>
        </asp:DropDownList><span id="tips" style="color:Red" runat="server"></span>
</td></tr>
    <tbody id="fahuo" runat="server">
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td>物流信息</td>
    <td>物流公司：<asp:DropDownList runat="server" ID="DR_Company"  AppendDataBoundItems="True"  onchange="showtxt(this)" >
                            <asp:ListItem Value="0">请选择快递公司</asp:ListItem>
                            <asp:ListItem Value="77">其他</asp:ListItem>
                            </asp:DropDownList>&nbsp;&nbsp; 
                            <input id="kdgs" class="l_input" style="display:none;" type="text" runat="server"  /><br />
                                快递单号：<asp:TextBox ID="txtMSnoAlipay" runat="server" CssClass="l_input"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ErrorMessage="快递单号最少为五位" ControlToValidate="txtMSnoAlipay" 
                                    ValidationExpression="^.{5,}$"></asp:RegularExpressionValidator> </td>
     </tr>
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td>送货人：</td>
        <td><asp:DropDownList ID="ddSender" runat="server"></asp:DropDownList></td>
    </tr>
    </tbody>
    <tbody id="sign" runat="server" visible="false">
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td>代签人：</td><td><asp:TextBox ID="txtSignUser" runat="server" class="l_input" Height="19px"></asp:TextBox></td></tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td>代签人手机：</td><td><asp:TextBox ID="txtMobile" runat="server" class="l_input" Height="19px"></asp:TextBox></td></tr>
    </tbody>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td style="line-height:119px">备注：</td>
        <td><asp:TextBox ID="txtRemark" runat="server" TextMode="MultiLine" Height="119px" Width="407px" ></asp:TextBox></td></tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td>短信发送：</td><td><input id="nock" runat="server" type="checkbox" onclick="onchan()" />手机短信和E_Mail通知</td>
    </tr>
   <tbody id="con">
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td>通知内容：</td><td>
       <asp:TextBox ID="txtContent" runat="server" class="l_input" TextMode="MultiLine" Height="106px" Width="404px"></asp:TextBox>
       <font color="red">{$UserName}订货人姓名;{$SiteName}网站名称;{$Remark}为上面的备注信息; {$OrderCode}为订单号;{$DeliveryUser}送货员;{$DeliUserMobile}送货手机</font>
      </td></tr>
    </tbody>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
       <td align="center" colspan="2">
        <asp:Button ID="btn" runat="server" Text="保存" onclick="btn_Click" class="C_input" /><span id="sptip" runat="server" style="color:Red"></span></td></tr>
</table>
<script>
    function onchan() {
        if (document.getElementById("nock").checked) {
            document.getElementById("con").style.display = "";
        } else {
            document.getElementById("con").style.display = "none";
        }
    }
</script>
<div class="clearbox"></div>
<div class="clearbox"></div>
</form>
<script type="text/javascript">
    function showtxt(obj) {
        if (obj.options[obj.selectedIndex].value == "77") {
            var txt = document.getElementById("kdgs");
            txt.style.display = "";

        } else {
            var txt = document.getElementById("kdgs");
            txt.style.display = "none";
        }
    }
</script>
</body>
</html>
