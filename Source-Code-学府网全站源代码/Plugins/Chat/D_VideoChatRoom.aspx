<%@ page language="C#" autoeventwireup="true" inherits="User_VideoChat_D_VideoChatRoom, App_Web_pedl1uug" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>left</title>
<link rel="stylesheet" type="text/css" href="css/global.css" />
<script type="text/javascript" src="js/Adaptive.js"></script>
<script type="text/javascript" src="js/scroll.js"></script>
<script type="text/javascript" src="/JS/jquery.js"></script>
<style type="text/css">
    p
    {
        background-image: url(images/skin/1/bar.jpg);
        border: 1px solid #b2d1e8;
        height: 22px;
        line-height: 22px;
        margin: 1px;
    }
    a
    {
        display: block;
    }
</style>
</head>
<body>
    <div>
        <div id="search" >
        <div class="linenum"><span><a href="#">�����ˢ�£�</a></span>ͬʱ����������376666</div>
        <div class="ssform"><form>
        <a href="#"><span class="selm"></span></a><input type="text" class="key"><input type="button" class="ss_btn" value="����"></form>
        </div>
        <div class="myroom"><b>�ҵķ���</b></div>
        </div>
        <div class="leftmeu" style="padding:1px;">
            <p class="bottom_b"><a id="a" href="javascript:void();" onclick="set(this)" class="tab">������</a></p>
            <div id="infoa" class="info" runat="server"><ul>
            <li><span class="jia w20"> </span> <span class="hico">1�Եķ�����ٸ�</span></li>
            <li><span class="jia w20"> </span> <span class="hico">�Է��Ĺ�ط�</span></li>
            <li><span class="jia w20"> </span> <span class="hico">1�ط��ٷ���</span></li>
            </ul></div>
            <div class="clear"></div>
            <p><a id="b" href="javascript:void();" onclick="set(this)" class="tab">�����</a></p>
            <div class="clear"></div>
            <div id="infob" class="info" style="display: none" runat="server">*��������*</div>
            <div class="clear"></div>
            <p><a id="c" href="javascript:void();" onclick="set(this)" class="tab">�ٷ�ר��</a></p>
            <div class="clear">
            </div>
            <div id="infoc" class="info" style="display: none" runat="server">
                *��������*
            </div>
            <p>
                <a id="d" href="javascript:void();" onclick="set(this)" class="tab">�ƾ���</a></p>
            <div class="clear">
            </div>
            <div id="infod" class="info" style="display: none" runat="server">
                *��������*
            </div>
            <p>
                <a id="e" href="javascript:void();" onclick="set(this)" class="tab">��Ϸ��</a></p>
            <div class="clear">
            </div>
            <div id="infoe" class="info" style="display: none" runat="server">
                *��������*
            </div>
            <p>
                <a id="f" href="javascript:void();" onclick="set(this)" class="tab">�������</a></p>
            <div class="clear">
            </div>
            <div id="infof" class="info" style="display: none" runat="server"> 
                *��������*
            </div>
            <p>
                <a id="g" href="javascript:void();" onclick="set(this)" class="tab">VIPר��</a></p>
            <div class="clear">
            </div>
            <div id="infog" class="info" style="display: none" runat="server">
                *��������*
            </div>
        </div>
    </div>
</body>
</html>
<script type="text/javascript">
    function set(obj) {
        var strID = "#info" + $(obj).attr("id");
        $(".info").css("display", "none");
        $(strID).css("display", "");
    }
</script>
<%--<script type="text/javascript">
    var FontEdit = $(document).contents().find("#FontEdit")[0].contentWindow;
    function TextObjectClk(obj) {
        FontEdit.TextObjectClk(obj);
    }
</script>--%>
