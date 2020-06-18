<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.Content.AddContent, App_Web_hffwpi2t" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Assembly="ZoomLa.Ajax" Namespace="ZoomLa.Framework.Noebe.Jsons.WebControls" TagPrefix="cc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>�������</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/main.css" />
<link type="text/css" rel="stylesheet" href="/Plugins/Ckeditor/EditFile/sample.css" />
<script type="text/javascript" src="../Common/Common.js"></script>
<script type="text/javascript" src="../../JS/calendar.js"></script>
<script type="text/javascript" src="../../JS/RiQi.js"></script>
<script type="text/javascript" src="../../JS/chinese.js"></script>
<script type="text/javascript" src="../../JS/pacalendar.js"></script>
<script type="text/javascript" src="../../JS/Drag.js"></script>
<script type="text/javascript" src="../../JS/Dialog.js"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="../../JS/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/EditFile/sample.js"></script>
<script type="text/javascript" src="/Plugins/kindeditor/kindeditor.js" charset="utf-8"></script>
<cc1:ZoomLaAjaxBase ID="ZoomLaAjaxBase1" runat="server" />
<script type="text/javascript">
    function SelectKey() {
        window.open('/Common/KeyList.aspx?OpenerText=<%=TxtTagKey.ClientID %>', '', 'width=600,height=450,resizable=0,scrollbars=yes');
    }

    function query(ontxt, id) {
        var str = document.getElementById(ontxt).value.trim();
        if (str == "") return;
        var arrRslt = makePy(str);
        if (arrRslt.length > 0) {
            document.getElementById(id).value = arrRslt.toString().toLowerCase().substring(0, 1);
        }
    }

    var aid = 0;
    var showID = 0;
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3");
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2", "Tabs3");
    function ShowTabs(SID) {
        if (SID != tID) {
            if (document.getElementById(arrTabTitle[tID].toString()) != null)
                document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            if (document.getElementById(arrTabTitle[SID].toString()) != null)
                document.getElementById(arrTabTitle[SID].toString()).className = "titlemouseover";
            if (document.getElementById(arrTabs[tID].toString()) != null)
                document.getElementById(arrTabs[tID].toString()).style.display = "none";
            if (document.getElementById(arrTabs[SID].toString()) != null)
                document.getElementById(arrTabs[SID].toString()).style.display = "";
            tID = SID;
            aid = SID;
        }
    }

    function showup() {
        if (aid > 0) {
            aid = aid - 1;
        }
        if (aid >= 0 && aid < 4) {
            ShowTabs(aid);
        }
    }

    function ShowTable() {
        if (aid < 3) {
            aid = aid + 1;
        }
        if (aid < 4) {
            ShowTabs(aid);
        }
    }

    //���ר��
    function AddToSpecial() {
        var urlstr = "SpecialList.aspx";
        var isMSIE = (navigator.appName == "Microsoft Internet Explorer");
        var special = null;
        if (isMSIE) {
            special = window.showModalDialog(urlstr, "self,width=200,height=150,resizable=yes,scrollbars=yes");
            if (special != undefined && special != "") {
                var arr = special.split(',');
                var odlsp = document.getElementById("HdnSpec").value;
                var odlarr = odlsp.split(',');
                var s = true;
                for (var arri = 0; arri < odlarr.length; arri++) {
                    if (odlarr[arri] == arr[0]) {
                        s = false;
                    }
                }
                if (s) {
                    AddRow(arr[1], arr[0], document.all.SpecTable, "��ר��", 2);
                    document.getElementById("HdnSpec").value = odlsp + arr[0] + ",";
                }
            }
        }
        else {
            window.open(urlstr, 'newWin', 'modal=yes,width=200,height=150,resizable=yes,scrollbars=yes');
        }
    }

    //���ڵ�
    function ShowNode(nodename) {
        document.getElementById("<%=txtNode.ClientID%>").value = nodename;
    }
    //��ӽڵ�
    function AddNode(type) {
        var nid = document.getElementById("<%=hfNode.ClientID%>").value;
        window.open('../Common/NodeList.aspx?nid=' + nid + '&type=' + type + '', 'newWin', 'modal=yes,width=400,height=300,resizable=yes,scrollbars=yes');
    }
    function Addmap() {
        window.open('../Template/AddMap.aspx', 'newWin', 'modal=yes,width=900,height=500,resizable=yes,scrollbars=yes');
    }

    //���������
    function AddNodeRow(nodename, nodeid) {
        AddRow(nodename, nodeid, document.all.NondeTable, "�˽ڵ�", 1);
    }

    var i = 0, j = 0;           //�к����к�
    var oNewRow;                //��������ж���
    var oNewCell1, oNewCell2;   //��������ж���
    var ii = 0; jj = 0;

    //ɾ����
    function DelCurrentRow(nodeid, index) {
        var tableid;
        var hfClient;
        if (index == 1) {
            tableid = document.all.NondeTable;
            hfClient = document.getElementById("<%=hfNode.ClientID%>");
        }
        if (index == 2) {
            tableid = document.all.SpecTable;
            hfClient = document.getElementById("<%=HdnSpec.ClientID%>");
        }
        with (tableid) {
            for (var i = 0; i < rows.length; i++) {
                if (rows[i].id == nodeid) {
                    deleteRow(i);
                }
            }
        }
        var nid = hfClient.value;
        var arr = nid.split(",");
        var v = "";
        for (i = 0; i < arr.length; i++) {
            if (arr[i] != nodeid && arr[i] != "") {
                v += arr[i] + ",";
            }
        }
        hfClient.value = v;
    }

    //���������
    function AddRow(nodename, nodeid, tableid, text, index) {
        i = tableid.rows.length;
        oNewRow = tableid.insertRow(i);
        oNewRow.id = nodeid;

        //��ӵ�һ��
        oNewCell1 = tableid.rows[i].insertCell(0)
        oNewCell1.innerHTML = "<input type='text' class=\"l_input\" id='Value" + nodeid + "'" + " style=\"width:250px;\" disabled=\"disabled\" value=\"" + nodename + "\">";

        //��ӵڶ���
        oNewCell2 = tableid.rows[i].insertCell(1)
        oNewCell2.innerHTML = "&nbsp;<input type=button class=\"C_input\" name=Del" + nodeid + "  value='�Ƴ�" + text + "'" + "onclick=\"if(confirm('��ȷ��Ҫ��" + text + "���Ƴ���'))DelCurrentRow(" + nodeid + "," + index + ");\">";

        j++;
    }
    //���������
    function AddRowNode(nodename, nodeid, tableid, text, index) {
        ii = tableid.rows.length;
        oNewRow = tableid.insertRow(ii);
        oNewRow.id = nodeid;

        //��ӵ�һ��
        oNewCell1 = tableid.rows[ii].insertCell(0)
        oNewCell1.innerHTML = "<input type='text' class=\"l_input\" id='txtNode" + nodeid + "'" + " style=\"width:250px;\" disabled=\"disabled\" value=\"" + nodename + "\">";

        //��ӵڶ���
        oNewCell2 = tableid.rows[ii].insertCell(1)
        oNewCell2.innerHTML = "&nbsp;<input type=button class=\"C_input\" name=btnDel" + nodeid + "  value='�Ƴ�" + text + "'" + "onclick=\"if(confirm('��ȷ��Ҫ��" + text + "���Ƴ���'))DelCurrentRow(" + nodeid + "," + index + ");\">";
        jj++;
    }

    function SetSpec(specname, specid) {
        var isMSIE = (navigator.appName == "Microsoft Internet Explorer");
        if (isMSIE) {
            window.returnValue = specid + "," + specname;
            window.close();
        }
        else {
            opener.UpdateSpecial(specid + "," + specname);
            window.close();
        }
    }
    function ModifyUrl(selectinput, sid, hid) {
        if (selectinput.length == 0) return false;
        var thisurl = selectinput.value;
        if (thisurl == '') { alert('����ѡ��һ��ͼƬ��ַ���ٵ��޸İ�ť��'); return false; }
        var url = prompt('������ͼƬ��ַ���ƺ����ӣ��м���"|"������', thisurl);
        if (url != thisurl && url != null && url != '') { selectinput.options[selectinput.selectedIndex] = new Option(url, url); }
        ChangeHiddenFieldValue(sid, hid);

    }

    function changaecolors() {
        document.getElementById('spanbgcolor').style.backgroundColor = document.getElementById('Titlecolor').value;
    }
    function storeCaret(textEl) {
        if (textEl.createTextRange)
            textEl.caretPos = document.selection.createRange().duplicate();
    }

    function insertAtCaretCallback(textEl) {
        if (textEl.toString().indexOf('||||||') > -1) {
            var srd = textEl.toString().split('||||||');

            KE.util.focus(srd[0]);
            KE.util.selection(srd[0]);
            KE.util.insertHtml(srd[0], srd[1]);
        }
    }
    function shows() {
        if (document.getElementById("IsBid").checked) {
            document.getElementById("bidmoneytable").style.display = "";
        }
        else {
            document.getElementById("bidmoneytable").style.display = "none";
        }
    }

    function GetPicurl(imgurl) {
        var optlen = document.getElementById("selectpic").options.length;
        var isin = 0;

        for (var i = 0; i < optlen; i++) {
            var doctxt = document.getElementById("selectpic").options.item(i);
            if (doctxt.value.toLowerCase() == imgurl.toLowerCase() || imgurl.toLowerCase().indexOf("http://") > -1) {
                isin = 1;
            }
        }

        if (isin == 0) {
            var option = document.createElement("option");
            option.text = imgurl;
            option.value = imgurl;
            document.getElementById("selectpic").add(option);
        }
    }

    function ShowPic(content) {
        if (content != "") {
            document.getElementById("picview").innerHTML = "<img width=100px height=100px src=" + content + " />";
        } else {
            document.getElementById("picview").innerHTML = "";
        }
    }

    function LoadImg(content) {
        eval("var oEditor = CKEDITOR.instances." + content);
        var contenttxt = oEditor.getData().toLowerCase();

        var myregexp = /src=\"(.*?).(gif|jpg|png)/img;
        var match = myregexp.exec(contenttxt);
        while (match != null) {
            var picurl = match[0];

            if (picurl.indexOf("http://") == -1) {
                picurl = picurl.replace("src=\"", "")
                GetPicurl(picurl);
            }
            else {
                picurl = picurl.replace("src=\"", "")
                GetPicurl(picurl);
            }
            match = myregexp.exec(contenttxt);
        }
    }

