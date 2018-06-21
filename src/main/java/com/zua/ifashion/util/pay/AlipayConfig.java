package  com.zua.ifashion.util.pay;
import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016091400510367";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCM+G66KcE2Lcv9V73YT80PSPbuPx2VnK91fORNbNXB8ThsBA2LLi8gRA8DbTcIvV+NBjfS1QQ+Z9MNKHqmiKnv/Gt6Vut5U70lUVCPOaCMQLy3VZqCk5PWazdayYAGB/0s9AT8/Eu/Grr3tf5HzcNyjGDeCfZmnL1wTUGCFiHpmMY4m4Z7ilToygRS8CAn9NqCQn7IrJHJHT99faBlzPqr/9ofEXYrxssuxSVaYgs5J04kFg0EnhE+E06KRDeexpCwQ7eUs30t5iONk5TumqTgJAsazHQg1+jFOSCq4/S7Y8ItZTK0tIpRnYi7U349sl3hwCquq2t4KeDOjO48TGlXAgMBAAECggEAFUjBNxxszqhVf1fLEyjhVih3F/uxlNBGcZ+8vK/tCk5IbY6jGNuNQ/ripWrM/2XQUnOY5B1DecSlSfxNoG1L8y8SbzNGdFgfW84OMsHJqsNveuLS5Fox3RLtFakMylxUboAdbLEPIrh/eD0jOmYn11i4m223pUCPHbCcbm63ChTMm62hoYzXLicm+Nj4q4OlKVDxGtDaqKC9hIaqkzFaBaUMx3ALRQYOst8/kIbqegqXVKYBQgzMF7CzutfF9rmDwqcfO3r5wBDh9KqzFZXoWJ7OyK+1zvRBtJOzLrZIraIpUkQe3REXMMU+tGzuDAuI12babJa/FC9i5ojyDWDImQKBgQDEOF5OAZYoV7ZtJMCndYWqPAc+WxnIFVbWBUIDDLWK9lecuue5nJKhyD+TbkPF64XE1FrCr+CT/Bam/pFP3HwZ1CiJ8Y5uWD7nh5KPslBeDgx/BLTN8TirD5NNwMsrpdsNY68CWff4VWqd/c2CCTbfOgPVv+dbnv6CXSB/L7KahQKBgQC36wSoPLqxum/LO/NbtUxFLfyu4WA/j589ESfLWfkb9pE6nEHh4/NpgyMd+K3vl3Dp9jT+NxcAY3hcohc29w6B0zWYoHl/Pu88FjwDpmPW8B//LS7X3kemAKOhimlQV9+Bu2tJfzDh7qGBh2IqpTCtRw+rOqScTqqafkKISqUxKwKBgDFoWCagM6UY4PB+jpwb9Xo1/0TuP4GoDeN6E3MdIiFJgioOzgZorGtcNtXyr9IISfiT1/6ptozMrw+BjiljxUPjrgl973VNdxlpg7f3GFF2jCL3lmc81B4On/K2FvJ4or2uWgTnjo7TQzNhEvwpQc3Xl9ucpK7nTAKbXHFqGzjZAoGAdtyhtuUAt2pJY+yL2+Iwt6j/3Dn2DT4R6NKUiFzOnR7ePyXLgmTi5HcHFBCqwOR76gjfuMf7ypl+qUdsf25t5sOMqOZVf0I6NPgdszIu5jNsSmt2EbcrUQKqvfUJGQ6heWOZ8/cKrYmewWqwq+T0r5f0bXJJ/mbs5UniT9kGJ98CgYEAnlsIuiVCO+L9d9PsMNxQbihGAV14ie/OUVnA2lxihaE8xe0Cow0WDk88kXOZ7cRaqH6PZKWK/fycvDo9fRZAPjzP1otx3lno/1+VCgi+ONZi2IYmbkSDxaO13ZQ2PnhnBWDc7s8/0K6Z2HSA7tXtEqBQnO6YxQTABbcit26qhD0=";
    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAn4HM17IjkfxAaqFZgIEb9vgk5Nc6XeL+A9YYBN5kOU0Koqgk7UQ8hwaejt9bDTEex28g+3aTZZrcXRLmd/OekKeUPSZ5K9xMBXhW5iK6cB741EckMS9trzVVbtMVVFUsx351aW3V/7L7AP35WvVwqvdWlxte69+TztJhX7cCorWC6VfExVXouq8QgBtppPjfXP29oW6OCZCbKmskmLfUYwapXbXRL9K+8yZyx05kT4Xk16ixF4c8qniOBMWLMNmbEP9AXOwFEX+TpRgsm5Rh1VhREngk1vRDBemlvesv1tpkMOgMI6Rk5EDwYahe7fwqnX9Wt2OrUdlvEcj72AOJKwIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost:8088/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://localhost:8088/alipay.trade.page.pay-JAVA-UTF-8/test.jsp";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
//	public static String gatewayUrl = "https://openapi.alipay.com/gateway.do";
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

