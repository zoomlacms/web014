<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Config_AtionSite, App_Web_mzwy2ytc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>Ƶ������</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<style type="text/css">
.style1 { width: 200px; }
</style>
</head>
<body>
<form id="myForm" runat="server">
      <div  class="column">
        <div class="columntitle" >��ǰλ�ã����ܵ��� >>Ƶ������</div>
        <table width="100%" align="center" cellpadding="5" cellspacing="5">
          <tr>
            <td  align="center"   style="background-color:#F0F6FC; width:200px" ><strong>Ƶ�����ƣ�</strong></td>
            <td align="left"><asp:TextBox ID="TextBox1" runat="server" style="height: 20px" Width="210px">�ҵĵ���</asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>Ƶ�����⣺</strong></td>
            <td align="left"><asp:TextBox ID="TextBox2" runat="server" Width="210px"></asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>Ƶ����ַ��</strong></td>
            <td align="left"><asp:TextBox ID="TextBox3" runat="server" Width="210px">http://127.0.0.1</asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>LOGO��ַ��</strong></td>
            <td align="left"><asp:TextBox ID="TextBox4" runat="server" Width="210px">Skin/Default/images/logo.jpg</asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>Banner��ַ��</strong></td>
            <td align="left"><asp:TextBox ID="TextBox5" runat="server" Width="210px">Skin/Default/images/banner.jpg</asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>Ƶ������������</strong></td>
            <td align="left"><asp:TextBox ID="TextBox6" runat="server" Width="210px">Ƶ������</asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>Ƶ���������䣺</strong></td>
            <td align="left"><asp:TextBox ID="TextBox7" runat="server" Width="210px">web@zoomla.cn</asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>Ƶ��META�ؼ��ʣ�</strong></td>
            <td align="left"><asp:TextBox ID="TextBox8" runat="server" Width="250px" Height="60px" TextMode="MultiLine"></asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>Ƶ��META��ҳ������</strong></td>
            <td align="left"><asp:TextBox ID="TextBox9" runat="server" Width="250px"  Height="60px" TextMode="MultiLine"></asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>��Ȩ��Ϣ��</strong></td>
            <td align="left"><asp:TextBox ID="TextBox10" runat="server" Width="250px" Height="60px"  TextMode="MultiLine"></asp:TextBox></td>
          </tr>
          <tr>
            <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="�� ��"  runat="server" onclick="Submit_Click" /></td>
          </tr>
        </table>
      </div>
    </form>
</body>
</html>