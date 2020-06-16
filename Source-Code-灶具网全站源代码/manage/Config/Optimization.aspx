<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_Optimization, App_Web_3l1u0nin" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html>
<head runat="server">
    <title>数据库优化</title>
    <link type="text/css" href="/App_Themes/AdminDefaultTheme/Guide.css" rel="stylesheet" />
<link type="text/css" href="/App_Themes/AdminDefaultTheme/index.css" rel="stylesheet" />
<link type="text/css" href="/App_Themes/AdminDefaultTheme/main.css" rel="stylesheet" />
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/Common.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
    <%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('70')" title="帮助"></a></div>
  <%} %>后台管理&gt;&gt;扩展功能&gt;&gt;数据维护&gt;&gt;数据库优化</div>
    <div class="spacingtitle">数据库优化</div>
    <table  style="width: 100%;" cellpadding="2" cellspacing="1" class="border">
        <tr class="tdbg">
            <td class="tdbgleft" align="right" style="width:150px; height:25px;"><strong>请选择表：</strong></td>
            <td><asp:DropDownList ID="DbTableDownList" runat="server"  AutoPostBack="True"
                    onselectedindexchanged="DbTableDownList_SelectedIndexChanged" ></asp:DropDownList></td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" align="right" style=" width:150px; height:25px;"><strong>是否创建唯一索引</strong></td>
            <td>
                 <asp:RadioButtonList runat="server" ID="IsUnique" RepeatDirection="Horizontal">
                      <asp:ListItem Value="1">是</asp:ListItem>
                      <asp:ListItem Value="0" Selected="True">否</asp:ListItem>
                 </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg">
             <td class="tdbgleft" align="right" style=" width:150px; height:25px;"><strong>创建索引的类型</strong></td>
             <td>
                  <asp:DropDownList runat="server" ID="IndexType">
                       <asp:ListItem Value="">非聚簇索引</asp:ListItem>
                       <asp:ListItem Value="clustered">聚集索引</asp:ListItem>
                       <asp:ListItem Value="nonclustered">非聚集索引</asp:ListItem>
                  </asp:DropDownList>
             </td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" align="right" style="width:150px;height:25px;"><strong>请输入索引名称：</strong></td>
            <td><input type="text" id="IndexName"  style=" width:190px;" runat="server" value="Zoomla_index"/></td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" align="right" style="width:150px;height:25px;"><strong>创建索引的字段：</strong></td>
            <td><asp:ListBox ID="DbFieldDownList" runat="server" Height="220px" Width="200px" SelectionMode="Multiple" /></td>
        </tr>
        <tr class="tdbg">
             <td></td>
             <td><asp:Button ID="CreateIndex" Text="创建索引"  CssClass="C_input" runat="server" 
                     onclick="CreateIndex_Click" />&nbsp;&nbsp;
                     <asp:Button ID="ViewIndex" Text="查看已有的索引"  CssClass="C_input" runat="server" onclick="ViewIndex_Click" 
                      /></td>
        </tr>
    </table><br />
    <div id="Top" runat="server" visible="false" style="text-align: center; font-size: 15px;
        font-weight: bold;"><asp:Label ID="Label1"  runat="server"></asp:Label></div><br />
     <div id="RunOK" runat="server">
     </div>
    </form>
    </body>
</html>