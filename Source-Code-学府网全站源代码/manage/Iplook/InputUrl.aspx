<%@ page language="C#" autoeventwireup="true" inherits="InputUrl, App_Web_4dj34gd0" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>���URL��Ϣ</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style2
        {
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 5px;
            width: 15%;
        }
    </style>
</head>
<body>
    <div class="r_navigation">
		
		<span>��̨����</span>&gt;&gt;<span>��չ����</span> &gt;&gt;<span><a href="InputUrl.aspx"></a></span><span>���URL��Ϣ</span></div> 
		<div class="clearbox"></div>  
    <form id="form1" runat="server">
    <asp:Label ID="info" runat="server" Text="Label"></asp:Label>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                <asp:Label ID="LblTitle" runat="server" Text="���URL��Ϣ" Font-Bold="True"></asp:Label></td></tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style2" align="center">
                <strong>   <asp:Label ID="Label6" runat="server" Text="URL��"></asp:Label></strong></td>
            <td class="tdbg" align="left"> 
     <asp:TextBox ID="url" class="l_input" runat="server" Width="30%"></asp:TextBox>
            </td>
        </tr>   
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="style2" align="center" >
                    <strong><asp:Label ID="Label7" runat="server" Text="����ID��"></asp:Label></strong>
                </td>
                <td width="66%" align="left" >
        <asp:TextBox ID="class_ID" class="l_input" runat="server" Width="25%"></asp:TextBox>
                </td>
            </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="style2" align="center">
                <asp:Label ID="Label3" runat="server" Text="�ڵ�ID��"></asp:Label>
                </td>
            <td width="20%" align="left"> 
        <asp:TextBox ID="Node_ID" class="l_input" runat="server" Width="25%"></asp:TextBox>
            </td>
        </tr>
               <tr class="tdbgbottom">
            <td colspan="5" class="tdbgbottom" >
                <asp:Button ID="add" class="C_input" runat="server"  Text="���" OnClick="add_Click"  />
                &nbsp;&nbsp;
            </td>
        </tr>
    </table> 
    </form>
</body>
</html>

