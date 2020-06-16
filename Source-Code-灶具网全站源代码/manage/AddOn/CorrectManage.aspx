﻿<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.AddOn.CorrectManage, App_Web_3z3bw0fh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>纠错报告</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt; 扩展功能 &gt;&gt; 其他管理  &gt;&gt;  纠错报告</div>
<div class="divline" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" class="l_input">
    <b> 根据标题搜索：</b><asp:TextBox ID="TxtTitle" runat="server" class="l_input"></asp:TextBox><asp:Button ID="Button1"  class="C_input" runat="server" Text="搜索" OnClick="Button1_Click" />
</div>
<div class="clearbox"></div>
<asp:GridView ID="Gdv" DataKeyNames="CorrectID" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="20" Width="100%"  Height="30%" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" EmptyDataText="无相关数据">
    <Columns>
        <asp:TemplateField HeaderText="选中">                       
            <ItemTemplate>
            <asp:CheckBox ID="chkSel" runat="server" />
            </ItemTemplate>
            <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
            <HeaderStyle Width="5%" />
        </asp:TemplateField>
        <asp:BoundField DataField="CorrectID" HeaderText="ID">
        <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
        <HeaderStyle Width="5%" />
        </asp:BoundField>
        <asp:TemplateField HeaderText="网页标题">
            <HeaderStyle Width="20%" />
            <ItemTemplate>
            <a href="<%#Eval("CorrectUrl")%>" title="点击查看出错页" target="_parent"><%#Eval("CorrectTitle")%></a>
            </ItemTemplate>
            <ItemStyle  CssClass="tdbg" HorizontalAlign="left" />                        
        </asp:TemplateField>
        <asp:BoundField DataField="CorrectDetail" HeaderText="详细信息">
        <ItemStyle  CssClass="tdbg" HorizontalAlign="left" />
        <HeaderStyle Width="30%" />
        </asp:BoundField>
        <asp:TemplateField HeaderText="错误类型">
            <HeaderStyle Width="10%" />
            <ItemTemplate>
            <%# GetCTitle(Eval("CorrectType", "{0}"))%>
            </ItemTemplate>
            <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />                        
        </asp:TemplateField>
        <asp:BoundField DataField="CorrectPer" HeaderText="报告人">
        <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
        <HeaderStyle Width="10%" />
        </asp:BoundField>
        <asp:BoundField DataField="PerEmail" HeaderText="报告人Email">
        <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
        <HeaderStyle Width="10%" />
        </asp:BoundField>
        <asp:TemplateField HeaderText="操作">                
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("CorrectID") %>' OnClientClick="return confirm('你确定将该数据删除吗？')">删除</asp:LinkButton>
            </ItemTemplate>
            <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
        </asp:TemplateField>
    </Columns>
    <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
     <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
     <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
     <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
     <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
</asp:GridView>
<asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="全选" />
<asp:Button ID="btnDeleteAll" style="width:110px;"  class="C_input" runat="server" Text="批量删除" OnClick="btnDeleteAll_Click"
    OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}"  UseSubmitBehavior="true" />
</form>
</body>
</html>
