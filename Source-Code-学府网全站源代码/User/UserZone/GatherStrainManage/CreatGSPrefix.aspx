<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.GatherStrainManage.CreatGSPrefix, App_Web_c4cvu03i" title="所有群族" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<%@ Register Src="WebUserControlGztherLetf.ascx" TagName="WebUserControlGztherLetf" TagPrefix="uc2" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的空间</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
    var oItem = spanChk.children;
    var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
    xState=theBox.checked;
    elm=theBox.form.elements;
    for(i=0;i<elm.length;i++)
    if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
    {
        if(elm[i].checked!=xState)
        elm[i].click();
    }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo"> 您现在的位置：<a title="网站首页" href="/"> <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label> </a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的空间" href="/User/Userzone/Default.aspx">我的空间</a></div>
  <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
  <br />
  <uc2:WebUserControlGztherLetf ID="WebUserControlGztherLetf2" runat="server" />
  <div class="us_topinfo" style="margin-top: 10px;">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr>
        <td colspan="3"><img src="../Images/ico_qun.gif" alt="创建新的群族" />创建新的群族</td>
      </tr>
      <tr>
        <td colspan="3"><hr /></td>
      </tr>
      <tr>
        <td colspan="3" style="height: 18px"><strong>请选择群族的隐私类型：</strong></td>
      </tr>
      <tr>
        <td align="center" valign="middle" style="width: 253px">
          <div style="background-color:#D4D0C8; width: 206px; height: 110px;"><br/>
          &nbsp; &nbsp; &nbsp; <strong>公开</strong>，允许任何人加入&nbsp;<br />
          <a href="CreatGS.aspx?IsPublic=0">创建>></a>
            <br />
            <br />
            
          </div>
          <ul>
            任何人都能看群族里的内容，任何人都能自由加入，适合于公开的话题讨论。
          </ul></td>
        <td align="center" valign="middle" style="width: 314px">
          <div style="background-color: #D4D0C8; width: 225px; height: 110px;"><br/>
            &nbsp; &nbsp; &nbsp; <strong>公开</strong>，需经我批准才能加入<br />
            <a href="CreatGS.aspx?IsPublic=1">创建>></a>
            <br />
            <br />
             <br />
          </div>
          <ul>
            任何人都能看群族里的，加入后才能发言，加入需经你批准，适合于建立一般的网络人际圈,如"同乡群族"。
          </ul></td>
        <td align="center" valign="middle" style="width:314px">
          <div style="background-color: #D4D0C8; width: 225px; height: 110px;"> <br />
            &nbsp; &nbsp; &nbsp; <img src="../Images/qun_sm.gif" alt="私密" /><strong>私密</strong> <br />
            <a href="CreatGS.aspx?IsPublic=2">创建>></a> <br />
          </div>
          <ul>
            非群族成员不能进入本群族，本群不会被搜索出来，适合于建立纯属你与好友的私密人际圈。
          </ul></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>