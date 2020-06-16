<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_BackupRestore, App_Web_3l1u0nin" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html>
<head runat="server">
<title>备份与还原数据库</title>
<link type="text/css" href="/App_Themes/AdminDefaultTheme/Guide.css" rel="stylesheet" />
<link type="text/css" href="/App_Themes/AdminDefaultTheme/index.css" rel="stylesheet" />
<link type="text/css" href="/App_Themes/AdminDefaultTheme/main.css" rel="stylesheet" />
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/Common.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:HiddenField ID="HdnPath" runat="server" />
    <div class="r_navigation">
       <%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('69')" title="帮助"></a></div>
  <%} %> 后台管理&gt;&gt;扩展功能&gt;&gt;数据维护&gt;&gt;备份与还原数据库</div>
    <%--    <div class="spacingtitle">
        备份与还原数据库</div>--%>
    <table width="100%" cellpadding="0" cellspacing="1" border="0" class="border" align="center">
        <tr class="gridtitle" align="center" style="height: 24px">
            <td>
                文件名
            </td>
            <td style="width: 15%">
                大小
            </td>
            <td style="width: 20%">
                创建时间
            </td>
            <td style="width: 25%">
                操作
            </td>
        </tr>
        <asp:Repeater ID="RptFiles" runat="server" OnItemCommand="RptFiles_ItemCommand">
            <ItemTemplate>
                <tr style="height: 24px" class="tdbg" onmouseover="this.className='tdbgmouseover';"
                    onmouseout="this.className='tdbg';">
                    <td align="left">
                        <%# System.Convert.ToInt32(Eval("type")) == 1 ? "<img src='/App_Themes/AdminDefaultTheme/Images/Folder/mfolderclosed.gif'>" : GetShowExtension(Eval("content_type").ToString())%>
                        <% if ((Request.QueryString["Type"] == "video") || (Request.QueryString["Type"] == "music"))
                           { %>
                        <%# System.Convert.ToInt32(Eval("type")) == 1 ? "<a href='CloudManage.aspx?Type="+Request["Type"]+"&Dir=" + Server.UrlEncode(GetPath()) + "'>" + Eval("Name").ToString() + "</a>" : "<a href='javascript:open(\""+GetPath()+"\");'>" + Eval("Name").ToString() + "</a>"%>
                        <%}
                           else
                           { %>
                        <%# (Eval("content_type").ToString() == "jpg" || Eval("content_type").ToString() == "png" || Eval("content_type").ToString() == "gif" || Eval("content_type").ToString() == "bmp") ? "<a href='javascript:open(\"" + GetPath() + "\");'>" + Eval("Name").ToString() + "</a>" : System.Convert.ToInt32(Eval("type")) == 1 ? "<a href='CloudManage.aspx?Type=" + Request["Type"] + "&Dir=" + Server.UrlEncode(GetPath()) + "'>" + Eval("Name").ToString() + "</a>" :  Eval("Name").ToString() %>
                        <%} %>
                    </td>
                    <td align="center">
                        <%# GetSize(Eval("size").ToString())%>
                    </td>
                    <td align="center">
                        <%# Eval("createTime")%>
                    </td>
                    <td align="center">
                        <%# System.Convert.ToInt32(Eval("type")) == 1 ? "" : "[<a  href='" + "/temp" + GetPath() + "'>下载</a>]"%>
                        [<asp:LinkButton ID="LbtnDelList" CommandName='<%# System.Convert.ToInt32(Eval("type")) == 1 ? "DelDir":"DelFiles" %>'
                            CommandArgument='<%# Eval("Name")%>' OnClientClick="if(!this.disabled) return confirm('确定要删除吗？');"
                            runat="server">删除</asp:LinkButton>]
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center">
        <tr class="tdbg">
            <td class="tdbgleft" style="width: 350px; text-align: center;">
                数据库的保存名字：
            </td>
            <td>
                <asp:TextBox ID="DatabasePath" class="l_input" Width="200" Height="20" Font-Size="11"
                    runat="server"></asp:TextBox>&nbsp;* 默认为网站根目录下的temp目录
            </td>
        </tr>
    </table>
    <asp:Button ID="Backup" runat="server" Text="备份数据库" class="C_input" OnClick="Backup_Click" />
    <asp:Button ID="Restore" runat="server" Text="还原数据库" class="C_input" OnClick="Restore_Click" />
    <asp:Button ID="Packag" runat="server" Text="压缩数据库文件" class="C_input" OnClick="Packag_Click" />
    </form>
</body>
</html>