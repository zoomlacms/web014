<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_Database_profile, App_Web_3l1u0nin" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html>
<head runat="server">
<title>系统数据库概况</title>
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/main.css" />
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript">

    //滑动门
    var tID = 0;
    var arrTabTitle = new Array("TabTitle1", "TabTitle2");

    function pload() {
        var ID = '<%=Request.QueryString["id"]%>';
        if (ID != tID) {
            if (document.getElementById(arrTabTitle[ID].toString()) != null) {
                document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
            }
            if (document.getElementById(arrTabTitle[tID].toString()) != null) {
                document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            }
        } else {
            if (document.getElementById("TabTitle") != null) {
                document.getElementById("TabTitle").style.display = "";
                document.getElementById("TabTitle").className = "titlemouseover";
            }
            tID = ID;
        }
    }
    function ShowCreate(result, id) {
        HideCreate();
        document.getElementById(result).style.display = "";

        for (var i = 0; i < arrTabTitle.length; i++) {
            if (arrTabTitle[i] == id) {
                document.getElementById(arrTabTitle[i]).style.display = "";
                document.getElementById(arrTabTitle[i]).className = "titlemouseover";
            } else {
                document.getElementById(arrTabTitle[i]).className = "tabtitle";
            }
        }
    }

    function HideCreate() {
        for (i = 1; i < 3; i++) {
            document.getElementById("crt" + i).style.display = "none";
        }
    }
</script>
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/Common.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('68')" title="帮助"></a></div>
  <%} %>后台管理&gt;&gt;扩展功能&gt;&gt;数据维护&gt;&gt;系统数据库概括</div>
    <div class="spacingtitle">
        系统数据库概况</div>
    <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td id="TabTitle1" name="TabTitle1" class="titlemouseover" onclick="ShowCreate('crt1','TabTitle1')">
                整体概况
            </td>
            <td id="TabTitle2" name="TabTitle2" class="tabtitle" onclick="ShowCreate('crt2','TabTitle2')">
                数据详情
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</div>

<table width="100%" style="margin:auto;" border="0" cellpadding="0" cellspacing="1" class="border"
    id="crt1" name="crt1">
    <tr>
    <td><div id="Div1" runat="server"  style="text-align: center; font-size: 15px;
        font-weight: bold;"><asp:Label ID="tableTotal"  runat="server"></asp:Label></div></td></tr>
    <tr> <td><div id="Div2" runat="server" ></div></td> </tr>
</table>

<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border"
    id="crt2" name="crt2" style="display: none; margin:auto;">
    <tr>
    <td><div id="Top" runat="server"  style="text-align: center; font-size: 15px;
        font-weight: bold;"><asp:Label ID="Label1" Text="当前数据库所有表空间详情（按表占用量从大到小排序）" runat="server"></asp:Label><br /></div></td></tr>
    <tr> <td><div id="RunOK" runat="server" ></div></td> </tr>
</table>
    </form>
</body>
</html>
