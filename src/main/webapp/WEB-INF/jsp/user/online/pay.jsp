<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>����</title>
</head>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="GBK"%>
<%@ page import="com.zua.ifashion.util.pay.AlipayConfig "%>
<%@ page import="com.alipay.api.*"%>
<%@ page import="com.alipay.api.request.*"%>
<%@ page import="java.util.UUID" %>
<%
	//��ó�ʼ����AlipayClient
	AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
	
	//�����������
	AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();

	alipayRequest.setReturnUrl(AlipayConfig.return_url);
	/*alipayRequest.setNotifyUrl(AlipayConfig.notify_url);*/
	
	//�̻������ţ��̻���վ����ϵͳ��Ψһ�����ţ�����
	/*String out_trade_no = new String(request.getParameter("WIDout_trade_no").getBytes("ISO-8859-1"),"UTF-8");*/
	UUID uuid=UUID.randomUUID();
	String out_trade_no=uuid.toString();
	out_trade_no=out_trade_no.replace("-","");
	//���������
	/*String total_amount = new String(request.getParameter("WIDtotal_amount").getBytes("ISO-8859-1"),"UTF-8");*/

	String total_amount =new String("0.01");
	//�������ƣ�����
	/*String subject = new String(request.getParameter("WIDsubject").getBytes("ISO-8859-1"),"UTF-8");*/
	String subject = new String("����");
	//��Ʒ�������ɿ�
	/*String body = new String(request.getParameter("WIDbody").getBytes("ISO-8859-1"),"UTF-8");*/
	/*String body = new String(request.getParameter("introduce").getBytes("ISO-8859-1"),"UTF-8");*/
	alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
			+ "\"total_amount\":\""+ total_amount +"\","
			+ "\"subject\":\""+ subject +"\","
			+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
	
	//�����BizContent����������ѡ����������������Զ��峬ʱʱ�����timeout_express������˵��
	//alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
	//		+ "\"total_amount\":\""+ total_amount +"\"," 
	//		+ "\"subject\":\""+ subject +"\"," 
	//		+ "\"body\":\""+ body +"\"," 
	//		+ "\"timeout_express\":\"10m\"," 
	//		+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
	//��������ɲ��ġ�������վ֧����API�ĵ�-alipay.trade.page.pay-����������½�
	
	//����
	String result = alipayClient.pageExecute(alipayRequest).getBody();
	
	//���
	out.println(result);
%>
<body>
</body>
</html>