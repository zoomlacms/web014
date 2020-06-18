<%@ page language="C#" autoeventwireup="true" inherits="manage_Page_PageManage, App_Web_32dystoa" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>黄页列表</title>
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/main.css" />
<script type="text/javascript" src="../../JS/ajaxrequest.js"></script>
<script type="text/javascript" language="javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
                if (elm[i].checked != xState)
                    elm[i].click();
            }
        }
function getinfo(id){
    location.href = "/manage/page/AuditUser.aspx?menu=modify&id=" + id;
    } 
</script>
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/Common.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    <%if(GetOpenHelp.IsopenHelp()=="1")    { %>  <div id="help"> <a onclick="help_show('86')" title="帮助"></a></div>  <%} %>
  后台管理 &gt;&gt; 企业黄页 &gt;&gt; 黄页管理 &gt;&gt; <a href="PageManage.aspx">黄页列表</a>  
  <span class="ml30"> 申请人：<asp:TextBox ID="keyword" CssClass="l_input" runat="server"></asp:TextBox> 
  <asp:Button ID="Button1" runat="server" CssClass="C_input" Text="搜索" OnClick="Button1_Click" /></span>
      <select runat="server" id="selprovince" name="selprovince" onchange="javascript:area()">
                                            </select>
                                            <asp:DropDownList ID="selcity" runat="server" AutoPostBack="true" 
                   onselectedindexchanged="selcity_SelectedIndexChanged"></asp:DropDownList>
                   </div>
                                           <%-- <select runat="server" id="selcity" onchange="area2();">
                                            </select>--%> 

                                            
 <script type="text/javascript" src="/js/jquery.js"></script>
 <script type="text/javascript">
   
    function area() {
        $.ajax({
            type: "POST",
            url: "PageContent.aspx",
            data: "action=area&value=" + $("#selprovince option:selected").val(),
            success: function (msg) {
                var s = new Array();
                s = msg.split("|");
                var str = "";
                for (var i = 0; i < s.length; i++) {
                    if (s[i] != null && s[i] != "")
                        str += "<option>" + s[i] + "</option>"
                }
                $("#selcity").html(str);
            },
            Error: function (msg) {
                alert("地址获取失败");
            }
        });
    }
    </script>
<br class="clearbox"/>
<table border="0" cellpadding="0" cellspacing="0">
    <tr align="center">
        <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">全部</td>
        <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">待审核</td>
        <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)">已审核</td>
    </tr>
</table>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
    <tbody id="Tbody1">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="center" class="title" style="width:5%">
                <input type="checkbox" id="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
            </td>
            <td align="center" class="title" style="width:5%"><span class="tdbgleft">ID</span></td>
            <td align="center" class="title" style="width:15%"><span class="tdbgleft">用户</span></td>
            <td align="center" class="title" style="width:18%"><span class="tdbgleft">黄页名称</span></td>
            <td align="center" class="title" style="width:20%"><span class="tdbgleft">子域名</span></td>
            <td align="center" class="title"><span class="tdbgleft">更新时间</span></td>
            <td align="center" class="title" style="width:25%"><span style="background-color: #e0f7e5; width: 30%">操作</span></td>
        </tr>
        <asp:Repeater ID="Pagetable" runat="server">
            <ItemTemplate>
                <tr class="tdbg" id="<%#Eval("ID") %>" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" ondblclick="getinfo(this.id)">  
                    <td style="height: 24px" align="center"><input name="Item" type="checkbox" value="<%#Eval("ID")%>" /></td>
                    <td style="height: 24px" align="center"><%#Eval("ID")%></td>
                    <td style="height: 24px" align="center"><a href="PageTemplate.aspx?id=<%#Eval("ID")%>"><%#Eval("UserName")%></a></td>
                    <td style="height: 24px" align="center"><%#Eval("CompanyName")%></td>
                    <td style="height: 24px" align="center"><a href="http://<%#Eval("Domain")%>.<%=ZoomLa.Components.SiteConfig.SiteOption.freedomain%>" target="_blank"><%#Eval("Domain")%>.<%=ZoomLa.Components.SiteConfig.SiteOption.freedomain%></a></td>
                    <td style="height: 24px" align="center"><%#Eval("UpdateTime")%></td>
                    <td style="height: 24px" align="center">
                        <%#GetRecommendation()%>
                        <%#GetStatus()%>
                        <%--<a href="PageModify.aspx?menu=edit&id=<%#Eval("ID") %>">配置信息</a>--%> <a href="AuditUser.aspx?menu=modify&id=<%#Eval("ID") %>">
                            修改</a> <a href="?menu=del&id=<%#Eval("ID") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td colspan="12" align="center" class="tdbgleft" style="height: 24px">共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条信息
                <asp:LinkButton runat="server" ID="First" onclick="First_Click">首页</asp:LinkButton>
                <asp:LinkButton runat="server" ID="Prev" onclick="Prev_Click">上一页</asp:LinkButton>
                <asp:LinkButton runat="server" ID="Next" onclick="Next_Click">下一页</asp:LinkButton>
                <asp:LinkButton runat="server" ID="Last" onclick="Last_Click">尾页</asp:LinkButton>
                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
                <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" CssClass="l_input" OnTextChanged="txtPage_TextChanged" Width="30px">10</asp:TextBox>
                条信息/页 转到第<asp:DropDownList ID="DropDownListPage" runat="server"  AutoPostBack="True" onselectedindexchanged="DropDownListPage_SelectedIndexChanged"></asp:DropDownList>
                页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
            </td>
        </tr>
    </tbody>
</table>
<table width="100%">
    <tr>
        <td align="left" style="width:100%">
            <asp:Button runat="server" CssClass="C_input" ID="Button2" Text="批量审核" OnClick="Button2_Click" />&nbsp;
            <asp:Button runat="server" CssClass="C_input" ID="Button3" Text="取消审核" OnClick="Button3_Click" />&nbsp;
            <asp:Button runat="server" CssClass="C_input" ID="Button4" Text="批量删除" OnClick="Button4_Click" />&nbsp;
            <asp:Button runat="server" CssClass="C_input" ID="Button5" Text="批量推荐" OnClick="Button5_Click" />&nbsp;
            <asp:Button runat="server" CssClass="C_input" ID="Button6" Text="取消推荐" OnClick="Button6_Click" />&nbsp;
        </td>
    </tr>
</table>
</form>
</body>
</html>
<script type="text/javascript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5");
    window.onload = function () {
        pload();
    }
    function pload() {
        var ID = '<%=Request.QueryString["tid"]%>';
        if (ID != tID) {
            document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
            tID = ID;
        }
    }
    function ShowTabs(ID) {
        location.href = "PageManage.aspx?tid=" + ID + "&type=" + ID;
    }
</script>