<script Language="C#" runat="server">
/**
 * @Description: ��Ǯ�����֧�����ؽӿڷ���
 * @Copyright (c) �Ϻ���Ǯ��Ϣ�������޹�˾
 * @version 2.0
 */

void Page_Load(Object sender, EventArgs E){  

//����������˻���
///���¼��Ǯϵͳ��ȡ�û���ţ��û���ź��01��Ϊ����������˻��š�
merchantAcctId.Value="1000300079901";

//�����������Կ
///���ִ�Сд.�����Ǯ��ϵ��ȡ
String key="1234567897654321";

//�ַ���.�̶�ѡ��ֵ����Ϊ�ա�
///ֻ��ѡ��1��2��3.
///1����UTF-8; 2����GBK; 3����gb2312
///Ĭ��ֵΪ1
inputCharset.Value="1";

//����֧�������ҳ���ַ.��[bgUrl]����ͬʱΪ�ա������Ǿ��Ե�ַ��
///���[bgUrl]Ϊ�գ���Ǯ��֧�����Post��[pageUrl]��Ӧ�ĵ�ַ��
///���[bgUrl]��Ϊ�գ�����[bgUrl]ҳ��ָ����<redirecturl>��ַ��Ϊ�գ���ת��<redirecturl>��Ӧ�ĵ�ַ
pageUrl.Value="";

//����������֧������ĺ�̨��ַ.��[pageUrl]����ͬʱΪ�ա������Ǿ��Ե�ַ��
///��Ǯͨ�����������ӵķ�ʽ�����׽�����͵�[bgUrl]��Ӧ��ҳ���ַ�����̻�������ɺ������<result>���Ϊ1��ҳ���ת��<redirecturl>��Ӧ�ĵ�ַ��
///�����Ǯδ���յ�<redirecturl>��Ӧ�ĵ�ַ����Ǯ����֧�����post��[pageUrl]��Ӧ��ҳ�档
bgUrl.Value="http://www.yoursite.com/receive.aspx";
	
//���ذ汾.�̶�ֵ
///��Ǯ����ݰ汾�������ö�Ӧ�Ľӿڴ������
///������汾�Ź̶�Ϊv2.0
version.Value="v2.0";

//��������.�̶�ѡ��ֵ��
///ֻ��ѡ��1��2��3
///1�������ģ�2����Ӣ��
///Ĭ��ֵΪ1
language.Value="1";

//ǩ������.�̶�ֵ
///1����MD5ǩ��
///��ǰ�汾�̶�Ϊ1
signType.Value="1";
   
//֧��������
///��Ϊ���Ļ�Ӣ���ַ�
payerName.Value="payerName";

//֧������ϵ��ʽ����.�̶�ѡ��ֵ
///ֻ��ѡ��1
///1����Email
payerContactType.Value="1";

//֧������ϵ��ʽ
///ֻ��ѡ��Email���ֻ���
payerContact.Value="";

//�̻�������
///����ĸ�����֡���[-][_]���
orderId.Value=DateTime.Now.ToString("yyyyMMddHHmmss");

//�������
///�Է�Ϊ��λ����������������
///�ȷ�2������0.02Ԫ
orderAmount.Value="2";
	
//�����ύʱ��
///14λ���֡���[4λ]��[2λ]��[2λ]ʱ[2λ]��[2λ]��[2λ]
///�磻20080101010101
orderTime.Value=DateTime.Now.ToString("yyyyMMddHHmmss");

//��Ʒ����
///��Ϊ���Ļ�Ӣ���ַ�
productName.Value="productName";

//��Ʒ����
///��Ϊ�գ��ǿ�ʱ����Ϊ����
productNum.Value="1";

//��Ʒ����
///��Ϊ�ַ���������
productId.Value="";

//��Ʒ����
productDesc.Value="";
	
//��չ�ֶ�1
///��֧��������ԭ�����ظ��̻�
ext1.Value="";

//��չ�ֶ�2
///��֧��������ԭ�����ظ��̻�
ext2.Value="";
	
//֧����ʽ.�̶�ѡ��ֵ
///ֻ��ѡ��00��10��11��12��13��14
///00�����֧��������֧��ҳ����ʾ��Ǯ֧�ֵĸ���֧����ʽ���Ƽ�ʹ�ã�10�����п�֧��������֧��ҳ��ֻ��ʾ���п�֧����.11���绰����֧��������֧��ҳ��ֻ��ʾ�绰֧����.12����Ǯ�˻�֧��������֧��ҳ��ֻ��ʾ��Ǯ�˻�֧����.13������֧��������֧��ҳ��ֻ��ʾ����֧����ʽ��.14��B2B֧��������֧��ҳ��ֻ��ʾB2B֧��������Ҫ���Ǯ���뿪ͨ����ʹ�ã�
payType.Value="00";

//���д���
///ʵ��ֱ����ת������ҳ��ȥ֧��,ֻ��payType=10ʱ�������ò���
///�������μ� �ӿ��ĵ����д����б�
bankId.Value="";

//ͬһ������ֹ�ظ��ύ��־
///�̶�ѡ��ֵ�� 1��0
///1����ͬһ������ֻ�����ύ1�Σ�0��ʾͬһ��������û��֧���ɹ���ǰ���¿��ظ��ύ��Ρ�Ĭ��Ϊ0����ʵ�ﹺ�ﳵ�������̻�����0�������Ʒ���̻�����1
redoFlag.Value="1";

//��Ǯ�ĺ��������˻���
///��δ�Ϳ�Ǯǩ���������Э�飬����Ҫ��д������
pid.Value="";


	//���ɼ���ǩ����
	///����ذ�������˳��͹�����ɼ��ܴ���
	String signMsgVal="";
	signMsgVal=appendParam(signMsgVal,"inputCharset",inputCharset.Value);
	signMsgVal=appendParam(signMsgVal,"pageUrl",pageUrl.Value);
	signMsgVal=appendParam(signMsgVal,"bgUrl",bgUrl.Value);
	signMsgVal=appendParam(signMsgVal,"version",version.Value);
	signMsgVal=appendParam(signMsgVal,"language",language.Value);
	signMsgVal=appendParam(signMsgVal,"signType",signType.Value);
	signMsgVal=appendParam(signMsgVal,"merchantAcctId",merchantAcctId.Value);
	signMsgVal=appendParam(signMsgVal,"payerName",payerName.Value);
	signMsgVal=appendParam(signMsgVal,"payerContactType",payerContactType.Value);
	signMsgVal=appendParam(signMsgVal,"payerContact",payerContact.Value);
	signMsgVal=appendParam(signMsgVal,"orderId",orderId.Value);
	signMsgVal=appendParam(signMsgVal,"orderAmount",orderAmount.Value);
	signMsgVal=appendParam(signMsgVal,"orderTime",orderTime.Value);
	signMsgVal=appendParam(signMsgVal,"productName",productName.Value);
	signMsgVal=appendParam(signMsgVal,"productNum",productNum.Value);
	signMsgVal=appendParam(signMsgVal,"productId",productId.Value);
	signMsgVal=appendParam(signMsgVal,"productDesc",productDesc.Value);
	signMsgVal=appendParam(signMsgVal,"ext1",ext1.Value);
	signMsgVal=appendParam(signMsgVal,"ext2",ext2.Value);
	signMsgVal=appendParam(signMsgVal,"payType",payType.Value);	
	signMsgVal=appendParam(signMsgVal,"bankId",bankId.Value);
	signMsgVal=appendParam(signMsgVal,"redoFlag",redoFlag.Value);
	signMsgVal=appendParam(signMsgVal,"pid",pid.Value);
	signMsgVal=appendParam(signMsgVal,"key",key);
signMsg.Value= FormsAuthentication.HashPasswordForStoringInConfigFile(signMsgVal,"MD5").ToUpper();


//?
Lab_orderId.Text=orderId.Value;
Lab_orderAmount.Text=orderAmount.Value;
Lab_payerName.Text=payerName.Value;
Lab_productName.Text=productName.Value;

}
   

	//���ܺ�����������ֵ��Ϊ�յĲ�������ַ���
	String appendParam(String returnStr,String paramId,String paramValue){

		if(returnStr!=""){
			
				if(paramValue!=""){
					
					returnStr+="&"+paramId+"="+paramValue;
				}
			
		}else{
			
			if(paramValue!=""){
				returnStr=paramId+"="+paramValue;
			}
		}
		
		return returnStr;
	}
	//���ܺ�����������ֵ��Ϊ�յĲ�������ַ���������
   
