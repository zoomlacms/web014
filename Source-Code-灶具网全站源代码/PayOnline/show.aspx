<script Language="C#" runat="server">
/**
 * @Description: ��Ǯ�����֧�����ؽӿڷ���
 * @Copyright (c) �Ϻ���Ǯ��Ϣ�������޹�˾
 * @version 2.0
 */

/*
�ڱ��ļ��У��̼�Ӧ�����ݿ��У���ѯ��������״̬��Ϣ�Լ������Ĵ�����������֧������Ӧ����ʾ��

������������򵥵�ģʽ��ֱ�Ӵ�receiveҳ���ȡ֧��״̬��ʾ���û���
'*/
void Page_Load(Object sender, EventArgs E)
{
    //�������������ʾ
    Lab_orderId.Text=Request["orderId"].ToString().Trim();
    Lab_orderAmount.Text=Request["orderAmount"].ToString().Trim();
    Lab_msg.Text=Request["msg"].ToString().Trim();
}
    
</script>
<!DOCTYPE HTML>
<html>
<head>
<title>��Ǯ֧�����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" >
</head>
<BODY>
<div align="center">
	<table width="259" border="0" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC" >
		<tr bgcolor="#FFFFFF">
			<td style="height: 21px; width: 96px;">֧����ʽ��</td>
			<td style="height: 21px" >��Ǯ[99bill] </td>
		</tr>
		<tr bgcolor="#FFFFFF">
			<td style="width: 96px" >������ţ�</td>
			<td ><asp:label id="Lab_orderId" RunAt="Server"/></td>
		</tr>
		<tr bgcolor="#FFFFFF">
			<td style="width: 96px">������</td>
			<td><asp:label id="Lab_orderAmount" RunAt="Server"/>��</td>
		</tr>
		<tr bgcolor="#FFFFFF">
			<td style="width: 96px">֧�������</td>
			<td><asp:label id="Lab_msg" RunAt="Server"/></td>
		</tr>
		<tr>
			<td style="width: 96px"></td>
			<td></td>
		</tr>
  </table>
</div>
</BODY>
</HTML>