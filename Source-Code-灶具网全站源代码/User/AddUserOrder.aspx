<%@ page language="C#" autoeventwireup="true" inherits="User_AddUserOrder, App_Web_d1ldudxt" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div runat="server" id="Login" class="us_seta"   style="position:absolute;top:40%;left:40%" visible="false">
    <table ><tr><td colspan="2"><font color="red">本页需支付密码才能登入请输入支付密码</font> </td></tr>
    <tr><td><asp:TextBox ID="Second" runat="server" TextMode="Password"></asp:TextBox></td><td>
            <asp:Button ID="sure" runat="server" Text="确定" onclick="sure_Click" /></td></tr></table>
    </div>
    <div runat="server" id="DV_show">
    <table cellspacing="10" cellpadding="5" width="100%" border="0">
        <tr><td colspan="2"><b style="color:Red">添加账单</b></td></tr>
        <tr>
            <td align="right">购物会员名：</td>
            <td>
            <asp:TextBox ID="TextBox1" AutoPostBack="True" ontextchanged="TextBox2_TextChanged" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''" onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'" Style="float: left; " width="140"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="请输入用户名" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">真实姓名：</td>
            <td>
                <asp:TextBox ID="TextBox2" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''" onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'" Style="float: left; " width="140"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">购物金额：</td>
            <td>
              <asp:TextBox ID="TextBox3" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''" onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};"  onmousemove="this.className='input_move'" onmouseout="this.className='input_out'" Style="float: left; " width="100" ></asp:TextBox>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="金额只能填数字" ValidationExpression="^\+?[1-9][0-9]*$"></asp:RegularExpressionValidator>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="请输入金额" SetFocusOnError="True"></asp:RequiredFieldValidator>
              
            </td>
        </tr>
        <tr>
            <td align="right">积分赠送：</td>
            <td><asp:TextBox ID="TextBox7" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''"  onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'" Style="float: left; " width="100" AutoPostBack="True" ontextchanged="TextBox4_TextChanged"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator3" ControlToValidate="TextBox7" ErrorMessage="积分赠送只能是数字" ValidationExpression="^\+?[1-9][0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right">应付佣金：</td>
            <td><asp:TextBox ID="TextBox4" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''" onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'" Style="float: left; " width="100" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right">商品名称：</td>
            <td><asp:TextBox ID="TextBox5" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''" onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};"  onmousemove="this.className='input_move'" onmouseout="this.className='input_out'" Style="float: left; " width="140px" Height="72px" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right">商品数量：</td>
            <td><asp:TextBox ID="TextBox6" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''" onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'" Style="float: left; " width="140"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="数量只能为数字！" 
                    ValidationExpression="^\+?[1-9][0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="生成订单" CssClass="i_bottom"  onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>