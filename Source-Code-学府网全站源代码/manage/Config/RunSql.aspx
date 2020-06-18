<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_Sql, App_Web_3l1u0nin" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>SQL执行</title>
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/main.css" />
<script type="text/javascript" src="../../js/jquery-1.5.1.min.js"></script>
<script type="text/javascript">
    function addFile() {
        //添加文件上传Html组件
        var str = '<div>&nbsp;&nbsp;&nbsp;<a stytle="margin-left:5px" href="#" onclick="remove(this)">[-]</a><input type="file" name="File"/></div>'
        document.getElementById('MyFile').insertAdjacentHTML("beforeEnd", str)
    }
    function remove(obj) {
        while (obj.tagName != "DIV") obj = obj.parentNode;
        obj.parentNode.removeChild(obj);

    }
    function CheckUpLoadFile(obj) {
        DenyExt = "sql|txt|xml";
        var FileExt = "";
        FileExt = obj.value.substr(obj.value.lastIndexOf(".") + 1).toLowerCase();
        if (DenyExt.indexOf(FileExt) == -1) {
            alert("只允许上传" + DenyExt + "格式文件");
            if (!window.addEventListener) {
                obj.outerHTML += '';
            }
            else {
                obj.value = "";
                return false;
            }
        }
    }
    function Reset() {
        //重置文件上传Html组件
        var str = '<a href="#" onclick="addFile()">[+]</a> <input name="File" type="file" id="File1" /> ';
        str = str + '<br>';
        document.getElementById('MyFile').innerHTML = str;
    }

    //限制多选
    function checkCount() {
        var obj = document.getElementById("sl");
        var j = 0;
        for (var i = 0; i < obj.length; i++) {
            if (obj.options[i].selected) {
                j++;
                if (j > 1) {
                    obj.options[i].selected = false;

                }
            }
        }
       document.getElementById("HiddenField1").value= obj.value;
      //  $("#HiddenField1").val($(obj).val());
   
    }

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
    function ShowMainsgourl(lurl, rurl) {
        parent.parent.frames["left"].location = lurl;
        parent.parent.frames["main_right"].location = rurl; void (0);
    }
</script>
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/Common.js"></script>
</head>
<body>
<form id="form1" runat="server" enctype="multipart/form-data">
<div class="r_navigation">
    <%if(GetOpenHelp.IsopenHelp()=="1")
    { %>
      <div id="help"> <a onclick="help_show('65')" title="帮助"></a></div>
  <%} %>后台管理&gt;&gt;扩展功能&gt;&gt;数据维护&gt;&gt;执行SQL语句</div>
<div class="spacingtitle">
    执行SQL语句</div>
<div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td id="TabTitle1" name="TabTitle1" class="titlemouseover" onclick="ShowCreate('crt1','TabTitle1')">
                录入脚本
            </td>
            <td id="TabTitle2" name="TabTitle2" class="tabtitle" onclick="ShowCreate('crt2','TabTitle2')">
                上传脚本
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</div>
<table width="100%" style="height:220px;margin:auto;" border="0" cellpadding="0" cellspacing="1" class="border"
    id="crt1" name="crt1">
    <tr class="title">
        <td colspan="2">
            请输入标准T-SQL语句查询
        </td>
    </tr>
    <tr class="tdbg">
        <td colspan="2">
            <div style="margin: 5px;">
                输入您要执行SQL语句：<br />
                <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" TextMode="MultiLine" CssClass="x_input" Style="width: 780px; height: 170px;"></asp:TextBox>
                <br />
                <asp:Button ID="btnSql1" runat="server" Text="主数据库执行SQL语句" CssClass="C_input" OnClick="btnSql1_Click" />
                <asp:Button ID="btnSql2" runat="server" Text="从数据库执行SQL语句" CssClass="C_input" OnClick="btnSql2_Click" />
                <asp:Button ID="btnClr" runat="server" Text="清空内容" CssClass="C_input" OnClick="btnClr_Click" />
            </div>
            <asp:HiddenField ID="HiddenField1" Value="" runat="server" />
        </td>
    </tr>
</table>
<!--end录入脚本-->
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" id="crt2" name="crt2" style="display: none; height:220px; margin:auto;">
    <tr class="title">
        <td colspan="2">
            请上传达标准T-SQL文件查询
        </td>
    </tr>
    <tr class="tdbg">
        <td colspan="2">
            <div style="height: 170px;">
                <div id="sel" runat="server" style="width: 200px; height: 170px; float: left;">
                </div>
                <div id="MyFile" style="float: left; width: 255px;">
                    <a href="#" onclick="addFile()">[+]</a>
                    <input name="File" type="file" id="File1" />
                </div>
                <asp:Button ID="uploadSql" runat="server" OnClick="uploadSql_Click" Text="上传" CssClass="C_input" />
                <input type="button" value="重置" onclick="return Reset()" class="C_input" />
                <asp:Button ID="delete" runat="server" Text="删除" CssClass="C_input" OnClick="delete_Click" />
            </div>
            <asp:Button ID="btnSql3" runat="server" Text="在主数据库中执行SQL脚本" CssClass="C_input" OnClick="btnSql3_Click" />
            <asp:Button ID="btnSql4" runat="server" Text="在从数据库中执行SQL脚本" CssClass="C_input" OnClick="btnSql4_Click" />
            <div class="clear">
            </div>
        </td>
    </tr>
</table>
<!--end上传脚本-->
<div style="clear: both;">
</div>
<div id="RunOK" runat="server">
</div>
<div id="Error" runat="server" style="color: Red;">
</div>
</form>
</body>
</html>
