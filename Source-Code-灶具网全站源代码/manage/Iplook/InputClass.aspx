<%@ page language="C#" autoeventwireup="true" inherits="InputClass, App_Web_4dj34gd0" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title></title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="myform" runat="server">
    <div class="r_navigation">
        
        <span>��̨����</span>&gt;&gt;<span>��չ����</span> &gt;&gt;<span>��������</span> &gt;&gt;<span><a href="SpecialManage.aspx">��ӷ���</a></span>
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
            <thead class="spacingtitle">
                <tr>
                    <td colspan="2" align="center" >
                        ��ӷ���
                    </td>
                </tr>
            </thead>
            <tbody class="tdbg">
                <tr>
                    <td style="width:20%">
                        ��������:
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="leadto_ID" runat="server" Width="155px" DataTextField="class_name" DataValueField="class_ID" ></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width:20%">
                        ��������:
                    </td>
                    <td  align="left">
                        <asp:TextBox ID="class_name" class="l_input" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr><td colspan="2" align="center">
                <asp:Button ID="submit" class="C_input"   runat="server" OnClick="submit_Click" Text="�ύ" 
                        Width="82px" />&nbsp;<asp:Button ID="submit0" class="C_input"   runat="server" 
                        Text="����" Width="82px" onclick="submit0_Click" /></td></tr>
            </tbody>
        </table>
    </div>
    </form>
</body>
</html>