</script>
<script type="text/javascript">
����    var code = 1;
    function ServerMethodCallback(value) {
        code = value;
        Message1.innerText = value;
    }
    function openurls(url) {
        Dialog.open({ URL: url });
    }
    function open_style() {
        var diag = new Dialog();
        diag.Width = 600;
        diag.Height = 400;
        diag.Title = "���ñ�������<span style='font-weight:normal'>[ESC���˳���ǰ����]</span>";
        diag.URL = "../../Common/SelectStyle.htm";
        diag.show();
        //window.open("../../Common/SelectStyle.htm", "", "width=600,height=400")
    }

    function opentitle(url, title) {
        var diag = new Dialog();
        diag.Width = 800;
        diag.Height = 600;
        diag.Title = title;
        diag.URL = url;
        diag.show();
    }

    function closdlg() {
        Dialog.close();
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:HiddenField ID="HiddenField1" runat="server" />
<asp:HiddenField ID="nodename" runat="server" />
<div class="r_navigation">��̨����&nbsp;&gt;&gt;&nbsp;<a href="ContentManage.aspx">���ݹ���</a>&nbsp;&gt;&gt;&nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>&nbsp;&gt;&gt;&nbsp;�������</div>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr align="center">
		<td colspan="3" class="spacingtitle">
			<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
		</td>
	</tr>
</table>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
                ������Ϣ
            </td>
            <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
                ��Ϣ����
            </td>
            <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)">
                ���̿���
            </td>
            <td id="TabTitle3" class="tabtitle" onclick="ShowTabs(3)">
                ���Ͷ���
            </td>
            <td id="Td3" class="tabnone">
            </td>
            <td id="Td1" class="tabnone">
                <img alt="" src="/images/up.gif" title="��һ��" onclick="showup()" />
            </td>
            <td id="Td2" class="tabnone">
                <img alt="" src="/images/down.gif" title="��һ��" onclick="ShowTable()" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tbody id="Tabs0">
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="ssjd_txt" runat="server" Text="�����ڵ�"></asp:Label>&nbsp;&nbsp;
                </td>
                <td class="bqright" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <asp:TextBox ID="txtNode" CssClass="l_input" runat="server" Width="250px" Enabled="false" Text="��������"></asp:TextBox>
                    <input id="Button3" type="button" value="���Ľڵ�" onclick="AddNode('link')" class="C_input" style="width: 110px;" />
                    <input id="Button4" type="button" value="��ӵ������ڵ�" onclick="AddNode('check')" class="C_input" style="width: 110px;" />
                    <table cellpadding="0" cellspacing="0" id="NondeTable" border="0"></table>
                    <asp:HiddenField ID="hfNode" runat="server" Value="1|��������," />
                </td>
            </tr>
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="zt_txt" runat="server" Text="����ר��"></asp:Label>&nbsp;&nbsp;
                </td>
                <td>
                    <div id="lblSpec" runat="server"></div>
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                <table cellpadding="0" cellspacing="0" id="SpecTable" border="0"></table>
                            </td>
                            <td valign="top">
                                <input type="button" id="Button5" value="��ӵ�ר��" onclick="AddToSpecial()" class="C_input" style="width: 110px;" />
                                <asp:HiddenField ID="HdnSpec" runat="server" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="display: none">
                <td class="tdbgleft" style="width: 20%;" align="right">
                    <asp:Label ID="btys_txt" runat="server" Text="������ɫ"></asp:Label>&nbsp;&nbsp;
                </td>
                <td class="tdbg">
                    <asp:TextBox ID="Titlecolor" runat="server" Text='' CssClass="l_input" Width="10%"></asp:TextBox>
                    <script language="JavaScript" type="text/javascript">
                        function SelectColor(t, clientId) {
                            var url = "../Common/SelectColor.aspx?d=f&t=6";
                            var old_color = (document.getElementById(clientId).value.indexOf('#') == 0) ? '&' + document.getElementById(clientId).value.substr(1) : '&' + document.getElementById(clientId).value;
                            var color;
                            if (document.all) {
                                color = showModalDialog(url + old_color, '', "dialogWidth:18.5em; dialogHeight:16.0em; status:0");
                                if (color != null) {
                                    document.getElementById(clientId).value = color;
                                } else {
                                    document.getElementById(clientId).focus();
                                }
                            } else {
                                color = window.open(url + '&' + clientId, "hbcmsPop", "top=200,left=200,scrollbars=yes,dialog=yes,modal=no,width=300,height=260,resizable=yes");
                            }
                        }

                        function changevalue(selectvalue) {
                            if (selectvalue == "2") {
                                document.getElementById('changeins').style.display = '';
                            }
                            else {
                                document.getElementById('changeins').style.display = 'none';
                            }
                        }

                        var Do = {
                            these: function () {
                                var flag = true;
                                for (var i = 1; i < arguments.length; i++) {
                                    var lambda = arguments[i];
                                    if (lambda())
                                        continue;
                                    flag = false;
                                }
                                if (flag) {
                                    document.getElementById(arguments[0]).className = "RightInput"
                                } else {
                                    document.getElementById(arguments[0]).className = "WarnInput"
                                }
                            }
                        }
                        function isgoEmpty(Str, FS_Alert) {
                            var Obj = document.getElementById(Str);
                            var value = Obj.value.replace(/(^\s*)|(\s*$)/g, "");
                            if (value == "") {
                                document.getElementById(FS_Alert).innerHTML = "<span style=\"color:Red\">����Ϊ��</span>";
                                return false;
                            } else {
                                var Str_Len = "";
                                var Len_Color = "";
                                Str_Len = value.length;
                                if (Str_Len <= 50) {
                                    Len_Color = "006600";
                                }
                                else if (Str_Len > 50 && Str_Len <= 100) {
                                    Len_Color = "3300FF";
                                }
                                else if (Str_Len > 100) {
                                    Len_Color = "FF0000";
                                }
                                document.getElementById(FS_Alert).innerHTML = "<span>������<font style=\"color:#" + Len_Color + ";font-weight:bold;\">" + Str_Len + "</font></span>";
                                return true;
                            }
                        }

                        function getstrKeys() {
                            document.getElementById("TxtTagKey").value = "";
                            var strKeys = "";
                            var strkey = "<%=getKey()%>";
                            var strTitle = document.getElementById("txtTitle").value;
                            var keys = new Array();
                            keys = strkey.split(",");
                            for (var i = 0; i < keys.length; i++) {
                                if (!(strTitle.indexOf(keys[i]) < 0)) {
                                    if (i == 0) {
                                        strKeys = keys[i];
                                    }
                                    else {
                                        strKeys = strKeys + " " + keys[i];
                                    }
                                }
                            }
                            var strtxt = document.getElementById("TxtTagKey").value;
                            document.getElementById("TxtTagKey").value = strtxt + strKeys;
                        }
                    </script>
                    <img alt="" onclick="SelectColor(this,'Titlecolor');" src="/App_Themes/AdminDefaultTheme/images/selectclolor.gif" style="border-width: 0px; cursor: pointer; vertical-align: middle;" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label7" runat="server" Text="����ƴ��"></asp:Label>&nbsp;&nbsp;
                </td>
                <td class="tdbg">
                    <asp:TextBox ID="PYtitle" runat="server" Text='' Width="10%" CssClass="l_input" Height="19px"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="bt_txt" runat="server" Text="���ݱ���"></asp:Label>&nbsp;&nbsp;
                </td>
                <td class="tdbg">
                    <asp:TextBox ID="txtTitle" CssClass="l_input" onblur="getstrKeys()" onkeyup="isgoEmpty('txtTitle','span_txtTitle');query('txtTitle','PYtitle')" runat="server" Text='' MaxLength="255" Style="width: 41%; background-image: url(/Images/bg.gif); font-family: ����"></asp:TextBox>
                    <input id="Button1" type="button" value="��������" onclick="open_style()" class="C_input" />
                    <span id="span_txtTitle" name="span_txtTitle"></span><span><span style="color:red">*</span></span>&nbsp;
                    <asp:HiddenField ID="ThreadStyle" runat="server" />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="gjz_txt" runat="server" Text="�ؽ���"></asp:Label>&nbsp;&nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="TxtTagKey" runat="server" Text='' Width="41%" Height="22px" CssClass="l_input"></asp:TextBox>
                    <input id="Button7" type="button" value="��ȡ�ؼ���" onclick="getstrKeys()" class="C_input" style="width: 110px;" />&nbsp;
                    <span style="color: #0000ff">��</span><a href="#" onclick="SelectKey();"><span style="text-decoration: underline; color: Green;">ѡ��ؼ���</span></a><span style="color: #0000ff">��</span>
                    (ʹ�ÿո�ָ�ÿ���ؼ���)
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label21" runat="server" Text="������"></asp:Label>&nbsp;&nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="Subtitle" runat="server" Text='' Width="400px" CssClass="x_input" Height="52px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <asp:Literal ID="ModelHtml" runat="server"></asp:Literal>
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 20%; line-height: 100px; height: 100px" align="right">
                    <div style="float: left; height: 100px; width: 150px; text-align: center;">
                        <label id="picview" name="picview"></label>
                    </div>
                    <asp:Label ID="Label6" runat="server" Text="����ͼƬ"></asp:Label>&nbsp;
                </td>
                <td class="bqright" style="line-height: 100px; height: 100px">
                    <select name="selectpic" id="selectpic" onchange="ShowPic(this.value)" onclick="LoadImg('txt_content')" class="x_input">
                        <option value="" selected="selected">��ָ������ͼƬ</option>
                    </select>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="CreateHTML" runat="server">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label4" runat="server" Text="����"></asp:Label>&nbsp;
                </td>
                <td class="bqright">
                    <asp:CheckBox ID="quickmake" runat="server" Checked="false" Text="�Ƿ���������" />&nbsp;
                </td>
            </tr>
        </tbody>
        <tbody id="Tabs1" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    ¼����&nbsp;&nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtInputer" runat="server" CssClass="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="gx_time" runat="server" Text="����ʱ��"></asp:Label>&nbsp;&nbsp;
                </td>
                <td class="bqright">
                    &nbsp;<input id="Radio1" type="radio" name="date" runat="server" value="1" checked />����Ϊԭ����ʱ��<br />
                    &nbsp;<input id="Radio2" type="radio" name="date" runat="server" value="2" />�Զ���&nbsp;&nbsp;
                    <asp:TextBox ID="txtdate" runat="server" Text="" onclick="calendar('txtdate');parent.document.getElementById('main_right').height = document.body.offsetHeight+400;" Width="20%" CssClass="l_input"></asp:TextBox>
                    <asp:Image ID="Image2" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif" ToolTip="����������������ʱ��ѡ���" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="hits_txt" runat="server" Text="�����"></asp:Label>&nbsp;&nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtNum" runat="server" Text="0" CssClass="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    ָ������ģ��&nbsp;&nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="TxtTemplate" CssClass="l_input" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                    <input type="button" value="ѡ��ģ��" class="C_input" style="width: 110px;" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtTemplate')+'&FilesDir=',650,480)" />
                </td>
            </tr>
            <tr class="tdbg" id="outpdf" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    ����PDF�ļ� &nbsp;
                </td>
                <td>
                    <asp:CheckBox ID="Makepdf" runat="server" Text="����" />
                </td>
            </tr>
        </tbody>
        <tbody id="Tabs2" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="tj_txt" runat="server" Text="�Ƽ�����"></asp:Label>&nbsp;&nbsp;
                </td>
                <td class="bqright">
                    <asp:CheckBox ID="ChkAudit" Text="�Ƽ�" runat="server" />
                </td>
            </tr>
            <tr class="tdbg" id="contentsk" runat="server" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="zht_txt" runat="server" Text="״̬"></asp:Label>&nbsp;&nbsp;
                </td>
                <td class="bqright">
                    <asp:RadioButtonList ID="ddlFlow" runat="server" RepeatDirection="Horizontal" Width="155px">
                        <asp:ListItem Value="99" Selected="True">����</asp:ListItem>
                        <asp:ListItem Value="0">����</asp:ListItem>
                        <asp:ListItem Value="-1">�˸�</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </tbody>
        <tbody id="Tabs3" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label3" runat="server" Text="��������"></asp:Label>&nbsp;&nbsp;
                </td>
                <td class="bqright">
                    <asp:DropDownList ID="BidType" runat="server" onchange="changevalue(this.value);">
                        <asp:ListItem Value="0">ѡ��ʽ</asp:ListItem>
                        <asp:ListItem Value="1">�����б�</asp:ListItem>
                        <asp:ListItem Value="2">�Ǽ�����</asp:ListItem>
                    </asp:DropDownList>
                    <div id="changeins" style="display: none">
                        ����Ҫ<asp:TextBox ID="pronum" Width="30px" runat="server" CssClass="l_input">0</asp:TextBox>
                        ��������ÿ��
                        <asp:TextBox ID="bidmoney" Width="30px" runat="server" CssClass="l_input">0</asp:TextBox>
                        Ԫ
                    </div>
                </td>
            </tr>
            <tr id="bidmoneytable" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label5" runat="server" Text="��Ŀ�������"></asp:Label>&nbsp;&nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="proweek" runat="server" Width="30px" CssClass="l_input">0</asp:TextBox>
                    ��
                </td>
            </tr>
        </tbody>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:HiddenField ID="HdnNode" runat="server" />
                <asp:HiddenField ID="HdnModel" runat="server" />
                <%-- <input type="button" class="C_input" id="upbutton" name="upbutton" value="�༭��һ��" onclick="showup()" />
               <input type="button" class="C_input" id="Editdown" name="Editdown" value="�༭��һ��" onclick="ShowTable()" />--%>
                <asp:Button ID="EBtnSubmit" CssClass="C_input" Text="�����Ŀ" OnClick="EBtnSubmit_Click" runat="server" />
                &nbsp;<asp:Button ID="Button6" CssClass="C_input" runat="server" OnClick="Button6_Click" Text="��Ϊ�ݸ�" />
                &nbsp;<asp:Button ID="BtnBack" CssClass="C_input" runat="server" Text="������" OnClick="BtnBack_Click" UseSubmitBehavior="False" CausesValidation="False" />
            </td>
        </tr>
    </table>
    <br />
    <b>ע����ҳ����[PageCode/]</b>
    <script language="javascript" type="text/javascript">
        window.onload = function () {
            if (document.getElementById('<%=txtNode.ClientID%>') != null) {
                var strp = window.document.getElementById("<%=HdnSpec.ClientID%>").value;
                var strarrp = strp.split(",");
                var sp = "";
                if (strarrp.length > 0) {
                    for (var iip = 0; iip < strarrp.length; iip++) {
                        if (strarrp[iip] != "") {
                            var sarrp = strarrp[iip].split("|");
                            AddRow(sarrp[1], sarrp[0], document.all.SpecTable, "��ר��", 2);
                            sp += sarrp[0] + ",";
                        }
                    }
                }

                window.document.getElementById('<%=HdnSpec.ClientID%>').value = sp;
                var str = window.document.getElementById('<%=hfNode.ClientID%>').value;
                var strarr = str.split(",");
                var s = ""; //alert(str);
                if (strarr.length > 0) {
                    if (strarr[0].indexOf('|') > -1) {
                        var sa = strarr[0].split("|");
                        if (sa.length > 2) {
                            s += sa[0] + ",";
                            var xx = sa[1];
                            if (xx != "") {
                                window.document.getElementById('<%=txtNode.ClientID%>').value = sa[1].replace("&gt;&gt;", ">>");
                            }
                            for (var ii = 0; ii < strarr.length; ii++) {
                                if (ii > 0) {
                                    if (strarr[ii] != "") {
                                        var sarr = strarr[ii].split("|");
                                        AddNodeRow(sarr[1], sarr[0]);
                                        s += sarr[0] + ",";
                                    }
                                }
                            }
                        }
                    }
                }
                window.document.getElementById('<%=hfNode.ClientID%>').value = s;
            }
        }
    </script>
