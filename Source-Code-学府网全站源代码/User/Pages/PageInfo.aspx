<%@ page language="C#" autoeventwireup="true" inherits="User_Pages_PageInfo, App_Web_nfqkewuz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>注册企业黄页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="Stylesheet" type="text/css" href="/Plugins/Ckeditor/EditFile/sample.css" />
<link href="../../../App_Themes/UserThem/bidding.css" rel="stylesheet" type="text/css" />
<link rel="Stylesheet" type="text/css" href="../../App_Themes/UserThem/user_user.css" />
<script type="text/javascript" src="/JS/Common.js"></script>
<script type="text/javascript" src="/js/RiQi.js"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/EditFile/sample.js"></script>
<script type="text/javascript" src="/Plugins/kindeditor/kindeditor.js"></script>

</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
    您现在的位置：<a title="网站首页" href="/" target="_blank"><%=ZoomLa.Components.SiteConfig.SiteInfo.SiteName%></a>&gt;&gt; <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt;注册企业黄页
</div>
<div class="us_seta" style="margin-top: 10px;"><asp:Label ID="Label1" runat="server"></asp:Label></div>
<div class="us_seta" style="margin-top: 10px; float: left; width: 900px;" id="regpage" runat="server">
    <table style="width: 100%">
        <tr>
            <td colspan="2"><h1 style="text-align: center"><asp:Label ID="Label2" runat="server"></asp:Label></h1></td>
        </tr>
        <tr>
            <td style="width: 25%; line-height: 30px; height: 30px; text-align: right;">会员账号:</td>
            <td style="width: 75%; line-height: 30px; height: 30px; padding-left: 5px; text-align: left;"><asp:Label ID="Username" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="line-height: 30px; height: 30px; text-align: right;">黄页类型:</td>
            <td style="line-height: 30px; height: 30px; padding-left: 5px; text-align: left;">
                <asp:RadioButtonList ID="Styleids" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" Height="24px" RepeatColumns="4" Style="margin-top: 0px; padding-top: 0px; line-height: 30px"></asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="line-height: 30px; height: 30px; text-align: right;">企业名称:</td>
            <td style="line-height: 30px; height: 30px; padding-left: 5px; text-align: left;"><asp:TextBox ID="Proname"  CssClass="l_input" runat="server" Width="300px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="line-height: 30px; height: 30px; text-align: right;">二级域名:</td>
            <td style="line-height: 30px; height: 30px; padding-left: 5px; text-align: left;"><asp:TextBox ID="SeDomain"  CssClass="l_input" runat="server" Width="300px"></asp:TextBox>
                .<%=ZoomLa.Components.SiteConfig.SiteOption.freedomain%></td>
        </tr>
        <tr>
            <td style="line-height: 30px; height: 30px; text-align: right;">企业LOGO:</td>
            <td style="line-height: 30px; height: 30px; padding-left: 5px; text-align: left;">
                <table border='0' cellpadding='0' cellspacing='1' width='100%'>
                    <tr class='tdbg'><td><asp:TextBox ID="txt_logos" runat="server"  CssClass="l_input" Width="300px"></asp:TextBox></td></tr>
                    <tr class='tdbg'>
                        <td><iframe id="Iframe1" src="/Common/UserUpload.aspx?FieldName=txt_logos" marginheight="0"marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="line-height: 30px; height: 30px; text-align: right;">企业说明:</td>
            <td style="line-height: 30px; height: 30px; padding-left: 5px; text-align: left;">
                <asp:TextBox ID="PageInfo" runat="server" Height="176px" TextMode="MultiLine" Width="463px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="line-height: 30px; height: 30px; text-align: right;">快速栏目样式分配：</td>
            <td><asp:DropDownList ID="Styleid" runat="server"> </asp:DropDownList></td>
        </tr>
    </table>
    <div class="clear"></div>
    <ul>
        <li style="padding-left: 15%;">&nbsp;<asp:Literal ID="ModelHtml" runat="server"></asp:Literal></li>
        <li style="text-align: right; float: right; line-height: 30px"></li>
        <li style="float: right; line-height: 30px; text-align: center"></li>
    </ul>
    <div class="clear">
    </div>
    <table style="margin: auto;">
        <tr>
            <td colspan="2" style="text-align: center;"> 
                <asp:HiddenField ID="HdnNode" runat="server" />
                <asp:HiddenField ID="HdnID" runat="server" />
                <asp:HiddenField ID="HdnModel" runat="server" />
                <asp:Button ID="BtnSubmit" CssClass="i_bottom" runat="server" Text="提交" OnClick="BtnSubmit_Click" /> &nbsp;&nbsp;
                <input type="reset"  class="i_bottom" value="取消" />
            </td>
        </tr>
    </table>
</div>
<div class="clear"></div>
<div class="us_seta" style="margin-top: 10px; line-height: 28px; padding-left: 20px;" id="Auditing" runat="server" visible="false">
    正在审核中......! 请等待管理员开通您的黄页功能! <a href=""></a><br />
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">修改我提交的黄页信息!</asp:LinkButton><br /><br /><br />
</div>
<div class="clear"></div>
</form>
</body>
</html>
