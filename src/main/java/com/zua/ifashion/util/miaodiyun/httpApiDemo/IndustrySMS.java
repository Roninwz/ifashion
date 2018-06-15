package com.zua.ifashion.util.miaodiyun.httpApiDemo;

import com.zua.ifashion.util.miaodiyun.httpApiDemo.common.Config;
import com.zua.ifashion.util.miaodiyun.httpApiDemo.common.HttpUtil;

import java.net.URLEncoder;



/**
 * 验证码通知短信接口
 * 
 * @ClassName: IndustrySMS
 * @Description: 验证码通知短信接口
 *
 */
public class IndustrySMS
{
	private static String operation = "/industrySMS/sendSMS";

	private static String accountSid = Config.ACCOUNT_SID;
	//private static String to = "18638697525";
	static String minumn="20";
	//static String code="123456";
	//private static String smsContent = "【iFashion】尊敬的用户，您的验证码为"+code+"，请于30分钟内正确输入，如非本人操作，请忽略此短信。";

	/**
	 * 验证码通知短信
	 */
	public static void execute(String to,String code)
	{
		  String smsContent = "【iFashion】尊敬的用户，您的验证码为"+code+"，请于30分钟内正确输入，如非本人操作，请忽略此短信。";
		String tmpSmsContent = null;
	    try{
	      tmpSmsContent = URLEncoder.encode(smsContent, "UTF-8");
	    }catch(Exception e){
	      
	    }
	    String url = Config.BASE_URL + operation;
	    String body = "accountSid=" + accountSid + "&to=" + to + "&smsContent=" + tmpSmsContent
	        + HttpUtil.createCommonParam();

	    // 提交请求
	    String result = HttpUtil.post(url, body);
	    System.out.println("result:" + System.lineSeparator() + result);
	}
}