<script type="text/javascript">
    $(function () {
        $("iframe[class*='Charts']").hide();
        //        var vas = $("#yYlist").val().split('*');
        //        var cid = vas[0];
        //        $("#Chid").val(cid);
    })
    function change(id) {
        var hid = id.substr(5);
        if ($("select[id*='" + id + "']").val() == "0") {
            $("iframe[id*='" + id + "']").hide();
            //$("#Charts").hide();
            $("#" + hid).val("0");
            return false;
        }
        $("#wvb")
        $("iframe[id*='" + id + "']").show();
        var vas = $("select[id*='" + id + "']").val().split('*');
        var cid = vas[0];
        var srcva;
        if (vas[1] == "��״ͼ") {
            srcva = "/manage/Charts/pie-basic.aspx?Cid=" + cid;
        } else if (vas[1] == "��״ͼ") {
            srcva = "/manage/Charts/line.aspx?Cid=" + cid;
        } else {
            srcva = "/manage/Charts/colum.aspx?Cid=" + cid;
        }
        $("iframe[id*='" + id + "']").attr({ "width": vas[2], "height": vas[3], "src": srcva });
        $("#" + hid).val(cid);
    }
    function TbAdd() {
        $("#shBa").css("top", event.clientY + 30);
        $("#shBa").show();
    }
    function clo() {
        $("#shBa").hide();
    }
    function ShowS(id) {
        $("input[id*='" + id + "'][value!='����ͼ��']").hide();
        $("select[id*='" + id + "']").show();
    }
    function seAd(id) {
        $.get("../Flex/CAddChart.aspx?addw=true", function (data) {
            var das = data.split('|'); //'86*��״ͼ*300*200'
            $("select[id*='" + id + "']").append("<option selected='selected' value='" + das[0] + "*" + das[1] + "*" + das[3] + "*" + das[4] + "'>" + das[2] + "</option>");
            change(id);
        })
    }
</script>
<input type="hidden" value="" id="va" />
<input type="hidden" value="0" id="Chid" runat="server" />
<%--div id="shBa" style="z-index: 1; left:10%; position: absolute;height:550px; width:800px;display:none;">
    <div style="font-size:15px;cursor:pointer;position: absolute;padding:3px;width:100%;text-align:center;" onclick="clo()">�ر�</div>
<iframe src="/manage/Flex/AddChart.aspx" width="800" height="550" style="float:left;"  frameborder="0" scrolling="no"></iframe>
</div>--%>
</form>
</body>
</html>