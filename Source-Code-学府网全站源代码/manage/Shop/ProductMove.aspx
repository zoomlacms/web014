﻿<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Product.ProductMove, App_Web_cbl2ckqe" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>内容批量移动</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span>&gt;&gt; <span>商城管理</span> &gt;&gt; <span>商品管理</span> &gt;&gt;<span>商品批量移动</span>
	</div>
	<div class="clearbox"></div>
	<table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
	    <tr align="center">
            <td colspan="2" class="spacingtitle">
                批量移动商品到其他节点</td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" style="width: 20%" align="right" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">                    
                商品ID：</td>
            <td class="bqright">
                <asp:TextBox ID="TxtContentID" class="l_input" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtContentID"
                    ErrorMessage="商品ID不能为空"></asp:RequiredFieldValidator></td>
         </tr>
         <tr class="tdbg">
            <td class="tdbgleft" style="width: 20%" align="right">                    
                目标节点：</td>
            <td class="bqright">
                <asp:DropDownList ID="DDLNode" runat="server">
                </asp:DropDownList>
            </td>
         </tr>
         <tr class="tdbg">
            <td class="bqright" align="left" colspan="2">                    
                &nbsp;&nbsp;<asp:Button ID="Button1" class="C_input"  style="width:100px;"  runat="server" Text="批量处理" OnClick="Button1_Click" />&nbsp;&nbsp;
                <input name="Cancel" type="button" class="C_input"  style="width:100px;"  id="BtnCancel" value="取消" onclick="location.href='ProductManage.aspx'" />
            </td>            
         </tr>
	</table>
    </form>
</body>
</html>
