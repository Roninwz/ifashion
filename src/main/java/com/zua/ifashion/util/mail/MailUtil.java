/*
 *******************************************************************************
 * @FileName	MailUtil.java
 * @package		com.jy.utils
 * @author		jy·DT
 * @Date		2018年1月30日 上午2:38:40
 * @description 
 *******************************************************************************
 */
package com.zua.ifashion.util.mail;

import javax.mail.*;
import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;

/**
 * 邮箱工具
 ******************************************
 * @author jy·DT  [2018年1月30日 上午2:38:40]
 ******************************************
 */
public class MailUtil {
	public static final String HOST = "smtp.163.com";
	public static final String PROTOCOL = "smtp";
	public static final String PORT = "25";
	public static final String FROM = "15138143273@163.com";//发件人的email
	public static final String PWD = "roninwz123";//发件人密码

	public static void sendMail(String to,String code) throws Exception{
	/*	// 1.创建连接对象
		Session session = Session.getDefaultInstance(new Properties(), new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("service@dt.com", "123456");
			}
		});*/

		 Properties props = new Properties();
	        props.put("mail.smtp.host", HOST);//设置服务器地址
	        props.put("mail.store.protocol" , PROTOCOL);//设置协议
	        props.put("mail.smtp.port", PORT);//设置端口
	        props.put("mail.smtp.auth" , "true");
	 
	        Authenticator authenticator = new Authenticator() {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(FROM, PWD);
	            }
	 
	        };// 使用验证，创建一个Authenticator
	        Session session = Session.getDefaultInstance(props , authenticator);
		/*// 2.创建邮件对象
		Message message = new MimeMessage(session);
		message.setFrom(new InternetAddress("service@dt.com"));
		message.setRecipient(RecipientType.TO, new InternetAddress(to));
		//主题
		message.setSubject("来自dt的激活邮件");*/
	        
	        Message msg = new MimeMessage(session);
	        
            //Set message attributes
            msg.setFrom(new InternetAddress(FROM));
            InternetAddress[] address = {new InternetAddress(to)};
            msg.setRecipients(RecipientType.TO, address);
            msg.setSubject("xxx账号激活邮件");
            msg.setSentDate(new Date());
		//正文
            msg.setContent("xxxxx<h1>来自dt的激活邮件，点击链接激活账号：</h1><h3><a href='localhost:8080/javamail01/active?code="+code+"'>localhost:8080/javamail01/active?code="+code+"</a></h3>", "text/html;charset=utf-8");
		// 3.发送激活邮件
		Transport.send(msg);
	}
}
