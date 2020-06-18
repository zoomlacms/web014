<%@ page language="C#" autoeventwireup="true" validaterequest="false" enableeventvalidation="false" inherits="manage_Page_AuditUser, App_Web_32dystoa" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>查看企业黄页</title>
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/main.css" />
<script type="text/javascript" src="/JS/Common.js"></script>
<script type="text/javascript" src="/JS/RiQi.js"></script>
</head>
<body>
<form id="form1" runat="server">
    <div class="r_navigation">
        后台管理 &gt;&gt; 企业黄页 &gt;&gt; <a href="PageManage.aspx">黄页管理 </a>&gt;&gt; 查看黄页申请
    </div>
    <div class="clearbox">    </div> 
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody1">
            <tr class="tdbg">
                <td align="center" colspan="2" class="title" style="width:10%">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr class="tdbg">
                        <td align="right" class="tdbgleft" style="height: 24px; width: 30%">
                            用 户 名
                        </td>
                        <td align="left" class="tdbgright" style="height: 24px; width: 70%">
                            <%#Eval("Username") %>
                            <input type="hidden" name="hdusername" value="<%#Eval("Username") %>" />
                        </td>
                    </tr>
                    <tr id="Tr2" class="tdbg" runat="server">
                        <td align="right" class="tdbgleft" style="height: 24px; width: 30%">
                            企业名称：
                        </td>
                        <td align="left" class="tdbgright" style="height: 24px; width: 70%">
                            <input name="CompanyName" id="CompanyName" type="text" value="<%#Eval("CompanyName") %>"
                                class="l_input" style="width: 300px" />
                        </td>
                    </tr>
                    <tr id="Tr3" class="tdbg" runat="server">
                        <td align="right" class="tdbgleft" style="height: 24px; width: 30%">
                            二级域名：
                        </td>
                        <td align="left" class="tdbgright" style="height: 24px; width: 70%">
                            <input name="domain" id="domain" type="text" value="<%#Eval("domain") %>" class="l_input"
                                style="width: 60px" />.<%=ZoomLa.Components.SiteConfig.SiteOption.freedomain %>
                        </td>
                    </tr>
                    <tr id="Tr4" class="tdbg" runat="server">
                        <td align="right" class="tdbgleft" style="height: 24px; width: 30%">
                            企业LOGO：
                        </td>
                        <td align="left" class="tdbgright" style="height: 24px; width: 70%">
                            <input name="logo" id="logo" type="text" value="<%#Eval("logo") %>" class="l_input"
                                style="width: 320px" />
                        </td>
                    </tr>
                    <tr id="Tr5" class="tdbg" runat="server">
                        <td align="right" class="tdbgleft" style="height: 24px; width: 30%">
                            企业说明：
                        </td>
                        <td align="left" class="tdbgright" style="height: 24px; width: 70%">
                            <textarea id="pageinfo" name="pageinfo" cols="80" rows="8" class="x_input"><%#Eval("pageinfo") %></textarea>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr><td colspan="2"><asp:Literal ID="ModelHtml" runat="server"></asp:Literal></td></tr>
            
            <asp:Label ID="RegFileds" runat="server" Text=""></asp:Label><tr class="tdbg">
                <td align="center" colspan="2" class="tdbgright" style="height: 24px; width: 100%">
                    <asp:HiddenField ID="HdnID" runat="server" />
                    <asp:HiddenField ID="HdnModel" runat="server" />
<%--                    <asp:Button ID="Button1" runat="server" Text="确认审核" CssClass="C_input" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="取消审核" CssClass="C_input" OnClick="Button2_Click"
                        OnClientClick="return confirm('您确定要取消该用户的企业黄页吗？');" />
                    <asp:Button ID="Button3" runat="server" Text="返回" CssClass="C_input" OnClick="Button3_Click" />
--%>                    <asp:Button ID="Button5" CssClass="C_input" runat="server" Text="修改" OnClick="Button5_Click" />
                    <asp:Button ID="Button4" CssClass="C_input" runat="server" OnClick="Button4_Click"
                        Text="返回" />
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</body>
</html>
