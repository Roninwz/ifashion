package com.zua.ifashion.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;

import javax.mail.internet.MimeMessage;

public class MailTest {




    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext( "mail/mail.xml");
        JavaMailSenderImpl sender = (JavaMailSenderImpl)context.getBean("mailSender");
        //构建邮件
        MimeMessage message=sender.createMimeMessage();
        try {
            //使用MimeMessageHelper构建Mime类型邮件
            MimeMessageHelper helper= new MimeMessageHelper(message,true);
            helper.setFrom("roninwz@foxmail.com");
            helper.setTo("1597895998@qq.com");
            message.setSubject("Spring Mail Test");
            //第二个参数true表明信息类型是multipart类型
            helper.setText("<a href=\"http://www.magicalwolf.com\">你好</a>",true);
            sender.send(message);
        } catch (javax.mail.MessagingException e) {
            e.printStackTrace();
        }
    }


}
