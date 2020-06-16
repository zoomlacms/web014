<%@ page language="C#" autoeventwireup="true" inherits="manage_GuestBook_BkCheck, App_Web_wxbncm4g" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
<title>词条管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
 <style>
 .rap { word-wrap: break-word; word-break: break-all;}
#Egv  td{ border:1px solid #fff; width:auto; text-align:center}
.user_t{border:1px solid #9bbde6; border-top:none}
 .borders{ border-bottom:1px solid #40a2fd}</style>
 <script src="/JS/Common.js" type="text/javascript"></script>
<script type="text/javascript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3");
    window.onload = function () {
        pload();
    }
    function ShowTabss(ID) {
        location.href = 'BkCheck.aspx?NodeID=<%=Request.QueryString["NodeID"] %>&id=' + ID + '&type=' + ID;
    }
    function pload() {
        var ID = '<%=Request.QueryString["id"]%>';
        if (ID != tID) {
            document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
            tID = ID;
        }
    }
 </script>
 <script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/Common.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation"><%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('97')" title="帮助"></a></div>
  <%} %>
<%=lang.Get("M_SpecContent_manage")%> &gt;&gt;<%=lang.Get("M_Guest_BaikeMana")%> &gt;&gt;<%=lang.Get("M_Guest_BaikeClass")%>
</div>
<div class="clearbox">
</div>
   <div class="borders">
  <table border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td id="TabTitle0" class="titlemouseover" onclick="ShowTabss(0)"><a href="?type=0&id=0">所有词条</a>

                  </td>
                <td id="TabTitle1" class="tabtitle" onclick="ShowTabss(1)"><a href="?type=1&id=1"><%=lang.Get("m_ContentManage_wait")%></a></td>
                <td id="TabTitle2" class="tabtitle" onclick="ShowTabss(2)"><a href="?type=2&id=2"><%=lang.Get("m_ContentManage_complete")%></a></td>
                <td id="TabTitle3" class="tabtitle" onclick="ShowTabss(3)"><a href="?type=-3&id=3">新版本待审</td> 
	</tr>
</table>
</div>
<div class="clearbox">
</div>
<div class="user_t">
<asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" PageSize="20" OnRowDataBound="Egv_RowDataBound"   OnRowCommand="Lnk_Click" Width="100%" Height="20px" AllowPaging="True"
 CellPadding="1"  RowStyle-CssClass="tdbg"  CellSpacing="0" BackColor="White" ForeColor="Black" CssClass="border">
	<Columns>
		<asp:TemplateField HeaderText="选择">
			<HeaderStyle Width="5%" />
			<ItemTemplate>
				<asp:CheckBox ID="chkSel" runat="server" />
			</ItemTemplate>
			<ItemStyle CssClass="tdbg" />
		</asp:TemplateField>
        <asp:TemplateField HeaderText="" HeaderStyle-Width="0%" Visible="false">
                <ItemTemplate>
                </ItemTemplate>
                <HeaderStyle Width="0%"></HeaderStyle>
                <ItemStyle  CssClass="tdbg"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ID" HeaderStyle-Width="5%" >
                <ItemTemplate>
                    <%#Eval("ID")%>
                </ItemTemplate>
                <HeaderStyle Width="5%"></HeaderStyle>
                <ItemStyle  CssClass="tdbg"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="词条" HeaderStyle-Width="12%" >
                <ItemTemplate>
                    <%#Eval("Tittle")%>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtName" class="l_input" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Tittle")%>'>'></asp:TextBox>
                </EditItemTemplate>
                <HeaderStyle Width="10%"></HeaderStyle>
                <ItemStyle CssClass="tdbg"></ItemStyle> 
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="创建人" HeaderStyle-Width="12%" >
                <ItemTemplate>
                    <%#Eval("UserName")%>
                </ItemTemplate>
                <HeaderStyle Width="10%"></HeaderStyle>
                <ItemStyle CssClass="tdbg"></ItemStyle> 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="创建时间" HeaderStyle-Width="10%" >
                <ItemTemplate>
                    <%#Eval("AddTime")%>
                </ItemTemplate>
                <HeaderStyle Width="10%"></HeaderStyle>
                <ItemStyle CssClass="tdbg"></ItemStyle> 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="修改时间" HeaderStyle-Width="10%" >
                <ItemTemplate>
                    <%#Eval("UpdateTime")%>
                </ItemTemplate>
                <HeaderStyle Width="10%"></HeaderStyle>
                <ItemStyle CssClass="tdbg"></ItemStyle> 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="分类">
            <ItemTemplate>
               <%#Eval("Classification") %>
            </ItemTemplate>
            <ItemStyle CssClass="tdbg" />
            </asp:TemplateField>
           <%-- <asp:TemplateField HeaderText="词条内容" HeaderStyle-Width="20%">
                <ItemTemplate>
                    <%#Eval("Tittle")%>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtName" class="l_input" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Tittle")%>'>'></asp:TextBox>
                </EditItemTemplate>
                <HeaderStyle Width="20%"></HeaderStyle>
                <ItemStyle></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="参考资料" HeaderStyle-Width="6%" >
                <ItemTemplate>
                    <%#Eval("Reference")%>
                </ItemTemplate>
                <HeaderStyle Width="6%"></HeaderStyle>
                <ItemStyle></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="分类" HeaderStyle-Width="6%" >
                <ItemTemplate>
                    <%#Eval("Btype")%>
                </ItemTemplate>
                <HeaderStyle Width="6%"></HeaderStyle>
                <ItemStyle></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="扩展阅读" HeaderStyle-Width="6%" >
                <ItemTemplate>
                    <%#Eval("Extend")%>
                </ItemTemplate>
                <HeaderStyle Width="6%"></HeaderStyle>
                <ItemStyle></ItemStyle>
            </asp:TemplateField>--%>
            <asp:TemplateField HeaderText="推荐" HeaderStyle-Width="8%" >
                <ItemTemplate>
                    <%#getElite(Eval("Elite").ToString())%>
                </ItemTemplate>
                <HeaderStyle Width="8%"></HeaderStyle>
                <ItemStyle CssClass="tdbg"></ItemStyle> 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="合并状态" HeaderStyle-Width="8%" >
                <ItemTemplate>
                    <%#getsta(Eval("Merge").ToString())%>
                </ItemTemplate>
                <HeaderStyle Width="8%"></HeaderStyle>
                <ItemStyle CssClass="tdbg"></ItemStyle> 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="审核">
                <ItemTemplate>
                    <%#getcommend(Eval("status"))%>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg"></ItemStyle> 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <ItemTemplate> 
                    <a href="/Guest/BkDetails.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString()) %>" target="_blank">预览</a>
                    | <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="Audit" CausesValidation="false">审核</asp:LinkButton>
                    | <a href="BkAlter.aspx?id=<%#Server.UrlEncode(Eval("ID").ToString()) %>" target="_self">修改</a>
                    |
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="return confirm('确实要删除吗？');" CommandArgument='<%#Eval("ID") %>' CommandName="Del" CausesValidation="false">删除</asp:LinkButton>
                    | <a href="baikeMerger.aspx?tittle=<%#Eval("Tittle").ToString()%>">合并词条</a>|
                    <a href="InfoList.aspx?tittle=<%#Eval("Tittle").ToString()%>">信息列表</a>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
	</Columns>
	<RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
	<SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
	<PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
	<HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
