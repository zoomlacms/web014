<%@ page language="C#" autoeventwireup="true" inherits="User_Magazine_AddMagazPic, App_Web_23sbc5xo" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html >
<head runat="server">
<title>创建电子杂志</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div>
<div class="r_navigation">
后台管理 &gt;&gt; 扩展功能 &gt;&gt; <a href="../Plus/ADZoneManage.aspx">广告管理</a> &gt;&gt;<a title="信息管理" href="AddMagazine.aspx">电子杂志</a>&gt;&gt;创建电子杂志
</div>
</div>
<table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">
      <td class="spacingtitle" colspan="2" style="height: 26px; text-align:center;"><strong>
        <asp:Label ID="Label1" runat="server" Text="修改电子杂志"></asp:Label>
        </strong>
       </td>
    <%--<tr>
        <td><h2>创建电子杂志</h2></td>--%>
    </tr>
    <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td  class="tdbgleft" style="width:200px;" align="left"><strong>杂志名称：</strong> </td>
        <td>
            <asp:TextBox ID="txtCategName" runat="server"  class="l_input" Width="320"></asp:TextBox>
            <span style="color: #FF0000">(必填)</span>
            <br />
        </td>
    </tr>
    <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td  class="tdbgleft" align="left"><strong>杂志类别：</strong></td> 
      <td><asp:RadioButtonList RepeatDirection="Horizontal" runat="server" ID="Magclass" AutoPostBack="true">
      <asp:ListItem Value="娱乐" Selected="True">娱乐</asp:ListItem>
      <asp:ListItem Value="体育">体育</asp:ListItem>
      <asp:ListItem Value="新闻">新闻</asp:ListItem>
      </asp:RadioButtonList></td> 
    </tr>
    <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td  class="tdbgleft" align="left"><strong>杂志介绍：</strong></td>
        <td><asp:TextBox runat="server" ID="TB_Introduction" TextMode="MultiLine"  Height="50px" Width="320"  class="l_input" ></asp:TextBox></td>
    </tr>
     <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
       <td class="tdbgleft"  align="left">背景音乐：</td>
       <td><asp:TextBox ID="musicurl" runat="server" class="l_input" Width="320px"></asp:TextBox>请添加网络地址。如:http://网址</td>
    </tr>
     <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
       <td class="tdbgleft" align="left">是否开放游客浏览：</td>
       <td>
         <asp:RadioButtonList ID="isOpen" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Value="1" Selected="True">是</asp:ListItem>
            <asp:ListItem Value="0">否</asp:ListItem>
         </asp:RadioButtonList>
       </td>
    </tr>
    
     <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
       <td class="tdbgleft" align="left">设置杂志背景：</td>
       <td >
         <%--  <input type="text" id="imgPic1" runat="server" class="l_input"  style=" width:320px;" /><br />
           <input id="File2" runat="server" type="file" Style=" width:280px; height: 20px"/> &nbsp;&nbsp;
           <asp:Button ID="Button2" runat="server" Text="上 传" Style="height: 20px"  onclick="Button2_Click" /><br />--%>
            选择背景图片:<asp:DropDownList ID="DrpItemIcon" runat="server" AutoPostBack="true" onselectedindexchanged="DrpItemIcon_SelectedIndexChanged" /> <span style="position:absolute;width:120px;heigth:120px">
           <img runat="server" id="bgImg" alt="背景图片预览" style="width:120px;heigth:120px"/>
         </span></br>
          循环方向 <asp:RadioButtonList ID="isRepeat" runat="server" RepeatDirection="Vertical">
            <asp:ListItem Value="0" >不循环</asp:ListItem>
            <asp:ListItem Value="1" Selected="True">循环</asp:ListItem>
            <asp:ListItem Value="2">x轴循环</asp:ListItem>
            <asp:ListItem Value="3">y轴循环</asp:ListItem>
         </asp:RadioButtonList>
       </td>
    </tr>
    <tr class="tdbg">
        <td colspan="2" align="center"><asp:Button ID="butEnter" runat="server" Text="保存" CssClass="C_input" onclick="butEnter_Click"  />&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" Text="取 消" onclick="Button1_Click" CssClass="C_input"  />
        </td>
    </tr>
</table>
</form>
</body>
</html>