</script>

<!DOCTYPE HTML>
<html>
<head>
<title>ʹ�ÿ�Ǯ֧��</title>
<meta http-equiv="content-type" content="text/html; charset=gb2312" >
</head>
<BODY>
<div align="center">
	<table width="259" border="0" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC" >
		<tr bgcolor="#FFFFFF">
			<td width="80">֧����ʽ:</td>
			<td >��Ǯ[99bill]</td>
		</tr>
		<tr bgcolor="#FFFFFF">
			<td >�������:</td>
			<td ><asp:label id="Lab_orderId" RunAt="Server"/></td>
		</tr>
		<tr bgcolor="#FFFFFF">
			<td>�������:</td>
			<td><asp:label id="Lab_orderAmount" RunAt="Server"/></td>
		</tr>
		<tr bgcolor="#FFFFFF">
			<td>֧����:</td>
			<td><asp:label id="Lab_payerName" RunAt="Server"/></td>
		</tr>
		<tr bgcolor="#FFFFFF">
			<td>��Ʒ����:</td>
			<td><asp:label id="Lab_productName" RunAt="Server"/></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
		</tr>
  </table>
</div>

<div align="center" style="font-size=12px;font-weight: bold;color=red;">
	<form name="kqPay" method="post" action="https://www.99bill.com/gateway/recvMerchantInfoAction.htm"/>
		<input type="hidden" id="inputCharset"  runat="server"/>
		<input type="hidden" id="bgUrl"  runat="server"/>
		<input type="hidden" id="pageUrl"  runat="server"/>
		<input type="hidden" id="version"  runat="server"/>
		<input type="hidden" id="language"  runat="server"/>
		<input type="hidden" id="signType"  runat="server"/>
		<input type="hidden" id="signMsg"  runat="server"/>
		<input type="hidden" id="merchantAcctId"  runat="server"/>
		<input type="hidden" id="payerName"  runat="server"/>
		<input type="hidden" id="payerContactType"  runat="server"/>
		<input type="hidden" id="payerContact"  runat="server"/>
		<input type="hidden" id="orderId"  runat="server"/>
		<input type="hidden" id="orderAmount"  runat="server"/>
		<input type="hidden" id="orderTime"  runat="server"/>
		<input type="hidden" id="productName"  runat="server"/>
		<input type="hidden" id="productNum"  runat="server"/>
		<input type="hidden" id="productId"  runat="server"/>
		<input type="hidden" id="productDesc"  runat="server"/>
		<input type="hidden" id="ext1"  runat="server"/>
		<input type="hidden" id="ext2"  runat="server"/>
		<input type="hidden" id="payType"  runat="server"/>
		<input type="hidden" id="bankId"  runat="server"/>
		<input type="hidden" id="redoFlag"  runat="server"/>	
		<input type="hidden" id="pid"  runat="server"/>	
		<input type="submit" id="submit" value="�ύ">
	</form>		
</div>
</BODY>
</HTML>