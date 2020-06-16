<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_EmptyData, App_Web_3l1u0nin" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>一键清空测试数据</title>
<link type="text/css" href="../../App_Themes/AdminDefaultTheme/Guide.css" rel="stylesheet" />
<link type="text/css" href="../../App_Themes/AdminDefaultTheme/index.css" rel="stylesheet" />
<link type="text/css" href="../../App_Themes/AdminDefaultTheme/main.css" rel="stylesheet" />
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/Common.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation"><%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('71')" title="帮助"></a></div>
  <%} %>后台管理&gt;&gt;扩展功能&gt;&gt;数据维护&gt;&gt;一键清空测试数据</div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center">
    <tr class="tdbg">
         <td class="tdbgleft"></td>
        <td class="tdbgleft">本操作将删除系统中的用户自定义表：</td>
    </tr>
    <tr class="tdbg">
        <td class="tdbgleft" style="width: 350px; text-align: center;">
           选择要清除测试数据的数据库类别：
        </td>
        <td>
            <asp:CheckBoxList ID="TableNames" runat="server">
                 <asp:ListItem Selected="True" Value="ZL_C\_%">ZL_C_&nbsp;&nbsp;[内容副表数据]</asp:ListItem>
                 <asp:ListItem Selected="True" Value="ZL_commodities">ZL_commodities&nbsp;&nbsp;[商城主表数据]</asp:ListItem>
                 <asp:ListItem Selected="True" Value="ZL_Store\_%">ZL_Store_&nbsp;&nbsp;[自定义商城表]</asp:ListItem>
                 <asp:ListItem Selected="True" Value="ZL_CommonModel">ZL_CommonModel&nbsp;&nbsp;[所有内容主表数据]</asp:ListItem>
                 <asp:ListItem Selected="True" Value="ZL_User">ZL_User&nbsp;&nbsp;[所有用户数据(不涉及管理员信息)]</asp:ListItem>
                 <asp:ListItem Selected="True" Value="ZL_Node">ZL_Node&nbsp;&nbsp;[节点表]</asp:ListItem>
            </asp:CheckBoxList>
        </td>
    </tr>
</table>
<asp:Button ID="EmptyData" runat="server" Text="一键清空测试数据" class="C_input" OnClick="EmptyData_Click"/>
<div id="confirm" runat="server" visible="false">
  <span>本操作不可逆，如果您需要重置系统，则可以使用此功能还原为默认初始状态。还原完成后，请<a href="javascript:parent.ShowMain('Config/ConfigGuide.aspx','Config/SiteOption.aspx')" style=" color:Red;">点击这里</a>进行开销，使模板与之相符</span>
  <asp:Button ID="ConfirmClr" runat="server" Text="确认操作" class="C_input"  onclick="ConfirmClr_Click" OnClientClick="return confirm('不可恢复性清除数据,确认操作？');"/>
</div>
</form>
</body>
</html>