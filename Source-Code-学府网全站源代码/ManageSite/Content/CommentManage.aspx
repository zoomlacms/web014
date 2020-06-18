﻿<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.CommentManage, App_Web_lmrcgmxm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title> 评论</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />

<script src="/JS/Common.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
           当前位置：功能导航 >><a href="CommentManage.aspx">评论管理</a></div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1">
            <tr  align="left">
                <td>
                    <asp:LinkButton ID="LbtnAllComment" runat="server" OnClick="BtnAllComment_Click">所有评论</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LbtnUNAuditedComment" runat="server" OnClick="BtnUNAuditedComment_Click">待审核评论</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LbtnuditedComment" runat="server" OnClick="BtnAuditedComment_Click">已审核评论</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        DataKeyNames="CommentID" PageSize="20" OnRowDataBound="Egv_RowDataBound" OnPageIndexChanging="Egv_PageIndexChanging"
                        OnRowCommand="Lnk_Click" Width="100%">
                        <Columns>
                            <asp:TemplateField HeaderText="选择">
                                <HeaderStyle Width="5%" />
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkSel" runat="server" />
                                </ItemTemplate>
                                <ItemStyle CssClass="tdbg" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="CommentID" HeaderText="ID">
                                <HeaderStyle Width="5%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="所属内容标题">
                                <HeaderStyle Width="20%" />
                                <ItemTemplate>
                                    <a href="<%# GetUrl(Eval("GeneralID", "{0}"))%>" target="_blank">
                                        <%# GetTitle(Eval("GeneralID", "{0}"))%></a>
                                </ItemTemplate>
                                <ItemStyle CssClass="tdbg" HorizontalAlign="left" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Title" HeaderText="评论标题">
                                <HeaderStyle Width="10%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Contents" HeaderText="评论内容">
                                <HeaderStyle Width="25%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="left" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="发表日期">
                                <HeaderStyle Width="10%" />
                                <ItemTemplate>
                                    <%# Eval("CommentTime", "{0:yyyy-mm-dd}")%>
                                </ItemTemplate>
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="发表人">
                                <HeaderStyle Width="10%" />
                                <ItemTemplate>
                                    <%# GetUserName(Eval("UserID", "{0}"))%>
                                </ItemTemplate>
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="IP">
                                <HeaderStyle Width="10%" />
                                <ItemTemplate>
                                    <%# Eval("IP", "{0}")%>
                                </ItemTemplate>
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="操作">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("CommentID") %>'
                                        OnClientClick="return confirm('你确定将该数据彻底删除吗？')">删除</asp:LinkButton>
                                    |
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Audit" CommandArgument='<%# Eval("CommentID") %>'
                                        OnClientClick="return confirm('你确定将该数据还原吗？')">审核</asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
                        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None"
                            Height="30px" Font-Overline="False" />
                        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast"
                            NextPageText="下一页" PreviousPageText="上一页" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="left">
                    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged"
                        Text="全选" />
                    <asp:Button ID="Button1" runat="server" Text="删除选定的评论" OnClick="BtnSubmit1_Click"
                        CssClass="button" UseSubmitBehavior="False" OnClientClick="if(!confirm('确定要批量删除评论吗？')){return false;}" />
                    <asp:Button ID="Button2" runat="server" Text="审核通过选定的评论" CssClass="button" OnClick="BtnSubmit2_Click"
                        UseSubmitBehavior="False" />
                    <asp:Button ID="Button3" runat="server" Text="取消审核选定的评论" CssClass="button" OnClick="BtnSubmit3_Click"
                        UseSubmitBehavior="False" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
