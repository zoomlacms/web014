<%@ page language="C#" autoeventwireup="true" inherits="User_Magazine_MagazContent, App_Web_etqu03sz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html >
<head runat="server">
<title>杂志内容</title>
<link href="../../../App_Themes/UserThem/bidding.css" rel="stylesheet" type="text/css" />
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../../JS/menu.js"></script>
<script type="text/javascript">
    function SpanClick(pi) {
        alert(3);
    }
</script>
 
</head>
<body>
<form id="form1" runat="server">
<div>
  <div class="us_topinfo">
    您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt; <a title="信息管理" href="AddMagazine.aspx">电子杂志</a>&gt;&gt;杂志内容</div>
  <div class="us_topinfo" style="overflow: hidden; width: 98%">
   <h2> 杂志名称： <%=name %> </h2> &nbsp;&nbsp;&nbsp;&nbsp; <%-- <input type="button" class="C_input" name="demoCode04-3" value="上传新页面" /> --%>
    <Label ID="ViewLab" runat="server" Text="Label">浏览</Label> &nbsp;&nbsp;&nbsp;&nbsp;
   <asp:Button ID="BT_Upload" runat="server" Text="上传图片"  CssClass="i_bottom"  onclick="BT_Upload_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
   <asp:Button  runat="server" ID="delet" Text="删除本杂志" CssClass="i_bottom" OnClientClick="return confirm('确定要删除吗？');" onclick="delet_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
   <%--<asp:Button runat="server" ID="setBgsoud" Text="设置背景音乐" onclick="setBgsoud_Click" />
   <input id="upmusic"  runat="server" type="file" />--%><asp:Label runat="server" ID="L_Name"></asp:Label> 
    <asp:DataList runat="server" ID="DL_ShowMaga" Width="100%" RepeatColumns="5" RepeatDirection="Horizontal" OnItemCommand="DL_ShowMaga_ItemCommand">
      <ItemTemplate>
        <table>
          <tr><td align="center"><%#Eval("name").ToString().Replace("\\","")%></td></tr>
          <tr >
            <td align="center">
              <label onmouseover="showmenu(event,'<%#ShowDivStr(Eval("Path").ToString())%>')"> 
                <image style=" width:100px; height:100px;"  src='<%#GetPic(Eval("Path").ToString())%>'></image></label> 
            </td>
          </tr>
          <tr>
            <td align="center"> 
             <%-- <a target="_blank" href='/SilverlightClientTestPage.aspx?Content=UserID=<%=userid %>|MagazineName=<%=name %>&id=<%=id %>&Num=<%=Num %>'>浏览</a>&nbsp;&nbsp;&nbsp;&nbsp;--%>
              <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("name") %>' OnClientClick="return confirm('确实要删除此图片吗？');">删除</asp:LinkButton>
            </td>
          </tr> 
        </table> &nbsp;&nbsp;&nbsp;&nbsp;
      </ItemTemplate>
    </asp:DataList>
  </div>
</div>
<div align="center">
   共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;张图片
     <asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
     <asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
     <asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
     <asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
        页次：
     <asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>
      /
     <asp:Label ID="PageSize" runat="server" Text=""></asp:Label>
      页
     <asp:Label ID="pagess" runat="server" Text=""></asp:Label>
      个/页 转到第
     <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
      页
</div>
</form>
</body>
</html>
