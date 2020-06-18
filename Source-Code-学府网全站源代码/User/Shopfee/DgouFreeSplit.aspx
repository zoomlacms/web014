<%@ page language="C#" autoeventwireup="true" inherits="User_Shopfee_DgouFreeSplit, App_Web_kbu21hg2" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html >

<html >
<head id="Head1" runat="server">
<title>自由拆分</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody2">
            <tr class="tdbg">
            <td width="5%" align="center" class="title">选择</td>
               <td width="10%" align="center" class="title">
                    图片
                </td>
                <td width="27%" align="center" class="title">
                    商品名称
                </td>
                <td width="15%" align="center" class="title">
                     来源
                </td>
                <td width="10%" align="center" class="title">
                     单价
                </td>
                <td width="10%" align="center" class="title">
                    数量
                </td>
                <td width="15%" align="center" class="title">
                    备注
                </td>
               
            </tr>
            <asp:Repeater ID="procart" runat="server" >
                <ItemTemplate>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                        <%#(Eval("Bindpro","{0}")=="")?"":"style=background-color:#E6E6E6"%>>
                        <td width="5%" align="center"><input name="Item" type="checkbox" value='<%# Eval("ProID")%>' /></td>
                      <td height="24" align="center" width="10%">
                            <%#getproimg(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%>
                        </td>
                        <td width="27%" align="center">
                           <a href='http://<%#Eval("Procontent") %>' target='_blank'> <%#Getprotype(Eval("ProID","{0}"))%>
                            <%#Eval("proname")%>
                            </a>
                        </td>
                        <td width="15%" align="center">
                            <%#Eval("ProSeller") %>
                        </td>
                        <td width="10%" align="center">
                           <%#Eval("shijia") %>
                        </td>
                        <td width="10%" align="center">
                            <%#Eval("pronum") %> 
                        </td>
                        <td width="15%" align="center">
                           <%#Eval("Proinfo")%>
                        </td>
                        
                    </tr>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                                style="background-color: #F6F6F6;">
                                <td height="24" align="center">
                                    <%#getproimg(Eval("id","{0}"))%>
                                </td>
                                <td align="center">
                                    <%#Getprotype(DataBinder.Eval(Container, "DataItem.id", "{0}"))%><%#Eval("proname")%>
                                </td>
                                <td width="6%" align="center">
                                    <%#getProUnit(DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                                </td>
                                <td width="6%" align="center">
                                    1
                                </td>
                                <td width="6%" align="center">
                                    <%#getjiage("1", DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                                </td>
                                <td width="6%" align="center">
                                    <%#getjiage("2", DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                                </td>
                                <td align="center">
                                    -
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </ItemTemplate>
            </asp:Repeater>
            </tbody>
            </table>
<div>是否保存原订单：<asp:RadioButton ID="CB_Yes" runat="server" GroupName="oldorder"  Text="是"  />
    <asp:RadioButton ID="CB_No" runat="server" GroupName="oldorder" Text="否" Checked="True" />
</div>
  <asp:Button Text="确定" ID="confirm" CssClass="C_input" runat="server" 
    onclick="confirm_Click" />
    </form>
</body>
</html>
