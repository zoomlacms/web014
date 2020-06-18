<%@ page language="C#" autoeventwireup="true" inherits="manage_Common_SystemFinger, App_Web_kfbsawln" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>系统指针</title> 
<link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/Common.js"></script>
</head>
<body>
<form id="form1" runat="server"  >
<div class="r_navigation"><%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('72')" title="帮助"></a></div>
  <%} %>后台管理&gt;&gt;扩展功能&gt;&gt;服务器信息总览</div>
  <table width="100%" cellspacing="1" cellpadding="0" class="border" id="systb" >
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>页面网址：</strong></td>
      <td> <asp:Label ID="lbServerName" name="lbServerName" runat="server"></asp:Label> </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>服务器IP地址：</strong></td>
      <td> <asp:Label ID="lbIp" runat="server" Text="" ></asp:Label></td>
    </tr> 
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>站点域名：</strong></td>
      <td> <asp:Label ID="lbDomain" runat="server" Text="" ></asp:Label></td>
    </tr>  
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>请求端口：</strong></td>
      <td><asp:Label ID="lbPort" runat="server" Text="" ></asp:Label>  </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>服务器IIS版本：</strong></td>
      <td> <asp:Label ID="lbIISVer" runat="server" Text="" ></asp:Label></td>
    </tr> 
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>本文件所在文件夹：</strong></td>
      <td><asp:Label ID="lbPhPath" runat="server" Text="" ></asp:Label></td>
    </tr> 
 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>服务器操作系统：</strong></td>
      <td><asp:Label ID="lbOperat" runat="server" Text="" ></asp:Label></td>
    </tr>  
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>系统所在文件夹：</strong></td>
      <td> <asp:Label ID="lbSystemPath" runat="server" Text="" ></asp:Label>  </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>服务器脚本超时时间：</strong></td>
      <td> <asp:Label ID="lbTimeOut" name="lbTimeOut" runat="server"></asp:Label></td>
    </tr> 
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>服务器的语言种类：</strong></td>
      <td>  <asp:Label ID="lbLan" name="lbLan" runat="server"></asp:Label></td>
    </tr> 
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>.NET Framework 版本：</strong></td>
      <td> <asp:Label ID="lbAspnetVer" name="lbAspnetVer" runat="server"></asp:Label></td>
    </tr>  
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>服务器当前时间：</strong></td>
      <td> <asp:Label ID="lbCurrentTime" name="lbCurrentTime" runat="server"></asp:Label></td>
    </tr>  
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>服务器IE版本：</strong></td>
      <td> <asp:Label ID="lbIEVer" name="lbIEVer" runat="server"></asp:Label> </td>
    </tr>    
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>本次开机以来系统连续运行的时间：</strong></td>
      <td> <asp:Label ID="lbServerLastStartToNow" name="lbServerLastStartToNow" runat="server"></asp:Label></td>
    </tr> 
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>服务器硬盘分区：</strong></td>
      <td><asp:Label ID="lbLogicDriver" name="lbLogicDriver" runat="server"></asp:Label> </td>
    </tr> 
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>CPU 总数：</strong></td>
      <td> <asp:Label ID="lbCpuNum" name="lbCpuNum" runat="server"></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>CPU 类型：</strong></td>
      <td> <asp:Label ID="lbCpuType" name="lbCpuType" runat="server"></asp:Label></td>
    </tr> 
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>虚拟内存：</strong></td>
      <td>  <asp:Label ID="lbMemory" name="lbMemory" runat="server"></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>当前程序占用内存：</strong></td>
      <td><asp:Label ID="lbMemoryPro" name="lbMemoryPro" runat="server"></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>Asp.net所占内存：</strong></td>
      <td><asp:Label ID="lbMemoryNet" name="lbMemoryNet" runat="server"></asp:Label></td>
    </tr> 
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>Asp.net所占CPU：</strong></td>
      <td> <asp:Label ID="lbCpuNet" name="lbCpuNet" runat="server"></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>当前Session数量：</strong></td>
      <td><asp:Label ID="lbSessionNum" name="lbSessionNum" runat="server"></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>当前Session的数量与ID：</strong></td>
      <td> <asp:Label ID="lbSession" name="lbSession" runat="server"></asp:Label> </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>当前系统用户名：</strong></td>
      <td> <asp:Label ID="lbUser" name="lbUser" runat="server"></asp:Label> </td>
    </tr> 
   </table> 
     <br />
<input type="button" name="GetExc" value="保存信息为Excel" id="GetExc" class="C_input" onclick="javascript:GetExcel('systb');" />
<input type="button" id="back" name="back" value="返回" class="C_input" onclick="javascript:history.back();" />
</form>
<script type="text/javascript">
    function GetExcel(obj) { 
        var gt;
        ($("#" + obj)).find("tr").each(function (i, item) {
            ($(item)).find("td").each(function (j, iten) {
                gt += $.trim($(iten).text()) + "$t";
            });
            gt += "$n";
        }); 
        window.location.href = "/manage/Content/GetExcel.aspx?txt=" + $.trim(gt.replace("undefined", ""));
    }
</script>
</body>
</html>