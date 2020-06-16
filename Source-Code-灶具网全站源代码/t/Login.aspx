<%@ page language="C#" autoeventwireup="true" inherits="t_Login, App_Web_o3rszhzq" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html>

<html>
<head runat="server">
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>欢迎访问<%Call.Label("{$SiteName/}");%>微博</title>
    <link href="../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../App_Themes/Microblog/style.css" />
    <script type="text/javascript" src="../js/jquery.js"></script>    
    <script src="/js/artZoom.js" type="text/javascript"></script>
   <script src="/JS/ajaxrequest.js"></script>
<script>
//    function ActionSec(obj,url) {
//        //obj -1未登录,1为成功  url :要跳转的路径
////        if (obj == -1) {
////            alert("提交失败!");
////        }
//        if (obj == 1) {
//            window.top.location.href = url;
//        }
//        //alert(obj);
//       
//    }
      function doname() {
            if (document.getElementById("txtLoginId").value == "请输入帐号") {
                document.getElementById("txtLoginId").value = "";
            }
            else {
                if (document.getElementById("txtLoginId").value == "") {
                    document.getElementById("txtLoginId").value = "请输入帐号";
                }
            }
        }

        function dopassword() {
            if (typeof (HTMLElement) != "undefined" && !window.opera) {
                HTMLElement.prototype.__defineGetter__("outerHTML", function () {
                    var a = this.attributes, str = "<" + this.tagName, i = 0; for (; i < a.length; i++)
                        if (a[i].specified)
                            str += " " + a[i].name + '="' + a[i].value + '"';
                    if (!this.canHaveChildren)
                        return str + " />";
                    return str + ">" + this.innerHTML + "</" + this.tagName + ">";
                });
                HTMLElement.prototype.__defineSetter__("outerHTML", function (s) {
                    var r = this.ownerDocument.createRange();
                    r.setStartBefore(this);
                    var df = r.createContextualFragment(s);
                    this.parentNode.replaceChild(df, this);
                    return s;
                });
                HTMLElement.prototype.__defineGetter__("canHaveChildren", function () {
                    return !/^(area|base|basefont|col|frame|hr|img|br|input|isindex|link|meta|param)$/.test(this.tagName.toLowerCase());
                });
            }
            var input = document.getElementById("txtPwd");
            if (input.value == "请输入密码") {
                input.value = "";
                input.outerHTML = "<input onblur=dopassword() id=txtPwd onselect=dopassword() onclick=dopassword() type=password name=txtPwd>";
                document.getElementById("txtPwd").focus();
                document.getElementById("txtPwd").focus();
            }
            else {
                if (document.getElementById("txtPwd").value == "") {
                    input.outerHTML = "<input onblur=dopassword() id=txtPwd onselect=dopassword() onclick=dopassword() type=text name=txtPwd>";
                    document.getElementById("txtPwd").value = "请输入密码";
                }
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:auto;">
    <div style="width:300px;border:1px solid #FF6D00;background:#fff;" >
                <div  style="background:#FF6D00;padding:5px 5px 0 0;height:20px;">
                <p style="float:left;color:#fff;font-size:14px;">&nbsp;&nbsp;登录</p>
                    <p  style="float:right;"><a href="default.aspx" target="_parent" style="color:#fff;">
                        关闭</a></p>
                <br />
                        </div>

                <div class="lin">
                </div>
                <asp:TextBox ID="txtLoginId" runat="server" onblur="doname()" onselect="doname()"
                    onclick="doname()" Text="请输入帐号"></asp:TextBox><br />
                <asp:TextBox ID="txtPwd" runat="server" onblur="dopassword()" onselect="dopassword()"
                    onclick="dopassword()" Text="请输入密码"></asp:TextBox><br />
                <div class="clear" style="padding-top:5px;">
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                </div>
                <div id="login_t">
                    <div class="div1">
                        <asp:CheckBox ID="remusrname" runat="server" CssClass="labelbox" /></div>
                    <div class="div3">
                        <label for="remusrname">
                            下次自动登录</label>
                        <a class="rt" href="/User/GetPassword.aspx?ReturnUrl=/t/" target="_parent">找回密码</a>
                         |<a href="../user/Register.aspx?ReturnUrl=/t/" target="_parent">
                        立即注册</a>
                        </div>
                </div>
                <div id="login_b">
                    <asp:ImageButton ID="ibLogin" runat="server" ImageUrl="~/App_Themes/Microblog/images/login.jpg"
                        OnClick="ibLogin_Click" /></div>
                <div id="mobil" style="display:none">
                    <a href="">如何用手机上微博</a></div>
    </div>
    </div>
    </form>
</body>
</html>
