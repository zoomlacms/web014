<%@ page language="C#" autoeventwireup="true" inherits="AlterIp, App_Web_4dj34gd0" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>IP�������</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
    .style1
    {
        background: #e0f7e5;
/*line-height: 120%;*/    padding: 2px;
        width: 223px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server" class="tdbgleft">
      <div class="r_navigation">
        
        <span>��̨����</span> &gt;&gt; <span>��չ����</span> &gt;&gt; <span>��������</span> &gt;&gt; <span><a href="DownServerManage.aspx"> IP�������</a></span>
        &gt;&gt; <span> 
            <asp:Label ID="Label4" runat="server" Text="�޸ķ�����Ϣ"></asp:Label></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
        
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                <strong>
                    <asp:Label ID="LblTitle" runat="server" Text="�޸ķ�����Ϣ" Font-Bold="True"></asp:Label>
                </strong>
            </td>
        </tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="style1">
                <strong>����ID��</strong>
            </td>
            <td class="tdbg" style="text-align: left; width: 70%;">
                <asp:TextBox ID="class_ID"  class="l_input" runat="server" Width="290px" Enabled="False"></asp:TextBox>
               
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td  align="left" class="style1">
                <strong>��������</strong><br />
            </td>
            <td class="tdbg" style="text-align: left; width: 70%;">
                <asp:TextBox ID="class_name" class="l_input" runat="server" Width="290px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg">
            <td align="left" class="style1">
                <strong>�������ࣺ</strong>
            </td>
            <td class="tdbg" style="text-align: left; ">
                <asp:DropDownList ID="leadto_ID" runat="server" Width="156px" DataTextField="class_name" DataValueField="class_ID">
        </asp:DropDownList>
            </td>
        </tr>
       
        <tr class="tdbg">
            <td style="text-align: center" colspan="2">
                <asp:Button ID="EBtnModify" class="C_input"  Text="�޸�" OnClick="EBtnModify_Click" runat="server" /><input name="BtnCancel" type="button" class="C_input"  onclick="javascript:window.location.href='IPManage.aspx'"
                    value=" ȡ�� " /></td>
        </tr>
    </table>
    
    </form>
</body>
</html>
