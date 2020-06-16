<%@ page language="C#" autoeventwireup="true" enableviewstatemac="false" inherits="manage_Template_TemplateSetOfficial, App_Web_3brxpbum" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<html>
<head runat="server">
<title>方案列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="/js/lightbox2.02/css/lightbox.css" type="text/css" media="screen" />
<script src="/js/lightbox2.02/js/prototype.js" type="text/javascript"></script>
<script src="/js/lightbox2.02/js/scriptaculous.js?load=effects" type="text/javascript"></script>
<script src="/js/lightbox2.02/js/lightbox.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation">
  <%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('24')" title="帮助"></a></div>
  <%} %> 后台管理&gt;&gt;系统设置&gt;&gt;<a href="TemplateSet.aspx">方案设置</a>&gt;&gt;从云端下载方案　<a href="AddtemplateSet.aspx">[发布当前站点方案]</a> <a href="TemplateSet.aspx">[返回本地方案列表]</a></div>
  <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
    <tr class="gridtitle" align="center" style="height: 25px;">
      <td width="100%" colspan="4">云台方案列表↓<a href="http://www.zoomla.cn/templet/" target="_blank" style="color:#FFF;">[更多模板]</a></td>
    </tr>
    <tr>
      <td id="servertb" name="servertb"><table width="100%" border="0" cellpadding="0" cellspacing="1">
          <asp:Label ID="templatelist" runat="server" Text=""></asp:Label>
          <tr class="tdbg" align="center" style="height: 25px;">
            <td width="25%" colspan="4"> 共
              <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
              个信息
              <asp:Label ID="Toppage" runat="server" Text="" />
              <asp:Label ID="Nextpage" runat="server" Text="" />
              <asp:Label ID="Downpage" runat="server" Text="" />
              <asp:Label ID="Endpage" runat="server" Text="" />
              页次：
              <asp:Label ID="Nowpage" runat="server" Text="" />
              /
              <asp:Label ID="PageSize" runat="server" Text="" />
              页
              <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" Visible="false" class="l_input"  Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
              8
              条信息/页 转到第
              <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> </asp:DropDownList>
              页 </td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
<script>
alert("尊敬的用户，因是完整网站方案下载并需要校验版本信息，需您稍候几分钟，请耐心等待!")
     function checkmsg() {
         alert("下载需要几分钟，请耐心等待！");
     }
 </script>
</body>
</html>