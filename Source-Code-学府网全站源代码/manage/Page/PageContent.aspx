<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Page.PageContent,App_Web_32dystoa" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>内容管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>  
<style>
.tdbg{text-align:center}
#Egv td{ border:1px solid #fff;}
#zd_content td{ text-align:center;}
</style> 
<script type="text/javascript" src="../../js/Common.js"></script> 
<script type="text/javascript" src="../../JS/ajaxrequest.js"></script>
<script type="text/javascript" src="../../JS/PassStrong.js"></script>
<script>


    var tID = 0;
    var arrTabTitle = new Array("TabTitle", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4");
    window.onload = function () {
        pload();
    }
    function pload() {
        var ID = '<%=Request.QueryString["ID"]%>';
        if (ID != tID) {
            document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
            tID = ID;
        }
    }
</script> 
 <script>	
  function elites(id2,id1){
  	 window.open("/manage/page/EditContent1.aspx?GeneralID="+id2+"&elite="+id1,"main_right")
  }
  	 function zds(id2,id1){
	 window.open("/manage/page/EditContent1.aspx?GeneralID="+id2+"&zd="+id1,"main_right")
  }
  </script>

<script type="text/javascript" src="/JS/ajaxrequest.js"></script>
<script type="text/javascript" src="/JS/jquery-1.5.1.min.js"></script>
<script type="text/javascript"> 
    var ajax = new AJAXRequest();
    function gettype(ids) { 
        ajax.get(
    "/class_271/NodeElite.aspx?ID=" + ids,
      function (obj) {
        var pri = obj.responseText; 
     $("#school"+ids).html(pri);
    }
    );
}

 function getcity(ids) { 
        ajax.get(
    "/class_271/NodeNews.aspx?ID=" + ids,
      function (obj) {
        var pri = obj.responseText; 
     $("#cityes"+ids).html(pri);
    }
    );
}

 function gettypes(ids) { 
        ajax.get(
    "/class_271/Nodehot.aspx?ID=" + ids,
      function (obj) {
        var pri = obj.responseText; 
     $("#types"+ids).html(pri);
    }
    );
}

 function gettime(ids) { 
        ajax.get(
    "/class_271/Nodepage.aspx?ID=" + ids,
      function (obj) {
        var pri = obj.responseText; 
     $("#time"+ids).html(pri);
    }
    );
}

 function getelite(ids) { 
        ajax.get(
    "/class_272/Nodehot.aspx?ID=" + ids,
      function (obj) {
        var pri = obj.responseText;
		  if(pri=='0')
		 { $("#elite"+ids).html('|<A href="/manage/page/EditContent1.aspx?elite=1&GeneralID='+ids+'" target="main_right" >推荐</A>');  }
		 else if(pri=='1'){
		 $("#elite"+ids).html('|<A href="/manage/page/EditContent1.aspx?elite=0&GeneralID='+ids+'" target="main_right" style="color:red">取消推荐</A>');  
		 }
     }
    );
}
 function getzd(ids) { 
        ajax.get(
    "/class_272/NodeElite.aspx?ID=" + ids,
      function (obj) {
         var pri = obj.responseText;  
    if(pri=='0')
		 {
		 $("#zd"+ids).html('|<A href="/manage/page/EditContent1.aspx?zd=1&GeneralID='+ids+'" target="main_right">置顶</A>');  }
		 else if(pri=='1'){
		 $("#zd"+ids).html('|<A href="/manage/page/EditContent1.aspx?zd=0&GeneralID='+ids+'" target="main_right" style="color:red">已置顶</A>');  
		 }
		 
    
    }
    );
 }

</script>

</head>

<body>


<form id="form1" runat="server">    
<div class="r_navigation">	<%if(GetOpenHelp.IsopenHelp()=="1")    { %>      <div id="help"> <a onclick="help_show('88')" title="帮助"></a></div>  <%} %>
   后台管理  &gt;&gt; <a href="PageManage.aspx">企业黄页 </a>&gt;&gt; <a href="PageContent.aspx"><asp:Label ID="Label1" runat="server"></asp:Label></a>  
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div class="clearbox"></div>     
 <div class="divline" style="padding-left: 5px; height: 35px;">
        <ul> 
            <li style="float: left;"> &nbsp;&nbsp; <b>
                    <%=lang.Get("m_ContentManage_sort") %>：</b>
                <asp:DropDownList ID="txtbyfilde" CssClass="x_input" runat="server" OnSelectedIndexChanged="txtbyfilde_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="txtbyOrder" runat="server" CssClass="x_input" OnSelectedIndexChanged="txtbyOrder_SelectedIndexChanged">
                </asp:DropDownList>
            </li>
            <li style="float: left; margin-left:20px;">&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" CssClass="x_input" runat="server">
                    <asp:ListItem Value="0" Selected="True">标题</asp:ListItem>
                    <asp:ListItem Value="1">ID</asp:ListItem>
                    <asp:ListItem Value="2">录入者检索</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox1" runat="server" Width="90px" Height="15px" class="l_input"></asp:TextBox>
                <asp:Button ID="Button4" runat="server" Text="查找" OnClick="Button4_Click" class="C_input" />&nbsp;
                 
            </li>
           <li>     <select runat="server" id="selprovince" name="selprovince" onchange="javascript:area()">
                                            </select>
                                            <asp:DropDownList ID="selcity" runat="server" AutoPostBack="true" 
                   onselectedindexchanged="selcity_SelectedIndexChanged"></asp:DropDownList>
                                           <%-- <select runat="server" id="selcity" onchange="area2();">
                                            </select>--%> </li>

                                            
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
        </ul>
    </div>
<table width="100%" border="0" cellSpacing="0" cellPadding="0">
<tr align="center">
       <td class="titlemouseover" id="TabTitle" onclick="ShowTabs(0)"><a href="PageContent.aspx?ModelID=<%=Request.QueryString["ModelID"] %>&province=<%=Request.QueryString["province"] %>&city=<%=Request.QueryString["city"] %>&zd=0">内容列表</a></td>
       <td class="tabtitle" id="TabTitle1"><a href="PageContent.aspx?ModelID=<%=Request.QueryString["ModelID"] %>&flag=Audit&ID=1&province=<%=Request.QueryString["province"] %>&city=<%=Request.QueryString["city"] %>&zd=0">已审核内容</a></td>
       <td class="tabtitle" id="TabTitle2"><a href="PageContent.aspx?ModelID=<%=Request.QueryString["ModelID"] %>&flag=UnAudit&ID=2&province=<%=Request.QueryString["province"] %>&city=<%=Request.QueryString["city"] %>&zd=0">未审核内容</a></td>
       <td class="tabtitle" id="TabTitle3"><a href="PageContent.aspx?ModelID=<%=Request.QueryString["ModelID"] %>&flag=Elite&ID=3&province=<%=Request.QueryString["province"] %>&city=<%=Request.QueryString["city"] %>&zd=0">推荐内容</a></td>
          <td class="tabtitle" id="TabTitle4"><a href="PageContent.aspx?ModelID=<%=Request.QueryString["ModelID"] %>&flag=Elite&ID=4&province=<%=Request.QueryString["province"] %>&city=<%=Request.QueryString["city"] %>&zd=1">置顶内容</a></td>
<td></td> </tr></table> 

<div class="clearbox"></div>
 
<div class="clearbox"></div>
<div class="user_t" id="urse_T">
<asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False"  Width="100%" Height="20px" 
        CellPadding="2" CellSpacing="1" BackColor="White" CssClass="border" RowStyle-CssClass="tdbg"
   DataKeyNames="GeneralID" PageSize="20" OnRowDataBound="Egv_RowDataBound" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" >
    <Columns>
    　　<asp:TemplateField HeaderText="选择">
              <ItemTemplate>
               <asp:CheckBox ID="chkSel" runat="server" />  
              
              </ItemTemplate>
              <HeaderStyle Width="5%" BorderColor="White" />
          <ItemStyle HorizontalAlign="Center" BorderColor="White"/>
        </asp:TemplateField>
        <asp:BoundField HeaderText="ID"　DataField="GeneralID" >
            <HeaderStyle Width="5%"  BorderColor="White" />
            <ItemStyle HorizontalAlign="Center" BorderColor="White"  />
        </asp:BoundField>            
        <asp:TemplateField HeaderText="标题" >
            <ItemTemplate>  
                <%# GetTitle(Eval("GeneralID", "{0}"), Eval("ModelID", "{0}"), Eval("Title", "{0}"))%>    
            </ItemTemplate>
            <HeaderStyle Width="10%" BorderColor="White"  />
            <ItemStyle BorderColor="White" HorizontalAlign="Center"  />
        </asp:TemplateField>  
     
                <asp:TemplateField HeaderText="所属学校"> 
          <ItemTemplate>
          <div id="school<%# Eval("GeneralID") %>" style="text-align:center;">
 <script> gettype(<%# Eval("GeneralID") %>);</script>
          </div>
           </ItemTemplate>
            </asp:TemplateField>  
               <asp:TemplateField HeaderText="地区"> 
          <ItemTemplate>
          <div id="cityes<%# Eval("GeneralID") %>" style="text-align:center;">
 <script> getcity(<%# Eval("GeneralID") %>);</script>
          </div>
           </ItemTemplate>
            </asp:TemplateField>   
                <asp:TemplateField HeaderText="所属类别"> 
          <ItemTemplate>
          <div id="types<%# Eval("GeneralID") %>" style="text-align:center;">
 <script> gettypes(<%# Eval("GeneralID") %>);</script>
          </div>
           </ItemTemplate>
            </asp:TemplateField>  
                <asp:TemplateField HeaderText="发布时间"> 
          <ItemTemplate>
          <div id="time<%# Eval("GeneralID") %>" style="text-align:center;">
 <script> gettime(<%# Eval("GeneralID") %>);</script>
          </div>
           </ItemTemplate>
            </asp:TemplateField>     
        <asp:BoundField HeaderText="点击数"　DataField="Hits" >
            <ItemStyle HorizontalAlign="Center" BorderColor="White"  />
            <HeaderStyle Width="10%" BorderColor="White"  />
        </asp:BoundField>
        <asp:TemplateField HeaderText="状态">
            <ItemTemplate>  
               <%# GetStatus(Eval("Status", "{0}")) %>     
            </ItemTemplate>
            <HeaderStyle Width="10%"  BorderColor="White" />
            <ItemStyle HorizontalAlign="Center"  BorderColor="White" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="已生成">
            <ItemTemplate>  
                <%# GetCteate(Eval("IsCreate", "{0}"))%>    
            </ItemTemplate>
            <HeaderStyle Width="10%" BorderColor="White"  />
            <ItemStyle HorizontalAlign="Center" BorderColor="White"  />
        </asp:TemplateField>  
          
                
        <asp:TemplateField HeaderText="操作" >
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("GeneralID") %>'>修改</asp:LinkButton> | 
                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("GeneralID") %>' OnClientClick="return confirm('你确定将该数据删除到回收站吗？')">删除</asp:LinkButton>
               <span id="elite<%# Eval("GeneralID") %>">  <script>getelite(<%# Eval("GeneralID") %>);</script></span>
               <span   id="zd<%# Eval("GeneralID") %>"> <script> getzd(<%# Eval("GeneralID") %>);</script> </span>
                
              </ItemTemplate>
            <HeaderStyle BorderColor="White"  />
            <ItemStyle HorizontalAlign="Center"  BorderColor="White" />
        </asp:TemplateField>
     </Columns>
    
        <PagerSettings Visible="False" />
        <RowStyle Height="24px" /> 
        <HeaderStyle Font-Bold="True" ForeColor="#E7E7FF" BackColor="#FFFFFF"  Height="30px" Font-Overline="False" />
  
      <%--  <RowStyle ForeColor="Black" BackColor="#fff" Height="25px" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" /> <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
     
     <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />--%>
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

<div id="zd_content">
<%Call.Label("{ZL.Label id=\"输出后台置顶课程信息列表\" NodeID=\"2\" ShowNum=\"10\" /}"); %>


</div>


<asp:CheckBox ID="CheckBox2"  runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="全选" />
<asp:Button ID="Button1" class="C_input" runat="server" Text="审核通过"  OnClick="btnAudit_Click" OnClientClick="if(!IsSelectedId()){alert('请选择审核项');return false;}else{return confirm('你确定要审核选中内容吗？')}"/>&nbsp;               
<asp:Button ID="Button2" class="C_input" runat="server" Text="批量删除" OnClick="btnDeleteAll_Click"
    OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项放入回收站吗？')}"  UseSubmitBehavior="true" />&nbsp;
   &nbsp; &nbsp;
</form>
<script>
var zd='<%Call.Label("{$GetRequest(zd)$}");%>';
if(zd=='1'){
 	$("#urse_T").css("display","none");
	 	$("#zd_content").css("display","block");
 }
 else{ 	$("#urse_T").css("display","block");

	 	$("#zd_content").css("display","none");
 	 }
	 
 </script>

</body>
</html>
