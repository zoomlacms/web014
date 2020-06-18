<%@ page language="C#" autoeventwireup="true" inherits="User_Magazine_AddMagazPic, App_Web_etqu03sz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html >
<head runat="server">
<title>创建电子杂志</title>
<link href="../../../App_Themes/UserThem/bidding.css" rel="stylesheet" type="text/css" />
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
 <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style> td{ padding:3px 0px;}
.l_input{ margin-right:10px;}
    .style1
    {
        width: 380px;
        height: 24px;
    }
    .style2
    {
        height: 24px;
    }
</style>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt; <a title="信息管理" href="AddMagazine.aspx">电子杂志</a>&gt;&gt;创建电子杂志
</div>
<div class="us_topinfo" style="overflow: hidden; width: 98%">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td><h2>创建电子杂志</h2></td>
    </tr>
    <tr>
       <td align="right" class="style1"> 杂志名称： </td>
       <td class="style2"><asp:TextBox ID="txtCategName"  class="l_input" runat="server"  Width="220px"></asp:TextBox><span style="color: #FF0000">(必填)</span><br /></td>
    </tr>
    <tr>
    <td style="width:380px;" align="right"> 杂志类别： </td>
    <td>
    <asp:RadioButtonList runat="server" ID="magazineclass" RepeatDirection="Horizontal" AutoPostBack="true">
    <asp:ListItem Value="娱乐" Selected="True">娱乐</asp:ListItem>
    <asp:ListItem Value="风景">风景</asp:ListItem>
    <asp:ListItem Value="体育">体育</asp:ListItem>
    <asp:ListItem Value="新闻">新闻</asp:ListItem>
    </asp:RadioButtonList>
    </td>
    </tr>
    <tr>
       <td align="right">杂志介绍：</td>
       <td><asp:TextBox runat="server" ID="TB_Introduction"   class="l_input" TextMode="MultiLine"  Width="220px"  Height="50px"></asp:TextBox></td>
    </tr>
     <tr>
       <td align="right">背景音乐：</td>
       <td><asp:TextBox ID="musicurl" runat="server" class="l_input" Width="220px"></asp:TextBox>请添加网络地址。如:http://网址</td>
    </tr>
     <tr>
       <td align="right">是否开放游客浏览：</td>
       <td>
         <asp:RadioButtonList ID="isOpen" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Value="1" Selected="True">是</asp:ListItem>
            <asp:ListItem Value="0">否</asp:ListItem>
         </asp:RadioButtonList>
       </td>
    </tr>
    
     <tr>
       <td align="right">设置杂志背景：</td>
       <td style="position:relative">
<%--           <input type="text" id="imgPic1" runat="server"  class="l_input"  style="width:220px;"/><br />
           <input id="File2" runat="server" type="file" /> &nbsp;&nbsp;
           <asp:Button ID="Button2" runat="server" Text="上 传" CssClass="i_bottom"   onclick="Button2_Click" /><br />--%>
           选择背景图片:<asp:DropDownList ID="DrpItemIcon" runat="server" AutoPostBack="true" onselectedindexchanged="DrpItemIcon_SelectedIndexChanged" /> <span style="position:absolute;width:140px;heigth:140px">
           <img runat="server" id="bgImg" alt="背景图片预览" style="width:140px;heigth:140px"/>
         </span></br></br>
          循环方向 <asp:RadioButtonList ID="isRepeat" runat="server" RepeatDirection="Vertical">
            <asp:ListItem Value="0" >不循环</asp:ListItem>
            <asp:ListItem Value="1" Selected="True">循环</asp:ListItem>
            <asp:ListItem Value="2">x轴循环</asp:ListItem>
            <asp:ListItem Value="3">y轴循环</asp:ListItem>
         </asp:RadioButtonList>
       </td>
    </tr>
    <tr>
       <td colspan="2" align="center">
         <asp:Button ID="butEnter" runat="server" Text="保 存" CssClass="i_bottom" onclick="butEnter_Click"  /> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
         <asp:Button ID="Button1" runat="server" Text="取 消" CssClass="i_bottom" onclick="Button1_Click"  />
       </td>
    </tr>
</table>
</div>
</form>
</body>
</html>
