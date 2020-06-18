﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_CarAdd, App_Web_cygfxagp" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
        <div class="r_navigation">
            
            <span>后台管理</span> &gt;&gt; <span>会员空间管理</span> &gt;&gt; <span>抢车位管理</span> &gt;&gt; <a href="CarManage.aspx">[车辆列表]</a>  |  <a href="CarAdd.aspx">[添加车辆]</a>  |  <a href="CarRuleManage.aspx" >[抢车位规则管理]</a>
        </div> 
        <div>
            <table width="100%" height="227" border="0" cellpadding="2" cellspacing="1" class="border">
                <tr class="tdbg">
                    <td colspan="2" align="center" class="spacingtitle" >
                        添加车辆信息</td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td width="24%" align="center" class="tdbgleft">
                        车辆名称：</td>
                    <td width="76%">
                        <asp:TextBox ID="txtCarName" class="l_input" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCarName"
                            ErrorMessage="请输入车辆名称"></asp:RequiredFieldValidator></td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td width="24%" align="center" class="tdbgleft">
                        车辆售价：</td>
                    <td width="76%">
                        <asp:TextBox ID="txtCarMoney" class="l_input" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCarMoney" ErrorMessage="请输入车辆价格"></asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtCarMoney" ErrorMessage="请输入正确的价格" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator></td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td width="24%" align="center" class="tdbgleft">
                        车辆LOG图片：</td>
                    <td width="76%">
                        <asp:TextBox ID="txtCarLog" class="l_input" runat="server" Width="300px"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCarLog" ErrorMessage="请上传车辆的LOG图片"></asp:RequiredFieldValidator>
                        <iframe id="smallimgs" style="top:2px" src="../shop/fileupload.aspx?menu=txtCarLog" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td width="24%" align="center" class="tdbgleft">
                        车辆图片：</td>
                    <td width="76%">
                        <asp:TextBox ID="txtCarImg" class="l_input" runat="server" Width="300px"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCarImg" ErrorMessage="请上传车辆的图片"></asp:RequiredFieldValidator>
                        <iframe id="Iframe1" style="top:2px" src="../shop/fileupload.aspx?menu=txtCarImg" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td width="24%" align="center" class="tdbgleft">
                        车辆简介：</td>
                    <td width="76%">
                        <asp:TextBox ID="txtCarContext" class="l_input" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td align="center">
                        &nbsp;</td>
                    <td>
                        &nbsp;<asp:Button ID="btnSubmit" class="C_input" runat="server" Text="保  存" OnClick="btnSubmit_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button
                            ID="Button1" class="C_input" runat="server" Text="返  回" OnClick="Button1_Click" /></td>
                </tr>
            </table>
        </div>
</form>
</body>
</html>
