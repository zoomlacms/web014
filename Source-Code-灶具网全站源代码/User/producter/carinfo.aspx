﻿<%@ page language="C#" autoeventwireup="true" inherits="User_producter_carinfo, App_Web_1s4j0kus" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>订单信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
@media print {}{
	.Noprn {display:none;}
}
</style>
<script language="javascript"> 
	function preview()
	{
	var ido=<%=Request.QueryString["id"]%>;
	 window.open('Orderlistinfo.aspx?id='+ido+'&menu=print','打印预览','','');
	}
	
	function pageload()
	{
	<%
	 if(Request.QueryString["menu"]=="print") 
	 {
	 %>
	 bdhtml=window.document.body.innerHTML;
	 sprnstr="<!--startprint-->";
	 eprnstr="<!--endprint-->";
	 prnhtml=bdhtml.substr(bdhtml.indexOf(sprnstr)+17);
	 prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));
	 window.document.body.innerHTML=prnhtml;
	 window.print();
	 <%
	 } 
	 %>
	}
</script>
</head>
<body onload="pageload()">
<form id="form1" runat="server">
<br />
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
  <tbody id="Tbody1">
	<tr class="tdbg">
		<td colspan="5" align="center" class="title"><asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp;</td>
	</tr>
	<tr class="tdbg">
	  <td align="left" style="width: 13%; height: 23px">客户名称：<asp:Label ID="Reuser" runat="server" Text=""></asp:Label></td>
	  <td align="left" style="width: 14%; height: 23px">用 户 名：<asp:Label ID="Rename" runat="server" Text=""></asp:Label></td>
	  <td align="left" style="width: 13%; height: 23px">购买日期：<asp:Label ID="adddate" runat="server"></asp:Label></td>
	  <td width="20%" align="left" style="height: 23px">下单日期：<asp:Label ID="addtime" runat="server"></asp:Label></td>
	</tr>
	<tr class="tdbg">
	  <td align="left" style="width: 13%; height: 12px">需开发票：<asp:Label ID="Invoiceneeds" runat="server"></asp:Label></td>
	  <td align="left" style="width: 14%; height: 12px">已开发票：<asp:Label ID="Developedvotes" runat="server"></asp:Label></td>
	  <td align="left" style="width: 13%; height: 12px">付款状态：<asp:Label ID="Paymentstatus" runat="server"></asp:Label></td>
	  <td width="20%" align="left" style="height: 12px">物流状态：<asp:Label ID="StateLogistics" runat="server"></asp:Label></td>
	</tr>
  </tbody>
</table>
<br />
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
  <tbody id="Tbody3">
		<tr class="tdbg">
		  <td width="50%" height="24" align="center"><table width="100%" border="0" cellspacing="1" cellpadding="0">
			<tr>
			  <td width="28%" height="24" align="right" class="tdbgleft">收货人姓名：</td>
			  <td width="72%" height="24" align="left">&nbsp;<asp:Label ID="Reusers" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
			  <td height="24" align="right" class="tdbgleft">收货人地址：</td>
			  <td height="24" align="left">&nbsp;<asp:Label ID="Jiedao" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
			  <td height="24" align="right" class="tdbgleft">收货人邮箱：</td>
			  <td height="24" align="left">&nbsp;<asp:Label ID="Email" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
			  <td align="right" class="tdbgleft" style="height: 24px">付款方式：</td>
			  <td align="left" style="height: 24px">&nbsp;<asp:Label ID="Payment" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
			  <td height="24" align="right" class="tdbgleft">发票信息：</td>
			  <td height="24" align="left">&nbsp;<asp:Label ID="Invoice" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
			  <td height="24" align="right" class="tdbgleft">缺货处理：</td>
			  <td height="24" align="left">&nbsp;<asp:Label ID="Outstock" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
			  <td height="24" align="right" class="tdbgleft">订单类型：</td>
			  <td height="24" align="left">&nbsp;<asp:Label ID="Ordertype" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
			  <td align="right" class="tdbgleft" style="height: 24px">要求送货时间：</td>
			  <td align="left" style="height: 24px">&nbsp;<asp:Label ID="Deliverytime" runat="server" Text=""></asp:Label></td>
			</tr>
		  </table></td>
		  <td width="50%" align="center"><table width="100%" border="0" cellspacing="1" cellpadding="0">
			<tr>
			  <td width="28%" height="24" align="right" class="tdbgleft">联系电话：</td>
			  <td width="72%" height="24" align="left">&nbsp;<asp:Label ID="Phone" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
			  <td align="right" class="tdbgleft" style="height: 24px">邮政编码：</td>
			  <td align="left" style="height: 24px">&nbsp;<asp:Label ID="ZipCode" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
			  <td height="24" align="right" class="tdbgleft">收货人手机：</td>
			  <td height="24" align="left">&nbsp;<asp:Label ID="Mobile" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
			  <td height="24" align="right" class="tdbgleft">送货方式：</td>
			  <td height="24" align="left">&nbsp;<asp:Label ID="Delivery" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
			  <td height="24" align="right" class="tdbgleft">跟单员：</td>
			  <td height="24" align="left">&nbsp;<asp:Label ID="AddUser" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
			  <td height="24" align="right" class="tdbgleft">内部记录：</td>
			  <td height="24" align="left">&nbsp;<asp:Label ID="Internalrecords" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
			  <td height="24" align="right" class="tdbgleft">备注/留言：</td>
			  <td height="24" align="left">&nbsp;<asp:Label ID="Ordermessage" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
			  <td height="24" align="right" class="tdbgleft">订单状态：&nbsp;</td>
			  <td height="24" align="left">&nbsp;<asp:Label ID="OrderStatus" runat="server"></asp:Label></td>
			</tr>
		  </table></td>
		</tr>
  </tbody>
