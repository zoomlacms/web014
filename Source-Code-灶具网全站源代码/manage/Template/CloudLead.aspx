<%@ page language="C#" autoeventwireup="true" enableviewstatemac="false" inherits="manage_Template_CloudLead, App_Web_4ohnmn4w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>网站云台</title>
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css"  href="../../App_Themes/AdminDefaultTheme/main.css"rel="stylesheet" />
<link type="text/css"  href="../../App_Themes/AdminDefaultTheme/Default.css" rel="stylesheet" />
<link type="text/css"  href="../../App_Themes/AdminDefaultTheme/thickbox.css" rel="stylesheet" />
<script type="text/javascript" src="../../js/jquery-1.1.3.1.pack.js"></script>
<script type="text/javascript" src="../../js/thickbox-compressed.js"></script> 
<script type="text/javascript"> 
    var Num = 0;
    var nn = 0;
    function help_show(helpid) {
        Num++;
        var newDiv = document.createElement('div');
        var str = "<div id='help_content'  style='z-index:999;'></div><div id='help_hide'  style='z-index:999;'><a onclick='help_hide(Num)' style='width:20px;color:#666' title='关闭'></a></div> ";
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
</head>
<body class="cloudLead_bg" id="header">
<form id="form1" runat="server">
  <div class="r_navigation">
 <%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('23')" title="帮助"></a></div>
  <%} %> 后台管理&gt;&gt;系统设置&gt;&gt;<a href="TemplateSet.aspx">方案管理</a>&gt;&gt;从云端免费获取全站方案</div>
  <div class="metro_con" > <span class="panel_btn" > <a href="#TB_inline?height=200&amp;width=500&amp;inlineId=hidCont&amp;modal=true" class="btn_demo thickbox"   >使用前必读</a> <a title="获取网站云" href="/manage/Template/TemplateSetOfficial.aspx" class="btn_demo">获取网站云</a> </span> <img src="../../App_Themes/AdminDefaultTheme/images/tem_ban.jpg" alt=""/> </div>
  <div class="apple_overlay" id="hidCont" style="display:none"  >
    <div class="fancybox-bg" id="fancybox-bg-n"></div>
    <div class="fancybox-bg" id="fancybox-bg-ne"></div>
    <div class="fancybox-bg" id="fancybox-bg-e"></div>
    <div class="fancybox-bg" id="fancybox-bg-se"></div>
    <div class="fancybox-bg" id="fancybox-bg-s"></div>
    <div class="fancybox-bg" id="fancybox-bg-sw"></div>
    <div class="fancybox-bg" id="fancybox-bg-w"></div>
    <div class="fancybox-bg" id="fancybox-bg-nw"></div>
    <div id="fancybox-content" >
      <h2>免费云方案下载</h2>
      <br />
      <div class="overlay-content">
        <p> 为了让人人都建好网站，我们免费提供模板方案。<br />
          可从云端免费下载云方案，每个方案均是一个完整的网站，包括完整的模板、栏目结构、标签及模型等等。<br />
          因是完整网站方案下载并需要校验版本信息，需您稍候几分钟，请耐心等待！<br />
        </p>
        <input type="submit" id="Login" value="&nbsp;&nbsp;Ok&nbsp;&nbsp;" onclick="tb_remove()" />
      </div>
    </div>
    <a id="fancybox-close" href="javascript:void(0);" onclick="tb_remove()" style="display: inline;"></a> <a id="fancybox-left" href="javascript:;"><span class="fancy-ico" id="fancybox-left-ico"></span></a> <a id="fancybox-right" href="javascript:;"><span class="fancy-ico" id="fancybox-right-ico"></span></a> </div>
  <div class="metro_wrap_1">
    <div class="metro_panel_1">
      <div class="col_3"> </div>
    </div>
  </div>
  <div class="metro_wrap_2"> </div>
</form>
<script type="text/javascript">
	//function changeheml(n){ 
//	if(n==2){	
//	$("#fancybox-content").html("<h2>您还需耐心等几分钟！</h2><br /><input type='submit' id='Login' value='&nbsp;&nbsp;Ok&nbsp;&nbsp;' onclick='geturl()' />")}
//	else{
//	$("#fancybox-content").html("<h2>免费云方案下载</h2><p><div class='overlay-content'><p>为了让人人都建好网站，我们免费提供模板方案。</p><p>可从云端免费下载云方案，每个方案均是一个完整的网站，包括完整的模板、栏目结构、标签及模型等等.</p>因是完整网站方案下载，需您稍候几分钟，请耐心等待！</p><input type='submit' id='Login' value='&nbsp;&nbsp;Ok&nbsp;&nbsp;' onclick='tb_remove()' /></div>");
//		}
	 // $("#brn2").click();
		//}
    function geturl(){
		//window.location.href="/manage/Template/TemplateSetOfficial.aspx";
		tb_remove();
		}
    </script>
</body>
</html>