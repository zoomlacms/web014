<%@ page language="C#" autoeventwireup="true" inherits="User.AddUser, App_Web_0yhjvz4c" title="��ӻ�Ա" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=gb2312">
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="myForm" runat="server">
    <div class="column">
        <div class="columntitle">
            ��ǰλ�ã����ܵ��� >><a href="AddUser.aspx">����û�</a></div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1">
            <tr>
                <td style="width: 15%; height: 22px;" align="right">
                    �û�����
                </td>
                <td style="width: 85%; height: 25px;" align="left">
                    <asp:TextBox ID="tbUserName" runat="server" TabIndex="1"></asp:TextBox><span style="color: red">*</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbUserName" ErrorMessage="�û�������Ϊ��" Display="Static"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValgTextMaxLength" ControlToValidate="tbUserName" ValidationExpression="^[a-zA-Z0-9]{4,20}$" SetFocusOnError="false" Display="None" runat="server"></asp:RegularExpressionValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="tbUserName" ErrorMessage="�û����Ѵ���" OnServerValidate="CustomValidator1_ServerValidate" Visible="False" Display="Dynamic"></asp:CustomValidator>
                </td>
            </tr>
            <tr >
                <td style="width: 15%; height: 22px;" align="right">
                    �û����룺
                </td>
                <td style="width: 85%; height: 22px;" align="left">
                    <asp:TextBox ID="tbPwd" runat="server" TextMode="Password"></asp:TextBox><span style="color: red">*</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbPwd" ErrorMessage="���벻��Ϊ��" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr >
                <td style="width: 15%;" align="right">
                    Email��
                </td>
                <td style="width: 85%" align="left">
                    <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox><span style="color: red">*</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbEmail" Display="Dynamic" ErrorMessage="Email��ַ����Ϊ��"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" Display="Dynamic" ErrorMessage="��ʽ����ȷ" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" Visible="true"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr >
                <td  style="width: 15%;" align="right">
                    ��ʾ���⣺
                </td>
                <td style="width: 85%" align="left">
                    <asp:TextBox ID="tbQuestion" runat="server"></asp:TextBox><span style="color: red">*</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbQuestion" Display="Dynamic" ErrorMessage="��������ʾ����"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <table width="100%" border="0"  cellpadding="0" cellspacing="1">
            <tr >
                <td  style="width: 15%; height: 22px" align="right">
                    ��ʾ����𰸣�
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbAnswer" runat="server"></asp:TextBox><span style="color: red">*</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbAnswer" ErrorMessage="��ʾ�𰸲���Ϊ��"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 15%; height: 22px" align="right">
                    ������Ա�飺
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:DropDownList ID="DDLGroup" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr >
                <td  style="width: 15%; height: 22px" align="right">
                    ��ʵ������
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbTrueName" runat="server"></asp:TextBox>
                </td>
                <td style="width: 15%; height: 22px" align="right">
                    �Ա�
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:RadioButtonList ID="tbUserSex" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="1">��</asp:ListItem>
                        <asp:ListItem Value="0">Ů</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr >
                <td  style="width: 15%; height: 22px" align="right">
                    �������ڣ�
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbBirthday" runat="server" onblur="setday(this);" onclick="setday(this);"></asp:TextBox>
                </td>
                <td  style="width: 15%; height: 22px" align="right">
                    �칫�绰��
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbOfficePhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td style="width: 15%; height: 22px" align="right">
                    ��ͥ�绰��
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbHomePhone" runat="server"></asp:TextBox>
                </td>
                <td  style="width: 15%; height: 22px" align="right">
                    ���棺
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbFax" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td  style="width: 15%; height: 22px" align="right">
                    �ֻ����룺
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbMobile" runat="server"></asp:TextBox>
                </td>
                <td style="width: 15%; height: 22px" align="right">
                    С��ͨ��
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbPHS" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td style="width: 15%; height: 22px" align="right">
                    ��ϵ��ַ��
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbAddress" runat="server" Columns="40"></asp:TextBox>
                </td>
                <td style="width: 15%; height: 22px" align="right">
                    �������룺
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbZipCode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td style="width: 15%; height: 22px" align="right">
                    ���֤���룺
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbIDCard" runat="server" Columns="40"></asp:TextBox>
                </td>
                <td style="width: 15%; height: 22px" align="right">
                    ������ҳ��
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbHomepage" runat="server" Columns="40">http://</asp:TextBox>
                </td>
            </tr>
            <tr >
                <td style="width: 15%; height: 22px" align="right">
                    QQ���룺
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbQQ" runat="server"></asp:TextBox>
                </td>
                <td style="width: 15%; height: 22px" align="right">
                    ICQ���룺
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbICQ" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td  style="width: 15%; height: 22px" align="right">
                    MSN�˺ţ�
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbMSN" runat="server"></asp:TextBox>
                </td>
                <td  style="width: 15%; height: 22px" align="right">
                    �Ż�ͨ�˺ţ�
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbYahoo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td  style="width: 15%; height: 22px" align="right">
                    UC�˺ţ�
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbUC" runat="server"></asp:TextBox>
                </td>
                <td  style="width: 15%; height: 26px;" align="right">
                    ͷ���ַ��
                </td>
                <td style="width: 35%; height: 26px;" align="left">
                    <asp:TextBox ID="tbUserFace" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td style="width: 15%; height: 22px" align="right">
                    ͷ���ȣ�
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbFaceWidth" runat="server">16</asp:TextBox>
                </td>
                <td style="width: 15%; height: 22px" align="right">
                    ͷ��߶ȣ�
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbFaceHeight" runat="server">16</asp:TextBox>
                </td>
            </tr>
            <tr >
                <td style="width: 15%; height: 22px" align="right">
                    ǩ������
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:TextBox ID="tbSign" runat="server" class="input1" TextMode="MultiLine" Width="300" Height="60"></asp:TextBox>
                </td>
                <td style="width: 15%; height: 22px" align="right">
                    ��˽�趨��
                </td>
                <td style="width: 35%; height: 22px" align="left">
                    <asp:RadioButtonList ID="tbPrivacy" runat="server">
                        <asp:ListItem Selected="True" Value="0">������Ϣ</asp:ListItem>
                        <asp:ListItem Value="1">ֻ�Ժ��ѹ���</asp:ListItem>
                        <asp:ListItem Value="2">��ȫ����</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <asp:Literal ID="lblHtml" runat="server"></asp:Literal>
            <tr>
                <td style="height: 21px" colspan="4" align="center">
                    <asp:Button ID="btnSave"  CssClass="button"  runat="server" Text="�����Ա��Ϣ" Width="90px" OnClick="btnSave_Click" TabIndex="12" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnCancel"  CssClass="button" runat="server" Text="ȡ����" Width="53px" OnClientClick="location.href='UserManage.aspx';return false;" TabIndex="13" />
                </td>
            </tr>
        </table>
    </div>
    <asp:Literal ID="ltlScripts" runat="server"></asp:Literal>
    </form>
</body>
</html>
