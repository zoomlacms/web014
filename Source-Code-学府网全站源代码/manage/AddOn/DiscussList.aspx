﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_DiscussList, App_Web_tbdzstjd" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>讨论管理</title>
 <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;<asp:HyperLink ID="HLpro"  NavigateUrl="WorkManage.aspx?Pid=1" runat="server">项目节点</asp:HyperLink>&gt;&gt;节点讨论</div> 
 <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
    <tr align="center">
        <td colspan="2" class="spacingtitle">
            <asp:Label ID="Label1" runat="server" Text="项目内容讨论列表" Font-Bold="True"></asp:Label></td>
    </tr>        
    </table>
                                 
                                     
<asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" 
       DataKeyNames="DiscussID" ShowHeader="false" PageSize="5" OnPageIndexChanging="Egv_PageIndexChanging" Width="100%" OnRowCommand="GridView1_RowCommand" EmptyDataText="无相关讨论内容">
        <Columns>
            <asp:TemplateField HeaderText="选择" ItemStyle-HorizontalAlign="Center">
                  <ItemTemplate>
                      <asp:CheckBox ID="chkSel" runat="server" />
                  </ItemTemplate>               
                  <ItemStyle CssClass="tdbg" HorizontalAlign="Center" Width="5%"/>
            </asp:TemplateField> 
            <asp:BoundField DataField="DiscussID" HeaderText="ID" ItemStyle-HorizontalAlign="Center">
                     <ItemStyle CssClass="tdbg" HorizontalAlign="Center" Width="5%" />
            </asp:BoundField>
            
           <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>  
                    <%#DataBinder.Eval(Container.DataItem, "DiscussDate").ToString()%> 
                    <br />
                   <%#DataBinder.Eval(Container.DataItem, "Content").ToString()%> 
                </ItemTemplate>
                
                <ItemStyle CssClass="tdbg" HorizontalAlign="Left" />
            </asp:TemplateField>
                                       
            <asp:TemplateField HeaderText="操作"  ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>                        
                    <asp:LinkButton ID="LnkDelete"  runat="server" CommandName="DeleteDiscuss" OnClientClick="if(!this.disabled) return confirm('确实要删除吗？');"
                        CommandArgument='<%# Eval("DiscussID")%>'>删除</asp:LinkButton>  
                  </ItemTemplate>
                  
                  <ItemStyle CssClass="tdbg" HorizontalAlign="Center"  Width="10%"/>                    
            </asp:TemplateField>
        　</Columns>
         <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
      <div class="clearbox"></div>                    
    <asp:CheckBox ID="cbAll" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="cbAll_CheckedChanged"  Text="全选" />      
    <asp:Button ID="btnDel" runat="server" Text="批量删除" OnClick="btnDel_Click" class="C_input" OnClientClick="return confirm('确实要删除吗？');"/>
   <div class="clearbox"></div>
   
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
    <tr align="center">
        <td colspan="2" class="spacingtitle">
            <asp:Label ID="Label2" runat="server" Text="发布讨论" Font-Bold="True"></asp:Label></td>
    </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 105px">
            <strong>用户名：&nbsp;</strong></td>
        <td class="tdbg" align="left">
            <asp:TextBox ID="TxtUserName" runat="server" ReadOnly="true" class="l_input"></asp:TextBox></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 105px">
            <strong>讨论内容：&nbsp;</strong></td>
        <td class="tdbg" align="left">
            <asp:TextBox ID="TxtDisContent" runat="server" TextMode="MultiLine" Rows="8" 
                Columns="50" class="l_input" Height="105px" Width="334px"></asp:TextBox>
            </td>
    </tr>      
    <tr class="tdbgbottom">
        <td colspan="2">              
            <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" runat="server" class="C_input"/>&nbsp;&nbsp;
            <input name="Cancel" type="button" id="Cancel" value="取消" onclick="javascript:window.location.href='ProjectManage.aspx'" class="C_input"/>
        </td>
    </tr>
</table>
</form>
</body>
</html>