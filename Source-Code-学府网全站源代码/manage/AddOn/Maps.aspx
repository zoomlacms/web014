<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_Maps, App_Web_tbdzstjd" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>地图管理</title>
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/main.css" />
<style type="text/css">
    #GridView1 td
    {
        border: 1px solid #fff;
        width: auto;
        text-align: center;
    }
</style>
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/Common.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    <%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('35')" title="帮助"></a></div>
  <%} %> 后台管理&nbsp;&gt;&gt;&nbsp;其他管理&nbsp;&gt;&gt;&nbsp;地图管理<span class="red">[<a href="AddMap.aspx" title="添加新地图">添加新地图</a>]</span>
</div>
<div class="user_t">
    <asp:GridView RowStyle-HorizontalAlign="Center" ID="GridView1" DataKeyNames="mid"
        Width="100%" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging"
        OnRowCommand="Lnk_Click">
        <Columns>
            <asp:TemplateField HeaderText="选中">
                <HeaderStyle Width="5%" />
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="SelectCheckBox" runat="server" />
                </ItemTemplate>
                <ItemStyle />
            </asp:TemplateField>
            <asp:BoundField DataField="mid" HeaderText="ID">
                <HeaderStyle Width="5%" />
                <ItemStyle  HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="地图名称">
                <HeaderStyle Width="15%" />
                <ItemTemplate>
                    <%# DataBinder.Eval(Container.DataItem,"type")%>
                </ItemTemplate>
                <ItemStyle  HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="纬度">
                <HeaderStyle Width="18%" />
                <ItemTemplate>
                    <%# DataBinder.Eval(Container.DataItem,"lx")%>
                </ItemTemplate>
                <ItemStyle  HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="经度">
                <HeaderStyle Width="18%" />
                <HeaderStyle />
                <ItemTemplate>
                    <%#DataBinder.Eval(Container.DataItem, "ly")%>
                </ItemTemplate>
                <ItemStyle  />
            </asp:TemplateField>
            
             <asp:TemplateField HeaderText="创建时间">
                <HeaderStyle Width="20%" />
                <ItemTemplate>
                    <%# DataBinder.Eval(Container.DataItem, "CreateTime")%>
                </ItemTemplate>
                <ItemStyle  HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <HeaderStyle Width="12%" />
                <ItemTemplate>
                    <a onclick="aa(<%# Eval("mid")%>)" title="修改">修改</a>
                    <a href="javascript:if(confirm('你确定要删除吗?')) window.location.href='Maps.aspx?AUId=<%# Eval("mid")%>';" title="删除">
                        删除</a>
                    <asp:LinkButton ID="LinkButton8" runat="server" CommandName="ifframe" CommandArgument='<%# Eval("mid") %>' ToolTip="获取地图代码">获取地图代码</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle />
            </asp:TemplateField>
        </Columns>
        <RowStyle ForeColor="Black" Height="25px" CssClass="tdbg" />
        <SelectedRowStyle Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None"
            Height="30px" Font-Overline="False" />
    </asp:GridView>
</div>
<div class="clearbox">
</div>
<span id="Fy" style="text-align: center; font-size: 12px;" runat="server">共
    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
    条数据
    <asp:LinkButton ID="Toppage" runat="server" OnClick="Toppage_Click">首页</asp:LinkButton>&nbsp;
    <asp:LinkButton ID="Nextpage" runat="server" OnClick="Nextpage_Click">上一页</asp:LinkButton>&nbsp;
    <asp:LinkButton ID="Downpage" runat="server" OnClick="Downpage_Click">下一页</asp:LinkButton>&nbsp;
    <asp:LinkButton ID="Endpage" runat="server" OnClick="Endpage_Click">尾页</asp:LinkButton>&nbsp;
    &nbsp;页次：
    <asp:Label ID="Nowpage" runat="server" Text="" />
    /
    <asp:Label ID="PageSize" runat="server" Text="" />
    页
    <asp:Label ID="pagess" runat="server" Text="" />
    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" CssClass="l_input"
        Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged">20</asp:TextBox>
    条数据/页 转到第
    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
    </asp:DropDownList>
    页
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
        ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
</span>
<br />
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="sleall">
    <tr>
        <td style="height: 21px">
            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="全选" />
            &nbsp;
            <asp:Button ID="btndelete" CssClass="C_input" Style="width: 110px;" runat="server" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}"  Text="删除选定地图" OnClick="btndelete_Click" />
        </td>
    </tr>
    <tr>
        <td style="height: 21px">
        </td>
    </tr>
</table>
</form>
</body>
</html>
<script type="text/javascript">
    function aa(id) {
        window.open('/manage/Template/AddMap.aspx?Mid=' + id, 'newWin', 'modal=yes,width=900,height=600,resizable=yes,scrollbars=yes');
        //window.parent.frames['main_right'].location.reload();
    }

    function myrefresh() {
        window.location.reload();
    }
    //setTimeout('myrefresh()', 10000);
</script>