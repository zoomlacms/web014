<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.advseach, App_Web_hffwpi2t" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>�߼�����</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
<style type="text/css">
.style2 { /*line-height: 120%;*/  
        width: 501px; height: 37px; }
.style4 { background: #e0f7e5; /*line-height: 120%;*/    padding: 0px; width: 4%; height: 293px; }
.style6 { background: #e0f7e5; /*line-height: 120%;*/    padding: 0px; width: 4%; height: 160px; /*line-height:50%;*/    padding: 0px; width: 24%; height: 10px; }
.style7 { margin-top: 0px; }
.style8 { background: #e0f7e5; /*line-height: 120%;*/    padding: 2px; width: 4%; }
.style9 { background: #e0f7e5; /*line-height: 120%;*/    padding: 0px; width: 4%; height: 160px; /*line-height:50%;*/ padding: 0px; width: 216px; height: 10px; }
.style10 { width: 216px; height: 37px; }
.style11 { width: 216px; height: 225px; }
.style14 { border-top: 1px solid transparent !important; margin-top: -1px !important; border-top: 0px; margin-top: 0px; height: 225px; clear: both; background: none; font-size: 0px; }
.style15 { color: #1e860b; font-weight: bold; line-height: 22px; letter-spacing: 8px; height: 27px; padding: 2px; background: #dbf9d9 url('../../App_Themes/AdminDefaultTheme/Images/title.gif') repeat-x 50% top; }
.style16 { width: 130px; height: 28px; }
.style17 { height: 28px; width: 131px; }
</style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="r_navigation">��̨���� &gt;&gt; <a href="ContentManage.aspx">���ݹ���</a> &gt;&gt;�߼�����</div>
      <div>
        <table width="100%" cellpadding="
            2" cellspacing="1" border="0" class="border" align="center">
          <tr align="center">
            <td colspan="2" class="style15" align="center"><b>�߼�����</b></td>
          </tr>
          <tr class="WebPart">
            <td class="style4" align="center"><table class="tdbgleft">
                <tr>
                <td align="left" class="style6"><b>ѡ��ڵ㣺</b></td>
              </tr>
                <tr>
                <td class="tdbgleft" align="center"><asp:ListBox ID="ListBox1" runat="server" Height="282px" Width="203px"   
                                    SelectionMode="Multiple" CssClass="style7">
                    <asp:ListItem Selected="True">&#160;&#160;����CMS&#160;&#160;</asp:ListItem>
                    <asp:ListItem >&#160;|����Ƶ��</asp:ListItem>
                    <asp:ListItem>|-����</asp:ListItem>
                    <asp:ListItem>|--�˶�/����/���� </asp:ListItem>
                    <asp:ListItem>|--- �Ϳ�</asp:ListItem>
                    <asp:ListItem>|---����</asp:ListItem>
                    <asp:ListItem>|---����</asp:ListItem>
                    <asp:ListItem>|---����</asp:ListItem>
                    <asp:ListItem>|---����</asp:ListItem>
                    <asp:ListItem>|---Kappa</asp:ListItem>
                    <asp:ListItem>|---�˶���װ </asp:ListItem>
                    <asp:ListItem>|---ר�����</asp:ListItem>
                    <asp:ListItem>|---08��</asp:ListItem>
                    <asp:ListItem>|--- ��Ҷ��</asp:ListItem>
                    <asp:ListItem>|-- ���п�/ţ�п�/���� </asp:ListItem>
                    <asp:ListItem>|---ֱͲ��</asp:ListItem>
                    <asp:ListItem>|---ţ�п�</asp:ListItem>
                    <asp:ListItem>|---���п�</asp:ListItem>
                    <asp:ListItem>|---��������</asp:ListItem>
                    <asp:ListItem>|---��װ��</asp:ListItem>
                    <asp:ListItem>|---�̿�</asp:ListItem>
                    <asp:ListItem>|---�¿���� </asp:ListItem>
                    <asp:ListItem>|---ck�ڿ�</asp:ListItem>
                    <asp:ListItem>|---����</asp:ListItem>
                    <asp:ListItem>|-- ��Ь/����Ь/ƤЬ </asp:ListItem>
                    <asp:ListItem>|---����Ь</asp:ListItem>
                    <asp:ListItem>|---�˶�Ь</asp:ListItem>
                    <asp:ListItem>|---����Ь</asp:ListItem>
                    <asp:ListItem>|---������Ь</asp:ListItem>
                    <asp:ListItem>|---ƤЬ</asp:ListItem>
                    <asp:ListItem>|---��ѥ</asp:ListItem>
                    <asp:ListItem>|---����Ь </asp:ListItem>
                    <asp:ListItem>|---����ѥ</asp:ListItem>
                    <asp:ListItem>|---��Ь</asp:ListItem>
                    <asp:ListItem>|-- ��Ů���/������� </asp:ListItem>
                    <asp:ListItem>|---б���</asp:ListItem>
                    <asp:ListItem>|---�����</asp:ListItem>
                    <asp:ListItem>|---���а�</asp:ListItem>
                    <asp:ListItem>|---�����</asp:ListItem>
                    <asp:ListItem>|---������</asp:ListItem>
                    <asp:ListItem>|---�೵����</asp:ListItem>
                    <asp:ListItem>|---Ƥ��</asp:ListItem>
                    <asp:ListItem>|---�۾�</asp:ListItem>
                    <asp:ListItem>|---��Ʒ</asp:ListItem>
                    <asp:ListItem>|---���ñ</asp:ListItem>
                    <asp:ListItem>|-Ů��</asp:ListItem>
                    <asp:ListItem>|--ŮЬ</asp:ListItem>
                    <asp:ListItem>|-���� </asp:ListItem>
                    <asp:ListItem>|-���� </asp:ListItem>
                    <asp:ListItem>|-ʱ��</asp:ListItem>
                    <asp:ListItem>|-�Ӽ�</asp:ListItem>
                    <asp:ListItem>|-ĸӤ</asp:ListItem>
                    <asp:ListItem>|-�ֻ�����</asp:ListItem>
                    <asp:ListItem>|-�˶�</asp:ListItem>
                    <asp:ListItem>|-��Ʊ/�Ƶ�</asp:ListItem>
                    <asp:ListItem>|����</asp:ListItem>
                    <asp:ListItem>|��������</asp:ListItem>
                    <asp:ListItem>|��Ƶ����</asp:ListItem>
                    <asp:ListItem>|��������</asp:ListItem>
                    <asp:ListItem>&#160;|��������&#160;</asp:ListItem>
                  </asp:ListBox></td>
              </tr>
              </table></td>
            <td class="style4"><table class="tdbgleft">
                <tr>
                <td align="left" class="style9"><b>ѡ��ģ�ͣ�</b></td>
              </tr>
                <tr>
                <td class="style10"><asp:DropDownList ID="DbTableDownList" runat="server" Width="225px" 
                                    AutoPostBack="True" 
                                    OnSelectedIndexChanged="DBTableDownList_SelectedIndexChanged" 
                                    Height="28px" > </asp:DropDownList></td>
                <td align="center" class="style2" runat="server" id="cc1"></td>
              </tr>
                <tr>
                <td align="left" class="style9"><b>ѡ���ѯ�ֶΣ�</b></td>
              </tr>
                <tr class="clearbox" lang="bla" style="border: 4% groove #FFFFFF; padding: 26px; position: static; z-index: inherit; width: 8px; list-style-image: none; table-layout: inherit">
                <td class="style11"><asp:ListBox ID="DbFieldDownList" runat="server" Height="217px" Width="227px"  SelectionMode="Multiple" AutoPostBack="True" /></td>
                <td class="style14"   20px" align="left" id ="searchValueList" colspan="-1"  ><br/>
                    &nbsp;<br/>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <table id="tb" cellpadding="-1" border="2" cellspacing="-1" class="border" 
                                      style="border-style: dotted; border-width: 2px" >
                  </table>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
              </tr>
              </table></td>
          </tr>
          <tr class="WebPart">
            <td height="22" align="left" class="style8"><span style="color:Red;">* </span></td>
            <td height="22"  align="left" class="tdbgleft" style="width: 24%" ><input name="button" type="button" class="C_input"  style="width:130px;"  onclick='additem("tb")' value="���Ӳ�ѯ�ֶ� ==��" class="style17"/></td>
          </tr>
          <tr>
            <td height="22" align="center" colspan="2" class="tdbgleft" style="line-height: 25px;"><asp:HiddenField ID="HiddenField2" runat="server"  />
              &nbsp;&nbsp;
              <input type="submit" name="submit" class="C_input"  style="width:130px;"  onclick="getsub()" value="�� ʼ �� ѯ" class="style16"/></td>
          </tr>
        </table>
      </div>
    </form>
</body>
    <script language="javascript" type="text/javascript">
var count=0 ;
function additem(id)
{
  var row,cell,str;
  
  row = document.getElementById(id).insertRow();
  
  if(row != null )
  {
cell = row.insertCell();
cell.innerHTML="<input id=\"St"+count+"\" type=\"text\" name=\"St"+count+"\" value= \"��ѯֵ��"+count+"\"><input type=\"button\" value=\"ɾ��\" onclick=\'deleteitem(this);\'>";
count ++;
  }
}
function deleteitem(obj)
{
  var curRow = obj.parentNode.parentNode;
  tb.deleteRow(curRow.rowIndex);
}
function getsub()
{
var re="";
for (var  i = 0 ;i<count;i++)
{
re += document.getElementsByName("St"+i)[0].value;
}
document.getElementById("Hidden1").value=re;
}
</script>
</html>