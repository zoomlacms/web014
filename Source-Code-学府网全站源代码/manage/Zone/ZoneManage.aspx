﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_ZoneManage_ProductManage, App_Web_cygfxagp" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>商品列表</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
function CheckAll(spanChk)//CheckBox全选
    {
    var oItem = spanChk.children;
    var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
    xState=theBox.checked;
    elm=theBox.form.elements;
    for(i=0;i<elm.length;i++)
    if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
    {
        if(elm[i].checked!=xState)
        elm[i].click();
    }
}

</script>
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/Common.js"></script>
</head>
<body>
<form id="form1" runat="server">
    <div class="r_navigation">
		<%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('108')" title="帮助"></a></div>
  <%} %>
		<span>后台管理</span> &gt;&gt; <span>会员空间管理</span> &gt;&gt; <span>会员空间管理</span>
	</div>

    <div class="clearbox"></div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tabss">
         <tr class="tdbgleft"">
          <td width="3%" height="24" align="center" class="tdbgleft"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
          <td width="12%" align="center"><span class="tdbgleft">申请人用户名</span></td>
          <td width="20%" align="center"><span class="tdbgleft">空间名称</span></td>
          <td width="20%" align="center"><span class="tdbgleft">申请时间</span></td>
          <td width="20%" align="center"><span class="tdbgleft">空间状态</span></td>
          <td width="8%" align="center"><span class="tdbgleft">操作</span></td>
        </tr>
        <asp:Repeater ID="Productlist" runat="server">
        <ItemTemplate>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="center">
              <input name="Item" type="checkbox" value='<%# Eval("ID")%>'/>
              </td>
          <td height="24" align="center"><%#GetUsername(DataBinder.Eval(Container.DataItem, "UserID").ToString())%></td>
          <td height="24" align="center"><%# Eval("BlogName")%></td>
          <td height="24" align="center"><%# Eval("Addtime").ToString()%></td>
          <td height="24" align="center"><%#GetState(DataBinder.Eval(Container.DataItem, "CommendState").ToString())%></td>
          <td height="24" align="center"><a href="ZoneEdit.aspx?id=<%#Eval("UserID")%>">查看</a> <asp:LinkButton ID="LinkButton1" runat="server"  CommandName='<%#Eval("ID")%>' OnClick="Button2_Click" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</asp:LinkButton></td>
        </tr>
        </ItemTemplate>
        </asp:Repeater>
                 <tr class="tdbg">
          <td height="24" colspan="6" align="center" class="tdbgleft">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条&nbsp;
              <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页<asp:Label
                  ID="Label1" runat="server" Text="Label"></asp:Label> 条/页
              转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                  onselectedindexchanged="DropDownList1_SelectedIndexChanged">
              </asp:DropDownList>页</td>
        </tr>
     </tbody>
    </table>
    <br />
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td style="height: 21px">&nbsp;<asp:Button ID="Button1" class="C_input"  runat="server" Text="设为推荐" CommandName="1" OnClick="Button1_Click" />
            <asp:Button ID="Button2" class="C_input"  runat="server" Text="设为关闭" CommandName="2" OnClick="Button1_Click" />
            <asp:Button ID="Button6" class="C_input"  runat="server" Text="取消推荐" CommandName="0" OnClick="Button1_Click" />
            <asp:Button ID="Button5"  class="C_input"  runat="server" Text="取消关闭" CommandName="0" OnClick="Button1_Click" />
            <asp:Button ID="Button3" class="C_input"  runat="server" Text="批量删除" CommandName="5" OnClick="Button1_Click" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" />
            </td>
      </tr>
            <tr>
        <td></td>
      </tr>
    </table>
</form>
</body>
</html>
