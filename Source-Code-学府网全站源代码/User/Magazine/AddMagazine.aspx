<%@ page language="C#" autoeventwireup="true" inherits="User_Magazine_AddMagazine, App_Web_etqu03sz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html >
<head runat="server">
<title>我的电子杂志</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt; <a title="信息管理" href="AddMagazine.aspx">电子杂志</a>
</div>
<div class="us_topinfo" style="overflow: hidden; width: 98%">
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr><td><h2>我的电子杂志</h2></td>
    </tr>
    <tr>
    <td style="height: 50px"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td style="width: 561px"> 你可以制作属于自己的电子杂志了，你可以从<a href="AddMagazPic.aspx" style="color:Red">创建一个电子杂志</a>开始</td>
        </tr>
        </table>
    </td>
    </tr>
  </table>
  <div style="float:left"><%=con%>
    <asp:DataList runat="server" ID="DL_MagaPic" RepeatColumns="4"  OnItemCommand="DL_MagaPic_ItemCommand" >
      <ItemTemplate >&nbsp;&nbsp;&nbsp;&nbsp;
         <table>
            <tr><td align="center"> <a href="MagazContent.aspx?id=<%#Eval("id") %>"><%#Eval("MagName") %>&nbsp;</a></td></tr>
            <tr>
                <td align="center">
                <a href="MagazContent.aspx?id=<%#Eval("id") %>">
                    <image style=" width:100px; height:100px;" src='<%#GetPic(Eval("MagPic").ToString())%>' ></image>&nbsp;&nbsp;&nbsp;&nbsp;</a><br />
                </td>
            </tr>
            <tr>
                <td align="center"> 
                 <%--<a target="_blank" href='/SilverlightClientTestPage.aspx?Content=UserID=<%=userid %>|MagazineName=<%#Eval("MagName") %>&id=<%#Eval("id") %>&Num=<%=Num %>'>浏览</a>--%>            <a href="AddMagazPic.aspx?id=<%# Eval("id") %>">修改</a>&nbsp;&nbsp;
                  <asp:LinkButton  ID="LinkButton2" runat="server" CommandName="Scan" CommandArgument='<%# Eval("id") %>'><%#GetScan(Eval("id").ToString()) %></asp:LinkButton>
                  <asp:Label Enabled="false" ID="Prompt" runat="server"><%#GetScans(Eval("id").ToString()) %></asp:Label>
                </td>
            </tr>
        </table> &nbsp;&nbsp;
      </ItemTemplate>
    </asp:DataList>
  </div>
</div>
</form>
</body>
</html>