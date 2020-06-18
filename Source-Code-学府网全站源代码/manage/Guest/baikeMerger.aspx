<%@ page language="C#" autoeventwireup="true" inherits="manage_Guest_baikeMerger, App_Web_wxbncm4g" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html >

<html >
<head runat="server">
    <title>合并词条</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
    <span>后台管理</span>&gt;&gt;<span> 百科管理 </span>&gt;&gt; <a href="BkCheck.aspx">百科词条管理</a>&gt;&gt;<span> 合并词条</span>&nbsp;
    </div>
    <div>
    <table style="width: 100%;" cellpadding="2" cellspacing="1" class="border">
    <tr class="tdbg">
                <td class="tdbgleft" align="right" style="width: 150px"><strong>词条：</strong></td>
                <td align="left"><asp:Label runat="server" ID="L_Name" Width="144px"></asp:Label>&nbsp;&nbsp;
                    <asp:RadioButton runat="server" ID="changeke" GroupName="baike1" 
                        Text="设为标准词条" /></td>
              </tr>
    <tr class="tdbg">
                <td class="tdbgleft" align="right" style="width: 150px"><strong>请输入要合并的词条：</strong></td>
                <td align="left"><asp:TextBox runat="server" ID="Baike"></asp:TextBox>
                    <asp:RadioButton runat="server" ID="changebai" Text="设为标准词条" 
                        GroupName="baike1" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Baike"  ErrorMessage="词条不能为空"></asp:RequiredFieldValidator></td>
              </tr>
              <tr class="tdbg">
                <td  colspan="2">设置标准词条后,合并后的两词条都只显示标准词条内容</td>
              </tr>
               <%--<tr class="tdbg">
                <td class="tdbgleft" align="right" style="width: 150px"><strong>设置标准词条：</strong></td>
                <td align="left"><asp:TextBox runat="server" ID="StandCode"></asp:TextBox>合并后的两词条都显示标准词条内容</td>
              </tr>--%>
              <tr class="tdbg">
              <td  colspan="2" align="center" height="28px">
               <asp:Button ID="Button1" class="C_input" runat="server" 
                      Style="cursor: pointer; cursor: hand;" Text="保存" onclick="Button1_Click" />
                  <input id="Button2" type="button" class="C_input" value="取　消" onclick="window.location.href='BkCheck.aspx'" style="cursor: pointer; cursor: hand;" />
              </td>
              </tr>
      </table>
    </div>
    </form>
</body>
</html>
