﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_User_SelectFrient, App_Web_du31ah4f" enableeventvalidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>查找好友</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../../JS/Jquery.js"></script>
<script type="text/javascript">
    function cl(){ window.close();}
</script>
</head>
<body>
<form id="form1" runat="server">
<div id="TopDiv" runat="server">
    <div class="friends">
          <ul >
        <li>查找好友</li>
        <li>
              <asp:RadioButtonList ID="ProClass" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="ProClass_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Value="2" Selected="True">按ID查找</asp:ListItem>
            <asp:ListItem Value="3">按昵称查找</asp:ListItem>
          </asp:RadioButtonList>
            </li>
        <li>
              <div id="Div2" runat="server">按ID查询&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" CssClass="l_input" ID="SelectID"/>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server" ControlToValidate="SelectID" ErrorMessage="ID必须是数字!" ValidationExpression="^-?\d+$"></asp:RegularExpressionValidator>
          </div>
            </li>
        <li>
              <div id="Div3" runat="server">按昵称查询&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" CssClass="l_input" ID="SelectName"/>
          </div>
            </li>
        <li>
              <asp:Button Text="查找好友" CssClass="C_input" id="button1" runat="server"  onclick="button1_Click" />
              &nbsp;&nbsp;
              <input class="C_input" type="button" value="关闭" id="button2" onclick="cl();"  />
            </li>
      </ul>
          <div class="clear"></div>
        </div>
  </div>
     <div id="Showdiv" runat="server">
    <table border="0" cellpadding="2" cellspacing="1" class="border" width="100%" id="friendlist" align="center">
          <tr align="center" class="title">
        <td style="width:5%">用户ID</td>
        <td style="width:5%">姓名</td>
      </tr>
          <asp:Repeater ID="Repeater1" runat="server" >
        <ItemTemplate>
            <tr class="tdbg" onclick="selectuser(<%#Eval("UserID") %>)" id='<%#Eval("UserID") %>' >
            <td height="22" align="center" ><%#Eval("UserID")%></td>
            <td height="22" align="center"><%#Eval("UserName")%></td>
          </tr>
            </ItemTemplate>
      </asp:Repeater>
          <tr class="tdbg">
        <td height="22" colspan="2" align="center" class="tdbg"><asp:HiddenField ID="HiddenField1" runat="server"  Value='<%#Eval("UserID")%>'/>
              <asp:Button ID="Button4" Text="添加好友" runat="server" CssClass="C_input" onclick="Button4_Click" CausesValidation="false" />
              共
              <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
              条数据
              <asp:Label ID="Toppage" runat="server" Text="" />
              <asp:Label ID="Nextpage" runat="server" Text="" />
              <asp:Label ID="Downpage" runat="server" Text="" />
              <asp:Label ID="Endpage" runat="server" Text="" />
              页次：
              <asp:Label ID="Nowpage" runat="server" Text="" />
              /
              <asp:Label ID="PageSize" runat="server" Text="" />
              页
              <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
              条数据/页 转到第
              <asp:DropDownList ID="DropDownList1" runat="server"  AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
              页
              <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
              <asp:LinkButton runat="server" Text="返回上页面" onclick="Unnamed1_Click"></asp:LinkButton></td>
      </tr>
        </table>
  </div>
    </form>
<script type="text/javascript">
      $('#friendlist .tdbg').click(function () {
          $('.tdbg').removeClass("tdbgmouseover");
          $(this).addClass('tdbgmouseover');
          var nowid = $(this).attr('id');
      });
      function selectuser(uid) {
          document.getElementById("HiddenField1").value = uid.toString();
      }
  </script>
</body>
</html>