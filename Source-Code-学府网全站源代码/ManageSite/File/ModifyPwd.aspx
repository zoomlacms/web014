<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.ModifyPassword, App_Web_lqp4im5x" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>�޸�����</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
</head>
<body>
<form id="form1" runat="server">
  <div > </div>
  <table width="70%" border="0" cellpadding="2" cellspacing="1" class="border" align="center">
    <tr>
      <td style="background-color: #99CCFF"> ��ǰλ�ã����ܵ��� >>
        <asp:Label ID="lblpwd" runat="server" Text="�޸�����" ForeColor="Black"></asp:Label></td>
      <td style="background-color: #99CCFF"></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 50%" align="right"> ԭ �� �� </td>
      <td><asp:TextBox ID="TxtOldPassword" class="l_input" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtOldPassword" runat="server" ErrorMessage="ԭ���벻��Ϊ�գ�" Display="Dynamic" /></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" align="right"> �� �� �룺 </td>
      <td><asp:TextBox ID="TxtPassword" class="l_input" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator ID="ValrUserPassword" ControlToValidate="TxtPassword" runat="server" ErrorMessage="�����벻��Ϊ�գ�" Display="Dynamic" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassword" runat="server" ControlToValidate="TxtPassword" SetFocusOnError="false"  Display="None" ValidationExpression="\w{6,18}" ErrorMessage="��������6λ���Ҳ��ܳ���18λ"></asp:RegularExpressionValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" align="right"> ȷ�����룺 </td>
      <td><asp:TextBox ID="TxtPassword2" class="l_input" runat="server" TextMode="Password" />
        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="TxtPassword2" ControlToCompare="TxtPassword" ErrorMessage="�������ȷ�����벻һ�£�" runat="server" /></td>
    </tr>
    <tr class="tdbgbottom">
      <td colspan="2"><asp:Button ID="BtnSubmit" runat="server" class="C_input" Text="�޸�" OnClick="BtnSubmit_Click" />
        &nbsp;&nbsp;
        <asp:Button ID="BtnCancle" class="C_input" runat="server" Text="��д" OnClick="BtnCancle_Click" ValidationGroup="BtnCancel" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" /></td>
    </tr>
  </table>
</form>
</body>
</html>