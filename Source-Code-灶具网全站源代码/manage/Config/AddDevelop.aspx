<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_AddDevelop, App_Web_3l1u0nin" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>添加计划</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../../JS/chinese.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<table class="border" width="100%" cellpadding="2" cellspacing="1">
<tr>
	<td class="spacingtitle" colspan="2" align="center">添加计划</td>
</tr>
<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
	<td class="tdbgleft" style="width: 200px" >
		<strong>计划名称：</strong>
	</td>
	<td>
		<asp:TextBox ID="TxtPlanName" maxlength="200"  style="width:156px;" runat="server" ></asp:TextBox><font color="red">*</font>
		<span id="RequiredFieldValidator1" style="color:Red;visibility:hidden;">计划名称不能为空</span>
	</td>
</tr> 

<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
	<td class="tdbgleft">
		<strong>设置执行规则：</strong>
	</td>
	<td>
    <asp:DropDownList ID="TxtPlanRule" runat="server" AutoPostBack="true">
    </asp:DropDownList><font color="red">*</font>
    </td>
</tr>
<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="display:none">
	<td class="tdbgleft"><strong>选择操作的数据库：</strong></td>
    <td><asp:DropDownList ID="DR_Data" runat="server" AutoPostBack="true">
    </asp:DropDownList><font color="red">*</font></td>
    </tr>
<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
	<td class="tdbgleft"><strong>启用时间：</strong></td>
    <td><asp:TextBox ID="TxtExecutionTime" runat="server"></asp:TextBox><font color="red">*格式：yyyy/mm/dd hh:mm:ss</font></td>
</tr>
<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
	<td class="tdbgleft">
		<strong>功能描述：</strong>
	</td>
	<td>
		<asp:TextBox ID="TxtDescription" runat="server" TextMode="MultiLine"  Rows="2"  Columns="20"  class="l_input" style="height:77px;width:365px;"></asp:TextBox>
	</td>
</tr>
<tr class="tdbgbottom">
	<td colspan="2"> 
		<asp:HiddenField ID="HdnDevId" runat="server" />
		<asp:Button ID="EBtnSubmit"  Text="保 存" class="C_input"  OnClick="EBtnSubmit_Click" runat="server" />
		&nbsp;&nbsp;
		<input name="Cancel" type="button"  id="Cancel" class="C_input"  value="取 消" onclick="window.location.href='DevelopmentCenter.aspx';" />
	</td>
</tr>
</table>
</form>
</body>
</html>
