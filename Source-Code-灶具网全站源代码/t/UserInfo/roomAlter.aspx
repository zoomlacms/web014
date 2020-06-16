<%@ page language="C#" autoeventwireup="true" inherits="t_UserInfo_roomAlter, App_Web_ngneshp3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>个人直播室信息</title>
    <link href="../../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/JS/ImagePreview.js"></script>
    <script src="../../JS/citylist.js" type="text/javascript"></script>
<script type="text/javascript" src="/JS/CJL.0.1.min.js"></script>
</head>

<body>
    <form id="form1" runat="server">
    <div id="warp">
        <div id="warp_l">
            <div id="zhu_ltop">
            </div>
            <div class="zhu_s">
                <div id="sear_b">
                    <asp:ImageButton ID="ibSearch" runat="server" CausesValidation="false" ImageUrl="../../App_Themes/Microblog/images/s_b.jpg"
                        OnClick="ibSearch_Click" /></div>
                <asp:TextBox ID="sear_input" runat="server" Text="搜索者吧、找人"></asp:TextBox>
            </div>
        </div>
        <!--左边结束 -->
        <div id="warp_r">
            <div id="zhu_rtop">
                <div id="nav">
                    <ul>
                        <li><a href="../Content.aspx">者吧首页</a></li>
                        <li><a href="../Topic.aspx">主题者吧</a></li>
                        <li><a href="../TongCheng.aspx">同城者吧</a></li>
                        <li><a href="../blogLiving.aspx">直播室</a></li>
                        <li><a href="../MyMicrob.aspx">我的首页</a></li>
                        <li><a href="info_MyWeibo.aspx">我的者吧</a></li>
                        <li>
                            <asp:Literal ID="liSite" runat="server"></asp:Literal></li>
                        <li style="float: right; margin-right: 40px !important; margin-right: 30px;">
                            <asp:Literal ID="logtxt" runat="server"></asp:Literal></li>
                    </ul>
                </div>
            </div>
            <!--右边顶部 -->
        </div>
        <!--右边结束 -->
        <div id="zhu_content">
            <div class="bitian">
                <span>*</span>为必填项&nbsp;|&nbsp;<a href="roomSelf.aspx">返回我的直播室</a></div>
            <div id="form">
                <b><span>*</span>直播室主题：</b>
                <asp:TextBox ID="txtltopic" runat="server" CssClass="yonghu" Text=""></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="请输入主题"
                    ControlToValidate="txtltopic" />
                <br />
                <br />
                <br />
                <br />
                <div class="content">
                    <b>直播室描述：&nbsp; </b>&nbsp;<div class="content_L">
                        <asp:TextBox ID="txtlstate" runat="server" TextMode="MultiLine" CssClass="text"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
                <br />
                <br />
                <br />
                <br />
                <b>时间安排：&nbsp; </b>&nbsp;<asp:TextBox ID="txtlArrange" runat="server" CssClass="yonghu" onblur="checkTime()"></asp:TextBox>(时间格式样例:06:00-22:00)
                <br />
                <br />
                <br />
                <br />
                <br />
                <b>特邀嘉宾：&nbsp; </b>&nbsp;<asp:TextBox ID="txtlguest" runat="server" CssClass="yonghu" />
                <br />
                <br />
                <br />
                <br />
                
                <b><span>*</span>直播室图片：</b>   
              <asp:TextBox ID="txtlpic" runat="server" CssClass="yonghu"></asp:TextBox>
                
                <asp:Label ID="lblMessage" runat="server" ForeColor="red" Text=""></asp:Label>
                <br />
                <br />
              <%--<b>图片预览&nbsp;&nbsp;&nbsp; </b>
              <span id="img"><asp:Image ID="Image1" Width="100px" runat="server" src="../../Images/nopic.gif" /></span>
              <asp:HiddenField runat="server" ID="hfimg"/>
                  <script type="text/javascript">
                      //FX获取文件路径方法
                      function readFileFirefox(fileBrowser) {
                          try {
                              netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
                          }
                          catch (e) {
                              alert('无法访问本地文件，由于浏览器安全设置。为了克服这一点，请按照下列步骤操作：(1)在地址栏输入"about:config";(2) 右键点击并选择 New->Boolean; (3) 输入"signed.applets.codebase_principal_support" （不含引号）作为一个新的首选项的名称;(4) 点击OK并试着重新加载文件');
                              return;
                          }
                          var fileName = fileBrowser.value; //这一步就能得到客户端完整路径。下面的是否判断的太复杂，还有下面得到ie的也很复杂。
                          var file = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);
                          try {
                              // Back slashes for windows
                              file.initWithPath(fileName.replace(/\//g, "\\\\"));
                          }
                          catch (e) {
                              if (e.result != Components.results.NS_ERROR_FILE_UNRECOGNIZED_PATH) throw e;
                              alert("File '" + fileName + "' cannot be loaded: relative paths are not allowed. Please provide an absolute path to this file.");
                              return;
                          }
                          if (file.exists() == false) {
                              alert("File '" + fileName + "' not found.");
                              return;
                          }


                          return file.path;
                      }


                      //根据不同浏览器获取路径
                      function getvl(obj) {
                          //判断浏览器
                          var Sys = {};
                          var ua = navigator.userAgent.toLowerCase();
                          var s;
                          (s = ua.match(/msie ([\d.]+)/)) ? Sys.ie = s[1] :
  (s = ua.match(/firefox\/([\d.]+)/)) ? Sys.firefox = s[1] :
  (s = ua.match(/chrome\/([\d.]+)/)) ? Sys.chrome = s[1] :
  (s = ua.match(/opera.([\d.]+)/)) ? Sys.opera = s[1] :
  (s = ua.match(/version\/([\d.]+).*safari/)) ? Sys.safari = s[1] : 0;
                          var file_url = "";
                          if (Sys.ie <= "6.0") {
                              //ie5.5,ie6.0
                              file_url = obj.value;
                          } else if (Sys.ie >= "7.0") {
                              //ie7,ie8
                              obj.select();
                              obj.blur();
                              file_url = document.selection.createRange().text;

                              file_url = document.selection.createRange().text;
                          } else if (Sys.firefox) {
                              //fx
                              //file_url = document.getElementById("file").files[0].getAsDataURL();//获取的路径为FF识别的加密字符串
                              file_url = readFileFirefox(obj);
                          } else if (Sys.chrome) {
                              file_url = obj.value;
                          }
                          var ip = document.getElementById("img");
                          ip.firstChild.src = file_url;
                          alert(file_url);
                      }
            </script>--%>
             <br />
                <br />
                <asp:Button ID="btnSave" runat="server" Text="保存" CssClass="baoc" OnClick="btnSave_Click">
                </asp:Button>
            </div>
        </div>
        <div id="zhu_bottom">
        </div>
    </div>
    <div id="copyright">
        <ul>
            <li><a href="">关于我们</a></li>
            <li>|</li>
            <li><a href="">网站地图</a></li>
            <li>|</li>
            <li><a href="">免责声明</a></li>
            <li>|</li>
            <li><a href="">版权申明</a></li>
            <li>|</li>
            <li><a href="">招贤纳士</a></li>
            <li>|</li>
            <li><a href="">广告服务</a></li>
            <li>|</li>
            <li><a href="">网站合作</a></li>
            <li>|</li>
            <li><a href="">帮助中心</a></li>
            <li>|</li>
            <li><a href="">投稿指南</a></li>
            <li>|</li>
            <li><a href="">联系我们</a></li>
            <li>|</li>
            <li><a href="">友情链接</a></li>
        </ul>
        <p>
            Copyright&copy;&nbsp;<%Call.Label("{$SiteName/}"); %>All rights reserved</p>
    </div>
    </form>
    
     <script>
         function checkTime() {
             var val = document.getElementById("txtlArrange").value;
             var a = val.match(/^(\d{1,2}):(\d{1,2})(-|\/)(\d{1,2}):(\d{1,2})$/);
             if (a == null) { alert("请输入正确的时间格式！"); document.getElementById("txtlArrange").value = ""; return false; }
         }
    </script>
</body>
</html>
