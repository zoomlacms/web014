<%@ page language="C#" autoeventwireup="true" inherits="User_Magazine_ceshi, App_Web_etqu03sz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>背景音乐</title>
</head>
<body onload="set()">
    <form id="form1" runat="server">
    <div>
    <script type="text/javascript">
    var v=50;
    function PlayMedia()
{
    var mediaPlugin = document.getElementById("MediaPlayer");
    mediaPlugin.controls.play();
}

function PauseMedia()
{
    var mediaPlugin = document.getElementById("MediaPlayer");
    mediaPlugin.controls.pause();
    
}
function Downsound() {
    v = v - 20;
    var mediaPlugin = document.getElementById("MediaPlayer");
    mediaPlugin.settings.volume=v;
}
function Upsound() {
    v = v + 20;
    var mediaPlugin = document.getElementById("MediaPlayer");
    mediaPlugin.settings.volume=v;
}
function set() { 
    var s=<%=prl %>;
    if(s==1)
    {
        var mediaPlugin = document.getElementById("MediaPlayer");
        mediaPlugin.controls.pause();
        
    }
}
</script>
<div align="center" style="width:80px;height:25px; background:none;">
        <img src="/App_Themes/UserThem/images/btn_vdn.gif" alt="减小音量" style="cursor:pointer" onclick="Downsound();" />&nbsp;<img src="/App_Themes/UserThem/images/btn_play.gif" alt="播放" onclick="PlayMedia();" style="cursor:pointer" />&nbsp;<img src="/App_Themes/UserThem/images/btn_pauz_on.gif" alt="暂停" style="cursor:pointer" onclick="PauseMedia();" />&nbsp;<img src="/App_Themes/UserThem/images/btn_vup.gif" alt="增大音量" onclick="Upsound();" style="cursor:pointer" /></div>
<object id="MediaPlayer" height="64" width="800" style="display:none" classid="CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6">
        <param name="AutoStart" value="1"/>
        <!--是否自动播放-->
        <param name="Balance" value="0"/>
        <!--调整左右声道平衡,同上面旧播放器代码-->
        <param name="enabled" value="1"/>
        <!--播放器是否可人为控制-->
        <param name="EnableContextMenu" value="-1"/>
        <!--是否启用上下文菜单-->
        <param name="url" value="<%=url %>"/>
        <!--播放的文件地址-->
        <param name="PlayCount" value="888"/>
        <!--播放次数控制,为整数-->
        <param name="rate" value="1"/>
        <!--播放速率控制,1为正常,允许小数,1.0-2.0-->
        <param name="currentPosition" value="0"/>
        <!--控件设置:当前位置-->
        <param name="currentMarker" value="0"/>
        <!--控件设置:当前标记-->
        <param name="defaultFrame" value=""/>
        <!--显示默认框架-->
        <param name="invokeURLs" value="0"/>
        <!--脚本命令设置:是否调用URL-->
        <param name="baseURL" value=""/>
        <!--脚本命令设置:被调用的URL-->
        <param name="stretchToFit" value="1"/>
        <!--是否按比例伸展-->
        <param name="volume" value="50"/>
        <!--默认声音大小0%-100%,50则为50%-->
        <param name="mute" value="0"/>
        <!--是否静音-->
        <param name="uiMode" value="mini"/>
        <!--播放器显示模式:Full显示全部;mini最简化;None不显示播放控制,只显示视频窗口;invisible全部不显示-->
        <param name="windowlessVideo" value="0"/>
        <!--如果是0可以允许全屏,否则只能在窗口中查看-->
        <param name="fullScreen" value="0"/>
        <!--开始播放是否自动全屏-->
        <param name="enableErrorDialogs" value="-1"/>
        <!--是否启用错误提示报告-->
        <param name="SAMIStyle" value=""/>
        <!--SAMI样式-->
        <param name="SAMILang" value=""/>
        <!--SAMI语言-->
        <param name="SAMIFilename" value=""/>
        <!--字幕ID-->
    </object>
    </div>
    
    </form>
</body>
</html>