</asp:GridView>
<table width="100%">
        <tr>
            <td class="tdbg">
                <div style="text-align: center">
                    <span style="text-align: center">
                        <%=lang.Get("m_ContentManage_total")%>
                        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                        <%=lang.Get("m_ContentManage_data")%>
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />
                        <%=lang.Get("m_ContentManage_pages")%>：
                        <asp:Label ID="Nowpage" runat="server" Text="1" />/
                        <asp:Label ID="PageSize" runat="server" Text="" /><%=lang.Get("m_ContentManage_page")%>
                        <asp:Label ID="pagess" runat="server" Text="" />
                        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged"
                            Width="30px"></asp:TextBox>
                        <%=lang.Get("m_ContentManage_turn")%>
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        </asp:DropDownList>
                        <%=lang.Get("m_ContentManage_page")%><asp:RangeValidator ID="RangeValidator1" runat="server"
                            ControlToValidate="txtPage" ErrorMessage="仅支持数字" Type="Integer" MaximumValue="100000"
                            MinimumValue="0"></asp:RangeValidator></span></div>
            </td>
        </tr>
    </table>
</div>
<asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="全选" />
<asp:Button ID="Button1"   runat="server" Text="批量删除" OnClick="BtnSubmit1_Click" UseSubmitBehavior="False" OnClientClick="if(!confirm('确定要批量删除词条吗？')){return false;}" class="C_input"/>
<asp:Button ID="Button2"   runat="server" Text="批量审核" OnClick="BtnSubmit2_Click" UseSubmitBehavior="False" class="C_input" />
<asp:Button ID="Button3"  runat="server" Text="取消审核" OnClick="BtnSubmit3_Click" UseSubmitBehavior="False" class="C_input" />
<asp:Button ID="Button4"   runat="server" Text="推荐" OnClick="BtnSubmit4_Click" UseSubmitBehavior="False" class="C_input" />
<asp:Button ID="Button5"  runat="server" Text="取消推荐" OnClick="BtnSubmit5_Click" UseSubmitBehavior="False" class="C_input" />
<asp:Button ID="Button8"  runat="server" Text="特色" OnClick="BtnSubmit8_Click" UseSubmitBehavior="False" class="C_input" />
<asp:Button ID="Button9"  runat="server" Text="取消特色" OnClick="BtnSubmit9_Click" UseSubmitBehavior="False" class="C_input" />
<asp:Button ID="Button6"  runat="server" Text="每日图片" OnClick="BtnSubmit6_Click" UseSubmitBehavior="False" class="C_input" />
<asp:Button ID="Button7"  runat="server" Text="取消每日图片" OnClick="BtnSubmit7_Click" UseSubmitBehavior="False" class="C_input" />
</form>
</body>
</html>
