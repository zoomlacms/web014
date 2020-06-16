<%@ page language="C#" autoeventwireup="true" inherits="manage_APP_Suppliers, App_Web_we5wjqgc" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html >

<html >
<head runat="server">
    <title>APP配置</title>
<link href="/App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../../JS/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $(".Cksele").focus(function () {
            $(this).select();
        })
        $(".C_input").click(function () {
            if ($(this).val() == "提交") {
                return true;
            }
            if ($(this).val() == "确定") {
                $(this).next().hide();
                $(this).val("配置");
                return true;
            } else {
                $(this).next().show();
                $(this).val("确定");
                return false;
            }
        })
    })
    var Num = 0;
    var nn = 0;
    function help_show(helpid) {
        Num++;
        var newDiv = document.createElement('div');
        var str = "<div id='help_content'></div><div id='help_hide'><a onclick='help_hide(Num)' style='width:20px;color:#666' title='关闭'></a></div> ";
        newDiv.innerHTML = str;
        newDiv.setAttribute("Id", "help_div" + Num);
        nn = Num - 1
        jQuery("#help").append(newDiv);
        if ($("#help_div" + nn))
        { $("#help_div" + nn).remove(); }
        jQuery("#help_content").load("/manage/help/" + helpid + ".html", function () { jQuery("#help").show(); });
    }
    function help_hide(Num) {
        jQuery("#help_div" + Num).remove();
    }

</script>
<script type="text/javascript" src="../../js/jquery.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation"><%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('39')" title="帮助"></a></div>
  <%} %> 后台管理&gt;&gt;<a href="/manage/User/UserManage.aspx">会员管理</a> &gt;&gt;App社会化登录</div>
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
	<tr>
		<td class="spacingtitle" align="center">
			<asp:Literal ID="LTitle" runat="server" Text="App社会化登录"></asp:Literal>
		</td>
	</tr>
    
	<tr class="tdbg">
		<td valign="top" style="margin-top: 0px; margin-left: 0px;">
			<table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
				<tbody id="Tabs0">
					<tr class="tdbg">
						<td colspan="3" style="height: 26px;">
                            默认回调地址：<asp:Label  ID="callback" ForeColor="Green" Text="text" runat="server" />
                        </td>
                    </tr>
                    <tr class="tdbg">
						<td style="width:17%">
							<input type="checkbox" id="CkSina"  value="" runat="server" />
      <label for="CkBaidu"><img style="cursor:pointer;" src="../../App_Themes/AdminDefaultTheme/images/Sina_2.png" /></label>
      </td><td>
          <asp:Button ID="Button5" class="C_input" runat="server" Text="配置" onclick="Button5_Click" />
     <span id="Span1" style="display:none"><span style="color:Green;font-size:13px;">App Key：</span><input id="ASina" type="text" class="Cksele" value="" runat="server" />&nbsp;&nbsp;<span style="color:Green;font-size:13px;">App Secret：</span><input id="SSina" type="text" class="Cksele" value="" runat="server" /></span>
      </td></tr>
      <tr class="tdbg">
						<td style="width:17%">
							<input type="checkbox" id="CkQQ"  value="" runat="server" />
      <label for="CkBaidu"><img style="cursor:pointer;" src="../../App_Themes/AdminDefaultTheme/images/QQ_2.png" /></label>
      </td><td>
          <asp:Button ID="Button6" class="C_input" runat="server" Text="配置" onclick="Button6_Click" />
     <span id="Span2" style="display:none"><span style="color:Green;font-size:13px;">App Key：</span><input id="AQQ" type="text" class="Cksele" value="" runat="server" />&nbsp;&nbsp;<span style="color:Green;font-size:13px;">App Secret：</span><input id="SQQ" type="text" class="Cksele" value="" runat="server" /></span>
      </td></tr>
                    <tr class="tdbg">
						<td style="width:17%">
							<input type="checkbox" id="CkBaidu"  value="" runat="server" />
      <label for="CkBaidu"><img style="cursor:pointer;" src="../../App_Themes/AdminDefaultTheme/images/Baidu_2.png" /></label>
      </td><td>
          <asp:Button ID="Button1" class="C_input" runat="server" Text="配置" onclick="Button1_Click" />
     <span id="CkBaidu_1" style="display:none"><span style="color:Green;font-size:13px;">App Key：</span><input id="ABaidu" type="text" class="Cksele" value="" runat="server" />&nbsp;&nbsp;<span style="color:Green;font-size:13px;">App Secret：</span><input id="SBaidu" type="text" class="Cksele" value="" runat="server" /></span>
      </td></tr>
                    <tr class="tdbg">
						<td>
							<input type="checkbox" id="CkKaixin"  value="" runat="server" />
      <label for="CkKaixin"><img style="cursor:pointer;" src="../../App_Themes/AdminDefaultTheme/images/Kaixin_2.png" /></label></td>
      <td>
          <asp:Button ID="Button2" class="C_input" runat="server" Text="配置" 
              onclick="Button2_Click" />
     <span id="CkKaixin_1" style="display:none"> <span style="color:Green;font-size:13px;">App Key：</span><input id="AKaixin" type="text" class="Cksele" value="" runat="server" />&nbsp;&nbsp;<span style="color:Green;font-size:13px;">App Secret：</span><input id="SKaixin" type="text" class="Cksele" value="" runat="server" /></span>
      </td></tr>
                    <tr class="tdbg">
						<td>
							<input type="checkbox" id="CkRenren"  value="" runat="server" />
      <label for="CkRenren"><img style="cursor:pointer;" src="../../App_Themes/AdminDefaultTheme/images/Renren_2.png" /></label></td>
      <td>
          <asp:Button ID="Button3" class="C_input" runat="server" Text="配置" 
              onclick="Button3_Click" />
      <span id="CkRenren_1"  style="display:none"> <span style="color:Green;font-size:13px;">App Key：</span><input id="ARenren" type="text" class="Cksele" value="" runat="server" />&nbsp;&nbsp;<span style="color:Green;font-size:13px;">App Secret：</span><input id="SRenren" type="text" class="Cksele" value="" runat="server" />
      </span>
  </td></tr>
                    <tr class="tdbg">
						<td>
							<input type="checkbox" id="CkNetease"  value="" runat="server" />
      <label for="CkNetease"><img style="cursor:pointer;" src="../../App_Themes/AdminDefaultTheme/images/Netease_2.png" /></label></td>
      <td>
          <asp:Button ID="Button4" class="C_input" runat="server" Text="配置" 
              onclick="Button4_Click" />
      <span id="CkNetease_1" style="display:none"><span style="color:Green;font-size:13px;">App Key：</span><input id="ANetease" type="text" class="Cksele" value="" runat="server" />&nbsp;&nbsp;<span style="color:Green;font-size:13px;">App Secret：</span><input id="SNetease" type="text" class="Cksele" value="" runat="server" /></span>
  </td></tr>
                    
                    </table>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%" id="TABLE1">
	                    <tr>
		                    <td align="left" style="height: 39px">
                            <asp:Button ID="KeyTj" runat="server" class="C_input"  Text="提交" onclick="KeyTj_Click" />
		                   </td>
	                    </tr>
</table>
 
   

    <br />

    </form>
</body>
</html>
