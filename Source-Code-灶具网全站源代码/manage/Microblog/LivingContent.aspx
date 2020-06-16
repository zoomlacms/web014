<%@ page language="C#" autoeventwireup="true" inherits="manage_Microblog_LivingContent, App_Web_kwqiwngt" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>修改直播室</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style>.border td{ line-height:26px;}</style>
</head>
<body>
    <form id="form1" runat="server">
<div class="r_navigation">
后台管理 &gt;&gt; 用户管理 &gt;&gt; <a href="MbUser.aspx">微博管理</a> &gt;&gt;<a title="信息管理" href="LivingManage.aspx">直播室管理</a>&gt;&gt;修改直播室
</div>
</div>
<table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">
      <td class="spacingtitle" colspan="2" style="height: 26px; text-align:center;"><strong>
        <asp:Label ID="Label1" runat="server" Text="修改直播室"></asp:Label>
        </strong>
       </td>
    <%--<tr>
        <td><h2>创建电子杂志</h2></td>--%>
    </tr>
    <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td  class="tdbgleft" style="width:200px;" align="right"><strong>直播室主题： </strong></td>
                <td><asp:TextBox ID="txtltopic" runat="server" CssClass="l_input"  width="214" Text=""></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="主题不能为空！"
                    ControlToValidate="txtltopic" /></td></tr>
  <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td  class="tdbgleft" align="right"><strong> 时间安排：</strong> </td>
                <td> <asp:TextBox ID="txtlArrange" runat="server" CssClass="l_input"  width="214"></asp:TextBox></td></tr>

  <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td  class="tdbgleft"align="right"><strong>
  特邀嘉宾：</strong></td><td><asp:TextBox ID="txtlguest" runat="server"  width="214" CssClass="l_input" />
  </td></tr>

  <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td  class="tdbgleft"  align="right"><strong> 直播室图片：</strong> </td><td>
        <%--<asp:FileUpload ID="FupFile" runat="server"  onchange='getvl(this)'  />
                仅支持jpg、gif、png图片文件，且文件大小不超过5M<br/>(不换图则不选择图片)--%>
			<asp:DropDownList ID="DrpItemIcon"   width="214" CssClass="l_input"  runat="server">
            <asp:ListItem Value="0">保留原有图片</asp:ListItem>
            </asp:DropDownList>
                </td></tr>
                 <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td  class="tdbgleft" align="right"><strong> 直播室描述：</strong> </td>
                <td> <asp:TextBox ID="txtlstate" runat="server" TextMode="MultiLine" CssClass="l_input" width="382" Height="119"></asp:TextBox></td></tr>

     <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td  class="tdbgleft" colspan="2">  <asp:Label ID="lblMessage" runat="server" ForeColor="red" Text=""></asp:Label>
  <asp:Button ID="btnSave" runat="server" Text="修改" class="C_input" OnClick="btnSave_Click" />
 <input type="button"  class="C_input" id="Button2"  name="Button2" value="返回列表" onclick="location.href='LivingManage.aspx'" /> </td></tr>
</table> 
    </form>
</body>
</html>
