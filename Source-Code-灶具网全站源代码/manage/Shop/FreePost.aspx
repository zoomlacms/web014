<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_FreePost, App_Web_cbl2ckqe" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>运费设置</title>
<link href="/App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="r_navigation">后台管理&gt;&gt;商城管理&gt;&gt;<a href="DeliverType.aspx">商城设置</a> &gt;&gt;免邮设置</div>
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
	<tr>
		<td class="spacingtitle" colspan="2" align="center">
			<asp:Literal ID="LTitle" runat="server" Text="免邮设置"></asp:Literal>
		</td>
	</tr>
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width:12%" class="tdbgleft">
                        免邮方式：
                        </td>
                        <td>
                        购买商品超出[<asp:TextBox ID="Ghowm" style="width:50px" runat="server"></asp:TextBox>]元， 免邮(0为不免邮)
                        </td>
     </tr>
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"><td class="tdbgleft">
     是否包括特价商品
     </td>
     <td>
         <asp:RadioButton ID="Freetrue" GroupName="free"  runat="server" /><label for="Freetrue">是</label>
         <asp:RadioButton ID="FreeFalse" GroupName="free" runat="server" /><label for="FreeFalse">否</label>
     </td>
     </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td colspan="2" align="center" class="tdbg" style="height: 49px">
            <asp:Button ID="SaveFree" runat="server" class="C_input"  Text="保存设置" 
                style="width:110px;" onclick="SaveFree_Click"  /></td>
      </tr>
    </table>

    </form>
</body>
</html>
