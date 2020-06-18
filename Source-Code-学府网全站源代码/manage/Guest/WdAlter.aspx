<%@ page language="C#" autoeventwireup="true" inherits="manage_Guest_WdAlter, App_Web_wxbncm4g" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE >


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>问答中心</title>
    <link href="../../App_Themes/UserThem/style.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="../../Plugins/Ckeditor/ckeditor.js" type="text/javascript"></script>
    <script src="../../JS/jquery.js" type="text/javascript"></script>
    <script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
    <script type="text/javascript">
        function supplyment() {
            var div = document.getElementById("divSupplyment");
            if (div.style.display == "none") {
                div.style.display = "block";
            }
            else {
                div.style.display = "none";
            }
        }
        function CheckDirty() {
            var oEditor = CKEDITOR.instances.TxtTContent;
            var value = oEditor.getData();
            var TxtTTitle = document.getElementById("TxtTTitle").value;
            var TxtValidateCode = document.getElementById("TxtValidateCode").value;

            if (value == "" || TxtTTitle == "" || TxtValidateCode == "") {
                if (value == "") {
                    var obj = document.getElementById("RequiredFieldValidator1");
                    obj.innerHTML = "<font color='red'>内容不能为空！</font>";
                }
                else {
                    var obj = document.getElementById("RequiredFieldValidator1");
                    obj.innerHTML = "";
                }
                if (TxtTTitle == "") {
                    var obj2 = document.getElementById("RequiredFieldValidator2");
                    obj2.innerHTML = "<font color='red'>留言标题不能为空！</font>";
                }
                else {
                    var obj2 = document.getElementById("RequiredFieldValidator2");
                    obj2.innerHTML = "";
                }
                if (TxtValidateCode == "") {
                    var obj3 = document.getElementById("sp1");
                    obj3.innerHTML = "<font color='red'>验证码不能为空！</font>";
                } else {
                    var obj3 = document.getElementById("sp1");
                    obj3.innerHTML = "";
                }
                return false;
            }
            else {
                var obj = document.getElementById("RequiredFieldValidator1");
                obj.innerHTML = "";
                var obj2 = document.getElementById("RequiredFieldValidator2");
                obj2.innerHTML = "";
                var obj3 = document.getElementById("sp1");
                obj3.innerHTML = "";
                document.getElementById("EBtnSubmit2").click();
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
    <span>后台管理</span>&gt;&gt;<span> 问答管理 </span>&gt;&gt; <a href="WdCheck.aspx">问答分类管理</a>&gt;&gt;<span> 修改问题</span>&nbsp;
    </div>
    <div id="main" class="rg_inout">
      
        <div class="cart_lei" style="height: 70px">
            <ul style="color: #FFF; font-size: 20px; line-height: 40px; padding: 10px 0 0 16px;">
                <li style="float: left;"><b>逐浪问答</b></li>
                <li style="float: left">
                    
                    <br />
                  
                </li>
            </ul>
        </div>
        <%--<table>
    <tr>
      <td><b>留言ID:</b>
        <asp:TextBox ID="txtID" runat="server"></asp:TextBox></td>
      <td><b>留言标题:</b>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
      <td><asp:Button ID="Button1" runat="server"  Text="搜索" CausesValidation="False" onclick="Button1_Click" /></td>
    </tr>
  </table>--%>
        <%--<asp:GridView ID="Gdv" DataKeyNames="GID"  
        runat="server" AutoGenerateColumns="False" PageSize="20"  Width="99%" >
      <Columns>
      <asp:BoundField DataField="GID" HeaderText="序号">
        <ItemStyle  CssClass="tdbg" />
        <HeaderStyle Width="5%" />
      </asp:BoundField>
      <asp:TemplateField HeaderText="标题">
        <ItemTemplate> <a href="GuestShow.aspx?GID=<%# Eval("GID")%>"><%# Eval("Title")%></a> </ItemTemplate>
        <ItemStyle  CssClass="tdbg"/>
        <HeaderStyle Width="25%" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="类别">
        <ItemTemplate> <a href="Default.aspx?CateID=<%# Eval("CateID","{0}")%>"><%# GetCate(Eval("CateID","{0}")) %></a> </ItemTemplate>
        <ItemStyle  CssClass="tdbg"  />
        <HeaderStyle Width="10%" />
      </asp:TemplateField>
      </Columns>
      <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
      <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
      <PagerStyle CssClass="tdbg" ForeColor="Black"  />
      <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#000" BorderStyle="None" Height="30px" Font-Overline="False" />
      <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>--%>
        <%-- <table Width="100%">
      <tr class="tdbg">
        <td height="22" colspan="9"  class="tdbgleft"> 共
          <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
          条记录
          <asp:Label ID="Toppage" runat="server" Text="" />
          <asp:Label ID="Nextpage" runat="server" Text="" />
          <asp:Label ID="Downpage" runat="server" Text="" />
          <asp:Label ID="Endpage" runat="server" Text="" />
          页次：
          <asp:Label ID="Nowpage" runat="server" Text="" />
          /
          <asp:Label ID="PageSize" runat="server"
                        Text="" />
          页
          <asp:Label ID="pagess" runat="server" Text="" />
          条记录/页 转到第
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
          页 </td>
      </tr>
    </table>--%>
        <div class="cleardiv" style="height: 40px">
        </div>

        <%--<table class="border" width="100%" cellpadding="0" cellspacing="0">
      <tr>
        <td class="spacingtitle" colspan="2" ><a name="GuestBorder">
          <asp:Literal ID="LTitle" runat="server" Text="发表帖子"></asp:Literal>
          </a></td>
      <tbody id="UCate" runat="server" style="display:none">
        <tr class="tdbg">
          <td class="style1"><strong>选择分类：</strong></td>
          <td><asp:DropDownList ID="DDLCate" runat="server" Height="20px" Width="100px" >
              <asp:ListItem>电脑网络</asp:ListItem>
              <asp:ListItem>生活</asp:ListItem>
              <asp:ListItem>医疗健康</asp:ListItem>
              <asp:ListItem>体育运动</asp:ListItem>
              <asp:ListItem>电子数码</asp:ListItem>
              <asp:ListItem>商业理财</asp:ListItem>
              <asp:ListItem>教育科学</asp:ListItem>
              <asp:ListItem>社会民生</asp:ListItem>
              <asp:ListItem>文化艺术</asp:ListItem>
              <asp:ListItem>娱乐休闲</asp:ListItem>
              <asp:ListItem>烦恼</asp:ListItem>
              <asp:ListItem>地区旅行</asp:ListItem>
              </asp:DropDownList></td>
        </tr>
      </tbody>
      <tr class="tdbg">
        <td class="style1"><strong>标题：</strong></td>
        <td style="width:85%"><asp:TextBox ID="TxtTTitle" runat="server" Width="80%" MaxLength="100" />
          <span id="RequiredFieldValidator2"></span></td>
      </tr>
      <tr class="tdbg">
        <td class="style1"><strong>内容：</strong></td>
        <td style="width:85%"><textarea runat="server" cols="80" id="TxtTContent" width="580px" height="200px" name="TxtTContent" rows="10" runat="server"></textarea>
          <script id="headscript" type="text/javascript">
    //<![CDATA[
              CKEDITOR.replace('TxtTContent',
{
    skin: 'v2',
    enterMode: 2,
    shiftEnterMode: 2,
    toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
});
    //]]>
</script> 
          <span id="RequiredFieldValidator1"></span>
          <input type="hidden" id="txt_Config\" value="" />
          <asp:TextBox ID="FilePicPath" runat="server" Text="fbangd" Style="display: none;height:20px"></asp:TextBox></td>
      </tr>
      <tr  class="tdbg">
        <td><strong>验证码：</strong></td>
        <td style="width:85%;margin-top:3px"><asp:Image ID="Image1" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="20px" ToolTip="点击刷新验证码" Style="cursor: pointer; border: 0; vertical-align: middle;" onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />
          <asp:TextBox ID="TxtValidateCode" MaxLength="6" runat="server" style="width:70px;border:#CCC solid 1px;height:20px; line-height:23px;" autocomplete="off"></asp:TextBox>
          <span id="sp1"></span></td>
      </tr>
      <tr class="tdbgbottom">
        <td colspan="2"><asp:HiddenField ID="HdnCateID" runat="server" />
          <input type="button" id="EBtnSubmit" name="EBtnSubmit" value="提交留言" onclick="CheckDirty()" />
          <asp:Button ID="EBtnSubmit2" Text="提交留言" OnClick="EBtnSubmit_Click" runat="server" style="display:none" /></td>
      </tr>
    </table>--%>
        <div style="border-top: 2px solid #3171af; padding: 25px 0 10px 16px;">
            <div style="background: #8EC1EE; width: 500px;">
                <span style="color: #fff; height: 30px; padding: 0 5px;">您的问题</span></div>
            <div>
                <asp:TextBox runat="server" ID="txtContent" CssClass="x_input" AutoPostBack="true" TextMode="MultiLine"
                    Width="500" Height="80"></asp:TextBox></div>
           <div style="background: #8EC1EE; width: 500px;">
                <span style="color: #fff; height: 30px; padding: 0 5px;" >补充问题</span></div>
            <div>
            <div style="display: inherit;" id="divSupplyment">
                <asp:TextBox runat="server" ID="txtSupplyment" AutoPostBack="true" CssClass="x_input" TextMode="MultiLine"
                    Width="500" Height="120"></asp:TextBox></div>
            <div style="width: 500px;">
                <span style="color: #3171af; float: left;">分类：<asp:DropDownList ID="ddlCate" runat="server"
                    Height="20px" Width="100px">
                    <asp:ListItem>电脑网络</asp:ListItem>
                    <asp:ListItem>生活</asp:ListItem>
                    <asp:ListItem>医疗健康</asp:ListItem>
                    <asp:ListItem>体育运动</asp:ListItem>
                    <asp:ListItem>电子数码</asp:ListItem>
                    <asp:ListItem>商业理财</asp:ListItem>
                    <asp:ListItem>教育科学</asp:ListItem>
                    <asp:ListItem>社会民生</asp:ListItem>
                    <asp:ListItem>文化艺术</asp:ListItem>
                    <asp:ListItem>娱乐休闲</asp:ListItem>
                    <asp:ListItem>烦恼</asp:ListItem>
                    <asp:ListItem>地区旅行</asp:ListItem>
                </asp:DropDownList>
                </span><span style="float: right; color: #3171af;">悬赏分：<asp:DropDownList ID="ddlScore"
                    runat="server" Height="20px" Width="100px">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>40</asp:ListItem>
                    <asp:ListItem>50</asp:ListItem>
                    <asp:ListItem>60</asp:ListItem>
                    <asp:ListItem>70</asp:ListItem>
                    <asp:ListItem>80</asp:ListItem>
                    <asp:ListItem>90</asp:ListItem>
                    <asp:ListItem>100</asp:ListItem>
                </asp:DropDownList>
                </span>
            </div>
            <div class="clear">
            </div>
            <div style="width: 500px;">
                <span style="float: right; padding-top: 20px;">
                    <asp:Button runat="server" ID="btnSubmit" Text="提交" CssClass="C_input" OnClick="btnSubmit_Click" />
                      <asp:Button runat="server" ID="Return" Text="返回" CssClass="C_input" OnClick="Return_Click" /></span></div>
        </div>
    </div>
    <!-- 版权信息 -->
    <div id="bottom">
        <a href="/">
            <img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
        <p>
            <script language="javascript" type="text/javascript"> 
<!--
                var year = "";
                mydate = new Date();
                myyear = mydate.getYear();
                year = (myyear > 200) ? myyear : 1900 + myyear;
                document.write(year); 
--> 
            </script>
            &copy;&nbsp;Copyright&nbsp;
            <%Call.Label("{$SiteName/}"); %>
            All rights reserved.</p>
    </div>
   </div>
    </form>
</body>
</html>