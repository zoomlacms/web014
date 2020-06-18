<%@ page language="C#" autoeventwireup="true" inherits="InputIp, App_Web_4dj34gd0" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>���IP��Ϣ</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 6px;
            width: 15%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>��̨����</span>&gt;&gt;<span>��չ����</span> &gt;&gt;<span><a href="InputIp.aspx"></a></span><span>���IP��Ϣ</span> </div> 
		<div class="clearbox"></div>  

    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                <asp:Label ID="LblTitle" runat="server" Text="���IP��Ϣ" Font-Bold="True"></asp:Label></td></tr>
        <tr class="tdbg">
            <td class="style1" align="center">
                <strong> <asp:Label ID="Label5" runat="server" Text="Label" Width="60%">�������ƣ�</asp:Label></strong></td>
            <td class="tdbg" align="left">
            
        <asp:DropDownList ID="class_ID" runat="server"  Width="155px" DataTextField="class_name" DataValueField="class_ID">
        </asp:DropDownList>
            </td>
        </tr>   
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="style1" align="center" >
                <strong><asp:Label ID="Label1" runat="server" Text="��ʼ�ɣУ�"></asp:Label></strong> 
                </td>
                <td width="66%" align="left" > 
       <asp:TextBox ID="startIP" class="l_input"  runat="server" Width="150px"></asp:TextBox>
                    * �� 255.255.255.255<asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator1" runat="server" ControlToValidate="startIP" 
                        ErrorMessage="��������ȷ��ʽ��IP" 
                        ValidationExpression="\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="startIP" ErrorMessage="��������ʼIP"></asp:RequiredFieldValidator>
                </td>
            </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="center">
                <strong> <asp:Label ID="Label2" runat="server" Text="��ֹ�ɣУ�"></asp:Label></strong></td>
            <td class="tdbg" align="left">
        <asp:TextBox ID="endIp" class="l_input" runat="server" Width="150px"></asp:TextBox>
                * �� 255.255.255.255<asp:RegularExpressionValidator 
                    ID="RegularExpressionValidator2" runat="server" ControlToValidate="endIp" 
                    ErrorMessage="��������ȷ��ʽ��IP" 
                    ValidationExpression="\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="endIp" ErrorMessage="��������ֹIP"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="center">
                <strong> <asp:Label ID="Label3" runat="server">ʡ�����ƣ�</asp:Label></strong></td>
            <td class="tdbg" align="left">
                <asp:TextBox ID="pro_name" class="l_input" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style1" align="center">
                <strong> <asp:Label ID="Label4" runat="server" Text="Label">�м����ƣ�</asp:Label></strong></td>
            <td class="tdbg" align="left">
                <asp:TextBox ID="city_name" class="l_input" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbgbottom">
            <td colspan="5">
        <asp:Button ID="submit" class="C_input"   runat="server" Text="�ύ" OnClick="submit_Click" 
            style="height: 22px" Height="16px" />
                &nbsp;&nbsp;
            </td>
        </tr>
    </table> 
    </form>
</body>
</html>
