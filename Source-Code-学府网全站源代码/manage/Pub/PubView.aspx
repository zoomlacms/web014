<%@ page language="C#" autoeventwireup="true" inherits="manage_Pub_PubView, App_Web_h30mnkjx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<html>
<head runat="server">
    <title>查看信息</title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="r_navigation"> 后台管理  &gt;&gt;&nbsp; <a href="pubmanage.aspx">互动管理</a> &gt;&gt;&nbsp; <a href="Pubsinfo.aspx?Pubid=<%=Request.QueryString["Pubid"] %>&type=0">互动信息管理</a> &gt;&gt;&nbsp; 互动信息
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:HiddenField ID="HiddenType" runat="server" />
       
    </div>
     <table width="100%" border="0" cellpadding="0" cellspacing="1" id="bindset">
    <tr align="center">
      <td colspan="4" class="spacingtitle"><strong>查看<asp:Label ID="ptit" runat="server" Font-Bold="True"></asp:Label>信息</strong>
      </td>
    </tr>
     </table> 
    <div class="clearbox" > </div>
        <asp:DetailsView ID="DetailsView1" runat="server" Width="100%" 
                        CellPadding="4" GridLines="None" 
            Font-Size="12px" style="margin-bottom: 3px; margin-top:2px;" CssClass="r_navigation">
                        <Fields></Fields>
                        <FooterStyle Font-Bold="True"  BackColor="#FFFFFF" />
                        <CommandRowStyle Font-Bold="True" CssClass="tdlefttxt" />
                        <RowStyle/>
                        <FieldHeaderStyle Font-Bold="True"  CssClass="tdbg" />
                        <PagerStyle HorizontalAlign="Center" />
                        <HeaderStyle Font-Bold="True" />
                        <EditRowStyle />
                        <AlternatingRowStyle />
              </asp:DetailsView> 
 <asp:HiddenField ID="HiddenSmall" runat="server" />
                 <asp:HiddenField ID="HdnModelID" runat="server" />
                  <asp:HiddenField ID="HiddenID" runat="server" />
                    <asp:HiddenField ID="HiddenPubid" runat="server" />
   
    
    <div style="text-align:center;"> 
        <asp:Button ID="Button2" runat="server" class="C_input" onclick="Button2_Click" Text="回复" />
&nbsp;<asp:Button ID="Button1" runat="server" Text="返回"  class="C_input" onclick="Button1_Click" /></div>
    </form>
</body>
</html>
