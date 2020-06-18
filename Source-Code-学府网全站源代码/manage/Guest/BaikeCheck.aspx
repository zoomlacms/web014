<%@ page language="C#" autoeventwireup="true" inherits="manage_Guest_BaikeCheck, App_Web_wxbncm4g" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>词条审核</title>
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/main.css" />
    <script src="../../JS/jquery.js" type="text/javascript"></script>
 
<script type="text/javascript">
    var Fe = Fe || { version: "20080809", emptyFn: function () { } };
    Fe.G = function () {
        for (var A = [], B = arguments.length - 1; B > -1; B--) {
            var C = arguments[B]; A[B] = null;
            if (typeof C == "object" && C && C.dom) { A[B] = C.dom } else { if ((typeof C == "object" && C && C.tagName) || C == window || C == document) { A[B] = C } else { if (typeof C == "string" && (C = document.getElementById(C))) { A[B] = C } } }
        } return A.length < 2 ? A[0] : A
    }; Fe.on = function (C, B, A) {
        if (!(C = Fe.G(C))) { return C } B = B.replace(/^on/, "").toLowerCase();
        if (C.attachEvent) {
            C[B + A] = function () { A.call(C, window.event) };
            C.attachEvent("on" + B, C[B + A])
        } else { C.addEventListener(B, A, false) } return C
    };
    Fe.un = function (C, B, A) { if (!(C = Fe.G(C))) { return C } B = B.replace(/^on/, "").toLowerCase(); if (C.attachEvent) { C.detachEvent("on" + B, C[B + A]); C[B + A] = null } else { C.removeEventListener(B, A, false) } return C };
    var G_HIBAR = (function () {
        var H = document, F, E, C, B = 3; function A(K, I, J) {
            K.style.display = C ? "none" : "block";
            K.style.left = I + "px"; K.style.top = J + "px"
        }
        function G(I) { C && G_HIBAR(I) }
        function D() { F = null; E = null; Fe.un(window, "unload", D) } Fe.on(window, "resize", G);
        Fe.on(document, "click", G); Fe.on(window, "unload", D);
        return function (J) {
            (J || window.event).cancelBubble = true; F = F || H.getElementById("usrbar");
            E = E || H.getElementById("nav_extra");
            var K = H.getElementById("my_home"), L = F.scrollHeight, I = 0;
            do { I += K.offsetLeft } while (K = K.offsetParent);
            I = I - 6;
            A(E, I, B);
            Fe.G("usrbar").scrollWidth; C = !C
        }
    })();
    </script>
    
<script>    wikiConflict.isEdit = 1;</script>
<script>    var templateGuide = templateGuide || {}; templateGuide.textEditType = 'part'</script> 
      
<style type="text/css">
    .popb2{padding:10px;line-height:22px;font-size:14px;width:280px;height:230px;margin:0 auto;}
    #rempassItem{font-size:12px;color:#F00;display:none;}
    .regButton{padding:2px;height:25px;width:140px;margin:10px 60px;}
    .f12{font-size:12px;}#rgHandle{text-align:center;font-weight:bold;}
    .loginItem{width:140px;}
    .x_input
    {
        padding:10px;
    }
    .x_input a
    {
        text-decoration:underline;
        color:Blue;
    }
</style>
<script>    wikiConflict.isEdit = 1;</script>
    <script type="text/javascript">
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
<%=lang.Get("M_SpecContent_manage")%> &gt;&gt;<a href="BkCheck.aspx"><%=lang.Get("M_Guest_BaikeMana")%></a> &gt;&gt;<a href="BkCheck.aspx"><%=lang.Get("M_Guest_BaikeClass")%></a>&gt;&gt;词条审核
</div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border" align="center">
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"  style="width: 60px" > 词条名称：</td>
      <td style="width: 100px"><asp:TextBox ID="BaikeName" runat="server" class="l_input" 
              Width="240px" ReadOnly="true"></asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"  style="width: 60px" > 创建人：</td>
      <td style="width: 300px"><asp:TextBox ID="txbRoleName" runat="server" 
              class="l_input" Width="240px" ReadOnly="true"></asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td align="center" class="tdbgleft" style="width: 60px; height: 20px" >内容：</td>
      <td align="left" ><asp:TextBox ID="tbRoleInfo" class="x_input" runat="server" Height="240px" TextMode="MultiLine" Width="600px" ReadOnly="true"></asp:TextBox ></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 60px" > 参考资料：</td>
      <td style="width: 300px"><asp:TextBox ID="TextBox1" runat="server" class="l_input" 
              Width="610px" ReadOnly="true"></asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"  style="width: 60px" > 开放分类：</td>
      <td style="width: 300px"><asp:TextBox ID="TextBox2" runat="server" class="l_input" 
              Width="610px" ReadOnly="true"></asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 60px" > 扩展阅读：</td>
      <td style="width: 300px"><asp:TextBox ID="TextBox3" runat="server" class="l_input" 
              Width="610px" ReadOnly="true"></asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 60px" > 词条简介：</td>
      <td style="width: 300px"><asp:TextBox ID="TextBox5" runat="server" class="l_input" 
              Width="610px" ></asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 60px" > 词条分类：</td>
      <td style="width: 300px"><asp:DropDownList runat="server" ID="classification"></asp:DropDownList>
        </td>
    </tr>
    <tr id="LY" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" visible="false" runat="server">
      <td class="tdbgleft"  style="width: 60px" > 修改原因：</td>
      <td style="width: 300px"><asp:TextBox ID="TextBox4" runat="server" class="l_input" 
              Width="610px" ReadOnly="true"></asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg">
    <td colspan="2" align="center"><asp:DropDownList runat="server" ID="check" AutoPostBack="true"></asp:DropDownList>
       <asp:Button runat="server" ID="save" Text="确定" onclick="save_Click" />&nbsp;&nbsp;&nbsp;</td>
    </tr>
    </table>
   <%--<div style="text-align:center"><asp:DropDownList runat="server" ID="check" AutoPostBack="true"></asp:DropDownList>
       <asp:Button runat="server" ID="save" Text="确定" onclick="save_Click" /></div>--%>
        <div class="cleardiv" style="padding:5px;">
       
   </div>
    </form>
    <script type="text/javascript">
        $(function () {
            getCode();
        });
        function getCode() {
            var catalog = "";
            var code = document.getElementById("code");
            //var content = $(document.getElementById('tangram_editor_iframe_MZ__w').contentWindow.document.body).html();
            //            var content = document.getElementById('code').html();
            //alert(content);
            var arr = document.getElementById('code').getElementsByTagName("h2");
            for (var i = 0; i < arr.length; i++) {
                var aNew = document.createElement("a");
                aNew.setAttribute("name", "a" + i);
                aNew.setAttribute("id", "a" + i);
                arr[i].appendChild(aNew);
                catalog = catalog + "<a href=\"#a" + i + "\">" + arr[i].firstChild.data + "</a><br/>";
            }
            var content = document.getElementById('code').innerHTML;
            document.getElementById("code").innerHTML = "<div>目录<br/>" + catalog + "</div>" + content;
        }
    </script>
</body>
</html>
