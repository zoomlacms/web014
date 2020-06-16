<%@ page language="C#" autoeventwireup="true" inherits="manage_Microblog_LivingManage, App_Web_kwqiwngt" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title> 直播室管理</title> 
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script language="javascript" type="text/javascript">
    var tID = 0;
    //var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6", "TabTitle7");
    var arrTabs = new Array("Div0", "Div1", "Div2"); 
    function pload() {
        window.onload = function () { alert('ad'); }
        var ID = '<%=Request.QueryString["type"]%>';
        if (ID != '') {

            document.getElementById(arrTabs[ID].toString()).style.display = "";
            document.getElementById(arrTabs[ID].toString()).className = "titlemouseover";
            document.getElementById("Div").className = "tabtitle";
        } else {
            document.getElementById("Div").style.display = "";
            document.getElementById("Div").className = "titlemouseover";
            tID = ID;
        }
    }
</script>
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/Common.js"></script>
<style>#Egv th,#Egv td{ border:1px solid #fff;}</style>
</head>
<body onload="pload()">
<form id="form1" runat="server">
 <div class="r_navigation">
 <%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('28')" title="帮助"></a></div>
  <%} %> 后台管理 &gt;&gt; 用户管理 &gt;&gt; <a href="LivingManage.aspx">直播室管理</a> <span class="line"><asp:TextBox ID="TxtLogName" runat="server" class="l_input" style="vertical-align:middle;"> 主题</asp:TextBox><asp:Button ID="BntSearch" runat="server" Text="查询" OnClick="BntSearch_Click" class="C_input"  style="vertical-align:middle;"/></span>
    </div>
  <div class="clearbox"></div>
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td id="Div" class="titlemouseover"><a href="LivingManage.aspx">所有直播室</a></td>
                <td id="Div0" class="tabtitle"><a href="LivingManage.aspx?type=0">已审核</a></td> 
                <td id="Div1" class="tabtitle"><a href="LivingManage.aspx?type=1">未审核</a></td> 
                <td>&nbsp;  </td>
            </tr>
        </table>
    </div>
    <div class="divbox" id="nocontent" runat="server">暂无信息</div>
    <div class="user_t">
    <asp:GridView ID="Egv" runat="server" Width="100%" AutoGenerateColumns="False" 
            DataKeyNames="ID" AllowPaging="True" PageSize="20" 
            OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" 
            CssClass="border" AllowSorting="true" OnRowDataBound="Egv_RowDataBound">
        <Columns>
       <asp:TemplateField HeaderText="选择">
        <ItemTemplate>
          <asp:CheckBox ID="chkSel" runat="server" />
        </ItemTemplate>
        <ItemStyle Width="5%" HorizontalAlign="Center" />
      </asp:TemplateField>
            <asp:BoundField HeaderText="ID" DataField="lid">
                <ItemStyle Width="5%" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="主题">
                <ItemTemplate>
                 <a href="/t/myRoom.aspx?id=<%# Eval("lid")%>"  target="_blank"> <%# Eval("ltopic")%></a>
                </ItemTemplate>
                <ItemStyle Width="20%" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="直播人">
                <HeaderStyle Width="10%" />
                <ItemTemplate>
                    <a href="LivingManage.aspx.aspx?UID=<%#Eval("lpersonId")%>"><%#Eval("lperson")%> </a> 
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="创建日期">
                <HeaderStyle Width="8%" />
                <ItemTemplate>
                <%#Eval("ldate", "{0:yyyy-MM-dd}")%>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
             <asp:TemplateField HeaderText="时间安排">
                <HeaderStyle Width="8%" />
                <ItemTemplate>
                <%#Eval("lArrange")%>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
               <asp:TemplateField HeaderText="嘉宾">
                <HeaderStyle Width="15%" />
                <ItemTemplate>
                <%#Eval("lguest")%>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="状态">
                <HeaderStyle Width="5%" />
                <ItemTemplate> 
               <%#getStatus(Eval("lcheck").ToString())%> 
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
           <asp:TemplateField HeaderText="推荐">
                <HeaderStyle Width="5%" />
                <ItemTemplate> 
               <%#getElit(Eval("lrecommend").ToString())%> 
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <HeaderStyle />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="View" CommandArgument='<%# Eval("lid") %>'>进入</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("lid") %>'>修改</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Check" CommandArgument='<%# Eval("lid") %>'>审核</asp:LinkButton> 
                    |
                    <asp:LinkButton ID="LinkButton10" runat="server" CommandName="Elit" CommandArgument='<%# Eval("lid") %>'>推荐</asp:LinkButton> 
                    
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Del" OnClientClick="return confirm('确定删除此直播室？');" CommandArgument='<%# Eval("lid") %>'>删除</asp:LinkButton>
                       </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
          
        </Columns>
        <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
      <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
      <PagerStyle ForeColor="#030E0E" HorizontalAlign="Center" />
      <PagerSettings FirstPageText="" LastPageText="" Mode="NextPrevious" NextPageText="" PreviousPageText="" Visible="False" />
      <HeaderStyle Font-Bold="True" ForeColor="#030E0E" BorderStyle="None" Height="30px" Font-Overline="False" CssClass="tdbg" />
      <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast"  NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
    <div style="text-align: center" class="tdbg" id="pages" runat="server"> <span style="text-align: center">共
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
    <asp:Label ID="pagess" runat="server" Text="" />
    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"  Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
    条数据/页 转到第
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
    页
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
    
    </span></div>
  </div>
       
  <div class="clearbox"> </div>
  <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="CheckSelectAll_CheckedChanged" Text="全选" />
  &nbsp;
  <asp:Button ID="btndelete" runat="server" OnClientClick="if(!IsSelectedId()){alert('请选择直播室');return false;}else{return confirm('你确定要删除选中的直播室吗？')}" Text="删除选定直播室" OnClick="btndelete_Click" class="C_input" />
  &nbsp;
  <asp:Button ID="Button2" runat="server" Text="批量审核" OnClientClick="if(!IsSelectedId()){alert('请选择直播室');return false;}else{return confirm('你确定要审核通过选中的直播室吗？')}" OnClick="BtnCheck_Click" class="C_input" />
        <asp:Button ID="Button4" runat="server" Text="取消审核" OnClientClick="if(!IsSelectedId()){alert('请选择直播室');return false;}else{return confirm('你确定要取消审核选中直播室吗？')}" OnClick="BtnNCheck_Click" class="C_input" />
<asp:Button ID="Button3" runat="server" Text="批量推荐" OnClientClick="if(!IsSelectedId()){alert('请选择直播室');return false;}else{return confirm('你确定要推荐选中直播室吗？')}" OnClick="BtnElit_Click" class="C_input" />
    <asp:Button ID="Button1" runat="server" Text="取消推荐" OnClientClick="if(!IsSelectedId()){alert('请选择直播室');return false;}else{return confirm('你确定要取消推荐选中直播室吗？')}" OnClick="BtnNElit_Click" class="C_input" />
 </form>
</body>
</html>