</table>
<br />
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
  <tbody id="Tbody2">
	<tr class="tdbg">
	  <td width="10%" align="center" class="title">图片</td>
	  <td width="18%" align="center" class="title">商品名称</td>
	  <td width="6%" align="center" class="title">单位</td>
	  <td width="6%" align="center" class="title">数量</td>
	  <td width="6%" align="center" class="title">市场价</td>
	  <td width="6%" align="center" class="title">实价</td>
	  <td width="6%" align="center" class="title">指定价</td>
	  <td width="6%" align="center" class="title">金额</td>
	  <td width="8%" align="center" class="title">服务期限</td>
	  <td width="12%" align="center" class="title">备注</td>
	</tr>
	
	<asp:Repeater ID="procart" runat="server" OnItemDataBound="cartinfo_ItemDataBound">
	<ItemTemplate>
	  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" <%#(Eval("Bindpro","{0}")=="")?"":"style=background-color:#E6E6E6"%>>
	  <td height="24" align="center"><%#getproimg(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%></td>
	  <td align="center"><%#Getprotype(Eval("ProID","{0}"))%> <%#Eval("proname")%></td>
	  <td width="6%" align="center"><%#Eval("Danwei") %></td>
	  <td width="6%" align="center"><%#Eval("pronum") %></td>
	  <td width="6%" align="center"><%#getjiage("1", DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%></td>
	  <td width="6%" align="center"><%#getshichangjiage(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%></td>
	  <td width="6%" align="center"><%#shijia(DataBinder.Eval(Container, "DataItem.Shijia", "{0}"))%></td>
	  <td width="6%" align="center"><%#getprojia(DataBinder.Eval(Container, "DataItem.ID", "{0}"))%></td>
	  <td width="8%" align="center"><%#qixian(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%></td>
	
	<td align="center"><%#getsend(DataBinder.Eval(Container, "DataItem.sended", "{0}"))%></td>
	  </tr>
	  
	  
	  <asp:Repeater ID="Repeater1" runat="server">
	  <ItemTemplate>     
	  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="background-color:#F6F6F6;">
	  <td height="24" align="center"><%#getproimg(Eval("id","{0}"))%></td>
	  <td align="center"><%#Getprotype(DataBinder.Eval(Container, "DataItem.id", "{0}"))%><%#Eval("proname")%></td>
	  <td width="6%" align="center"><%#getProUnit(DataBinder.Eval(Container, "DataItem.id", "{0}"))%></td>
	  <td width="6%" align="center">1</td>
	  <td width="6%" align="center"><%#getjiage("1", DataBinder.Eval(Container, "DataItem.id", "{0}"))%></td>
	  <td width="6%" align="center"><%#getjiage("2", DataBinder.Eval(Container, "DataItem.id", "{0}"))%></td>
	  <td width="6%" align="center">-</td>
	  <td width="6%" align="center">-</td>
	  <td width="8%" align="center">-</td>
	  <td align="center">-</td>
	  </tr>
	</ItemTemplate>
	</asp:Repeater>
	</ItemTemplate>
	</asp:Repeater>
	<tr class="tdbg">
	  <td height="24">&nbsp;</td>
	  <td height="24">&nbsp;</td>
	  <td height="24">&nbsp;</td>
	  <td height="24">&nbsp;</td>
	  <td height="24">&nbsp;</td>
	  <td height="24">&nbsp;</td>
	  <td height="24" align="center">合计：</td>
	  <td height="24" align="left">&nbsp;<asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
	  <td height="24">&nbsp;</td>
	  <td height="24">&nbsp;</td>
	</tr>
			<tr class="tdbg">
			  <td colspan="10" style="height: 24px">&nbsp;运费：<asp:Label ID="Label32" runat="server" Text=""></asp:Label>元
			  </td>
			</tr>
			<tr class="tdbg">
			  <td height="24" colspan="10"><table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
				  <td width="50%" align="left" style="height: 19px">
					  &nbsp;实际金额：
					  <asp:Label ID="Label29" runat="server" Text=""></asp:Label>
					  + 
					  <asp:Label ID="Label30" runat="server" Text=""></asp:Label>＝<asp:Label ID="Label31"
						  runat="server" Text=""></asp:Label>元</td>
				  <td width="50%" align="right" style="height: 19px">
					  &nbsp;已付款：<asp:Label ID="Label28" runat="server" Text=""></asp:Label>元
				  </td>
				</tr>
			  </table></td>
			</tr>
			<tr class="tdbg">
			  <td height="24" colspan="10"> <font color="red">
					  <asp:Label ID="Label33" runat="server" Text=""></asp:Label></font> </td>
			</tr>
  </tbody>
</table>
<br />
<!--endprint-->
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;" id="TABLE1">
  <tbody id="Tbody4">

	<asp:Repeater ID="procart2" runat="server">
	  <ItemTemplate></ItemTemplate>
	</asp:Repeater>
	<tr class="tdbg">
	</tr>
	<tr class="tdbg">
	</tr>
  </tbody>
</table>
</form>
</body>
</html>