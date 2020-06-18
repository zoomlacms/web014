<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_OrderFreeSplit, App_Web_cbl2ckqe" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html >

<html>
<head id="Head1" runat="server">
<title>自由拆分</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<table width="100%" cellspacing="1" class="border" style="background-color: white;">
  <tr>
    
    <td width="5%" align="center" class="title" >选择</td>
    <td width="10%" align="center" class="title">图片</td>
    <td width="10%" align="center" class="title" >商品编号</td>
    <td width="13%" align="center" class="title">商品名称</td>
    <td width="6%" align="center" class="title">单位</td>
    <td width="6%" align="center" class="title">数量</td>
    <td width="6%" align="center" class="title">市场价</td>
    <td width="6%" align="center" class="title">实价</td>
    <td width="6%" align="center" class="title">指定价</td>
    <td width="6%" align="center" class="title">金额</td>
    <td width="8%" align="center" class="title">服务期限</td>
    <td width="12%" align="center" class="title">备注</td>
  </tr>
  <asp:Repeater ID="procart" runat="server" >
                <ItemTemplate>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                        <%#(Eval("Bindpro","{0}")=="")?"":"style=background-color:#E6E6E6"%>>
                        <td align="center"><input name="Item" type="checkbox" value='<%# Eval("ProID")%>' /></td>
                        <td style="height: 24;" align="center">
                            <%#getproimg(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%>
                        </td>
                        <td style="width: 6%;" align="center">
                            <%#Eval("ProCode")%>
                        </td>
                        <td align="center">
                            <a href='ShowProduct.aspx?menu=edit&ModelID=<%#(Eval("ModelID"))%>&NodeID=<%#(Eval("NodeID"))%>&id=<%#(Eval("ID"))%>' target='_blank'>
                                <%#Eval("proname")%></a>
                        </td>
                        <td align="center">
                            <%#Eval("Attribute")%>
                        </td>
                        <!--商品属性 -->
                        <td align="center">
                            <%#getjiage(Eval("proclass","{0}"),"1", DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%>
                        </td>
                        <td align="center">
                            <%#shijia(Eval("proclass", "{0}"), Eval("ProID", "{0}"), DataBinder.Eval(Container, "DataItem.Shijia", "{0}"))%>
                        </td>
                        <td align="center">
                            <%#Eval("pronum") %>
                        </td>
                        <td align="center">
                            <%#Eval("Danwei") %>
                        </td>
                        <td align="center">
                            <%#getprojia(Eval("ProID", "{0}"), DataBinder.Eval(Container, "DataItem.ID", "{0}"))%>
                        </td>
                        <td align="center">
                            <%#qixian(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%>
                        </td>
                        <td align="center">
                            <%#beizhu(DataBinder.Eval(Container, "DataItem.ProID", "{0}"))%>
                        </td>
                    </tr>
         <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                                style="background-color: #F6F6F6;">
                                <td height="24" align="center">
                                    <%#getproimg(Eval("id","{0}"))%>+++
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
                                    <%#getjiage(Eval("proclass", "{0}"), "1", DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                                </td>
                                <td width="6%" align="center">
                                    <%#getjiage(Eval("proclass", "{0}"), "2", DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                                </td>
                                <td width="6%" align="center">
                                    -
                                </td>
                                <td width="6%" align="center">
                                    -
                                </td>
                                <td width="8%" align="center">
                                    -
                                </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </ItemTemplate>
  </asp:Repeater>
</table>
<div>是否保存原订单：<asp:RadioButton ID="CB_Yes" runat="server" GroupName="oldorder"  Text="是"  />
    <asp:RadioButton ID="CB_No" runat="server" GroupName="oldorder" Text="否" Checked="True"/>
</div>
  <asp:Button Text="确定" ID="confirm" CssClass="C_input" runat="server" 
    onclick="confirm_Click" />
</form>
</body>
</html>
