﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_DataManage, App_Web_wnr3b5xj" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>数据字典添加</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
  <div>
    <table style="width: 421px; height: 210px" id="TABLE1">
      <tr>
        <td colspan="4" style="height: 27px"><asp:Label ID="Label1" runat="server" Text="所属分类："></asp:Label>
          <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
      </tr>
      <tr>
        <td colspan="4"><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="36px"
				Width="369px" OnRowCommand="GridView1_RowCommand1">
            <Columns>
            <asp:TemplateField HeaderText="选择">
              <ItemTemplate>
                <asp:CheckBox ID="detailCheckBox" runat="server"  />
              </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CateDetailName" HeaderText="数据值" />
            <asp:TemplateField HeaderText="操作">
              <ItemTemplate>
                <asp:Button ID="Button4" class="C_input" runat="server" CommandName="myupdate" Text="修改" CommandArgument='<%# Eval("CateDetailID") %>' />
                <asp:Button ID="Button5" class="C_input" runat="server" CommandName="mydelete" Text="删除" CommandArgument='<%# Eval("CateDetailID") %>' />
              </ItemTemplate>
            </asp:TemplateField>
            </Columns>
          </asp:GridView>
          <asp:Label ID="Label3" runat="server" Width="289px"></asp:Label></td>
      </tr>
      <tr>
        <td style="width: 64px; height: 38px;"><asp:CheckBox ID="CheckBox1" runat="server" Text="全选" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged1" /></td>
        <td style="width: 30px; height: 38px;"><asp:Button ID="Button7" class="C_input" runat="server" Text="删除选择项" OnClick="Button7_Click1" OnClientClick="return confirm('是否删除全部所选的内容');" /></td>
        <td style="width: 67px; height: 38px;"><asp:TextBox ID="TextBox1" class="l_input" runat="server"></asp:TextBox></td>
        <td style="width: 100px; height: 38px;">&nbsp;
          <asp:Button ID="Button8" class="C_input" runat="server" Text="添加" OnClick="Button8_Click" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>