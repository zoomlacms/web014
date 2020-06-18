﻿<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="User_Usertalk_SelectFrient, App_Web_1z0lcyur" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>查找好友</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />    
<script type="text/javascript" src="../../JS/Jquery.js"></script>
<script type="text/javascript">
	function cl() { window.close(); }
</script>
</head>
<body>
  <form id="form1" runat="server">
    <div id="TopDiv" runat="server">    
	    <table style="width: 299px; margin-top:30px;" class="border" align="center">
            <tr align="center" class="tdbg">
                <td><span>查找好友</span></td>
            </tr>
           <tr class="tdbg">
              <td class="style1">
                <asp:RadioButtonList ID="ProClass" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="ProClass_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem Value="2" Selected="True">按ID查找</asp:ListItem>
                    <asp:ListItem Value="3">按昵称查找</asp:ListItem>
               </asp:RadioButtonList>
              </td>
           </tr>           
           <tr class="tdbg">
              <td class="style1">
                 <div id="Div2" runat="server">按ID查询&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox runat="server" CssClass="l_input" ID="SelectID"/>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server"
                                    ControlToValidate="SelectID" ErrorMessage="ID必须是数字!" ValidationExpression="^-?\d+$"></asp:RegularExpressionValidator></div>
              </td>
           </tr>
           <tr class="tdbg">
              <td class="style1">
                 <div id="Div3" runat="server">按昵称查询&nbsp;&nbsp;&nbsp;<asp:TextBox runat="server" CssClass="l_input" ID="SelectName"/></div>
              </td>
           </tr>
          
           <tr align="center" class="tdbg">
       	        <td>
        		    <asp:Button Text="查找好友" CssClass="C_input" id="button1" runat="server"  onclick="button1_Click" />&nbsp;&nbsp;
                    <input class="C_input" type="button" value="关闭" id="button2" onclick="cl();"  />
                </td>
            </tr>
        </table>   
    </div> 
    <div id="Showdiv" runat="server">      
    <table border="0" cellpadding="2" cellspacing="1" class="border" width="100%" id="friendlist" align="center">
        <tr align="center" class="title">    
            <td style="width:5%">用户ID</td> 
            <td style="width:5%">头像</td>     
            <td style="width:5%">姓名</td>       
        </tr>
        <asp:Repeater ID="Repeater1" runat="server" >
            <ItemTemplate>               
                <tr class="tdbg" style=" cursor:pointer;" onclick="selectuser(<%#Eval("UserID") %>)" id='<%#Eval("UserID") %>' >   
                    <td height="22" align="center" ><%#Eval("UserID")%></td>
                    <td height="40" align="center"><img alt="头像" src='<%#GetFace(DataBinder.Eval(Container.DataItem,"UserID").ToString()) %>' /></td>                  
                    <td height="22" align="center">
                      <%#Eval("UserName")%>
                    </td>                   
                </tr>
            </ItemTemplate>
        </asp:Repeater> 
        <tr class="tdbg">
            <td height="22" colspan="3" align="center" class="tdbg"> 
             <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("UserID") %>'/>      
               共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />页次：
                        <asp:Label ID="Nowpage" runat="server" Text="" />/
                        <asp:Label ID="PageSize" runat="server" Text="" />页
                        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                            Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                        条数据/页 转到第
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator><br />
                        <asp:LinkButton ID="LinkButton1" runat="server" Text="返回上页面" onclick="Unnamed1_Click"></asp:LinkButton>
            </td>
        </tr>
        <tr   style="height:50px;line-height:50px;">
              <td class="style1" valign="middle" colspan="3">
             <asp:Button ID="Button4" Text="添加好友" runat="server" CssClass="C_input" onclick="Button4_Click" CausesValidation="false" />                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                 
                 <font style="margin-bottom:20px;">请选择用户组</font>&nbsp;<asp:DropDownList runat="server" CssClass="l_input" ID="AllGroup"/>
              </td>
           </tr>
    </table>    
    </div>
  </form> 
  <script type="text/javascript">
      $('#friendlist .tdbg').click(function () {
          $('.tdbg').removeClass("tdbgmouseover");
          $(this).addClass('tdbgmouseover');
          var nowid = $(this).attr('id');
      });
      function selectuser(uid) {
          //document.getElementById("HiddenField1").value = uid.toString();
          $('#HiddenField1').val(uid);
      }
  </script>  
</body>
</html>
