<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="user_iServer_AddQuestion, App_Web_vyibyqsw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>�ύ����</title>
<link rel="stylesheet" type="text/css" href="../../App_Themes/UserThem/user_user.css" />
<link rel="stylesheet" type="text/css" href="/App_Themes/UserThem/bidding.css" />
<link rel="stylesheet" type="text/css" href="/App_Themes/AdminDefaultTheme/main.css" />
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript">
    function isNulltitle() {
        var lbltitle = document.getElementById("Label1");
        var title = document.getElementById("TextBox1").value;
        if (title == "") {
            lbltitle.innerHTML = "�������������!!!";
            return;
        }
        else
            lbltitle.innerHTML = "";
    }

    function isNullstr() {
        var lblstr = document.getElementById("Label2");
        var str = document.getElementById("textarea1").value;
        if (str == "")
            lblstr.innerHTML = "��������������!!!"
        else
            lblstr.innerHTML = "";
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
    �����ڵ�λ�ã�<a title="��վ��ҳ" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server"
        Text="Label"></asp:Label></a>&gt;&gt;<a title="��Ա����" href="/User/Default.aspx" target="_parent">��Ա����</a>&gt;&gt;
    <a title="���ʱش�" href="FiServer.aspx">���ʱش�</a>
</div>
<table width="100%">
    <tr style="height: 25px; background-color: #fff;" valign="bottom">
        <td class="title" align="center">
            �ύ����
        </td>
    </tr>
    <tr>
        <td align="left" valign="top" style="width: 100%">
            <div id="viewPanel">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td colspan="2">
                                        <input type="hidden" name="module" value="mysupport_supportticketadd" />
                                        <input type="hidden" name="dosupportticketadd" value="" />
                                        <table width="100%" cellpadding="21" cellspacing="1" class="border" style="background-color: white;">
                                            <tr>
                                                <td style="width: 100px" class="tdbgleft">
                                                    ���ȼ�<span style="color: red">*</span>
                                                </td>
                                                <td class="tdbg">
                                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">
                                                        <asp:ListItem Value="��">��</asp:ListItem>
                                                        <asp:ListItem Selected="True" Value="��">��</asp:ListItem>
                                                        <asp:ListItem Value="��">��</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tdbgleft">
                                                    �������<span style="color: red">*</span>
                                                </td>
                                                <td class="tdbg">
                                                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true">
                                                        <asp:ListItem Selected="True" Value="����">����</asp:ListItem>
                                                        <asp:ListItem Value="��ѯ">��ѯ</asp:ListItem>
                                                        <asp:ListItem Value="Ͷ��">Ͷ��</asp:ListItem>
                                                        <asp:ListItem Value="����">����</asp:ListItem>
                                                        <asp:ListItem Value="Ҫ��">Ҫ��</asp:ListItem>
                                                        <asp:ListItem Value="����ʹ��">����ʹ��</asp:ListItem>
                                                        <asp:ListItem Value="bug����">bug����</asp:ListItem>
                                                        <asp:ListItem Value="����">����</asp:ListItem>
                                                        <asp:ListItem Value="����">����</asp:ListItem>
                                                        <asp:ListItem Value="����">����</asp:ListItem>
                                                        <asp:ListItem Value="����">����</asp:ListItem>
                                                        <asp:ListItem Value="�ʾ�">�ʾ�</asp:ListItem>
                                                        <asp:ListItem Value="DNS">DNS</asp:ListItem>
                                                        <asp:ListItem Value="MSSQL">MSSQL</asp:ListItem>
                                                        <asp:ListItem Value="MySQL">MySQL</asp:ListItem>
                                                        <asp:ListItem Value="IDC">IDC</asp:ListItem>
                                                        <asp:ListItem Value="��վ�ƹ�">��վ�ƹ�</asp:ListItem>
                                                        <asp:ListItem Value="��վ����">��վ����</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px" class="tdbgleft">
                                                    �������<span style="color: red">*</span>
                                                </td>
                                                <td class="tdbg">
                                                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="100" onblur="isNulltitle();"
                                                        Width="407px"></asp:TextBox>
                                                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text=""></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tdbgleft">
                                                    ��������<span style="color: red">*</span>
                                                </td>
                                                <td class="tdbg" id="iframeHtml">
                                                    <textarea runat="server" id="textarea1" class="ckeditor" name="content" rows="4"
                                                        cols="40" onblur="isNullstr();"></textarea>
                                                    <asp:Label ID="Label2" runat="server" ForeColor="Red" CssClass="ckeditor" Text=""></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tdbgleft">
                                                    ����
                                                </td>
                                                <td class="tdbg">
                                                    ֻ���ϴ�<span id="filetype" runat="server"></span> ���͵ĸ���,��������С�� 500KB
                                                    <br />
                                                    ����1:
                                                    <asp:FileUpload ID="FileUpload1" runat="server" onkeydown="event.returnValue=false;"
                                                        onpaste="return false" /><br />
                                                    ����2:
                                                    <asp:FileUpload ID="FileUpload2" runat="server" onkeydown="event.returnValue=false;"
                                                        onpaste="return false" /><br />
                                                    ����3:
                                                    <asp:FileUpload ID="FileUpload3" runat="server" onkeydown="event.returnValue=false;"
                                                        onpaste="return false" /><br />
                                                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text=""></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" align="center">
                                                    <asp:Button ID="LinkButton1" runat="server" CssClass="i_bottom" OnClick="LinkButton1_Click"
                                                        Text="�ύ" />
                                                    <asp:Button ID="Button1" runat="server" CssClass="i_bottom" Text="ȡ��" OnClick="Button1_Click"
                                                        CausesValidation="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <div style="padding: 10px;">
                                                        ��ʾ��������ʹ��AddQuestion.aspx?title=222&con=content�ķ�������GET���ݡ�</div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
</table>
</form>
</body>
</html>
