<%@ page language="C#" autoeventwireup="true" inherits="IPManage, App_Web_4dj34gd0" enableEventValidation="false" viewStateEncryptionMode="Never" %>


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
        
        <span>��̨���� </span>&gt;&gt;<span> ��չ����</span> &gt;&gt;<span> ��������</span> &gt;&gt; 
        <span>IP����</span>
        <a href="InputClass.aspx" ><font color="red">[��ӷ���]</font></a></div>
    <div class="clearbox">
    </div>
    <div>
    
<div>       
        </div>
        
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
            <thead class="spacingtitle">
                <tr style="height:30px">                    
                    <td colspan="4" align="center" >
                        IP�������
                    </td>
                </tr>
            </thead>
            <tbody class="tdbg">
                <tr style="height:26px" class="tdbgleft">
                     <td align="center" style="width:10%">ID</td>
                     <td align="center" style="width:25%">��������</td>
                     <td align="center" style="width:30%">��������</td>
                     <td align="center" style="width:35%">����</td>
                </tr>
                <%=table() %>
            </tbody>
        </table>
    </div>
    </form>
</body>
</html>
    