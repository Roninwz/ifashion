package com.zua.ifashion.util.pay;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *绫诲悕锛欰lipayConfig
 *鍔熻兘锛氬熀纭閰嶇疆绫
 *璇︾粏锛氳缃笎鎴锋湁鍏充俊鎭強杩斿洖璺緞
 *淇敼鏃ユ湡锛2017-04-05
 *璇存槑锛
 *浠ヤ笅浠ｇ爜鍙槸涓轰簡鏂逛究鍟嗘埛娴嬭瘯鑰屾彁渚涚殑鏍蜂緥浠ｇ爜锛屽晢鎴峰彲浠ユ牴鎹嚜宸辩綉绔欑殑闇瑕侊紝鎸夌収鎶鏈枃妗ｇ紪鍐,骞堕潪涓瀹氳浣跨敤璇ヤ唬鐮併
 *璇ヤ唬鐮佷粎渚涘涔犲拰鐮旂┒鏀粯瀹濇帴鍙ｄ娇鐢紝鍙槸鎻愪緵涓涓弬鑰冦
 */

public class AlipayConfig {

//鈫撯啌鈫撯啌鈫撯啌鈫撯啌鈫撯啌璇峰湪杩欓噷閰嶇疆鎮ㄧ殑鍩烘湰淇℃伅鈫撯啌鈫撯啌鈫撯啌鈫撯啌鈫撯啌鈫撯啌鈫撯啌鈫

	// 搴旂敤ID,鎮ㄧ殑APPID锛屾敹娆捐处鍙锋棦鏄偍鐨凙PPID瀵瑰簲鏀粯瀹濊处鍙
	public static String app_id = "2016091400510367";

	// 鍟嗘埛绉侀挜锛屾偍鐨凱KCS8鏍煎紡RSA2绉侀挜
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCM+G66KcE2Lcv9V73YT80PSPbuPx2VnK91fORNbNXB8ThsBA2LLi8gRA8DbTcIvV+NBjfS1QQ+Z9MNKHqmiKnv/Gt6Vut5U70lUVCPOaCMQLy3VZqCk5PWazdayYAGB/0s9AT8/Eu/Grr3tf5HzcNyjGDeCfZmnL1wTUGCFiHpmMY4m4Z7ilToygRS8CAn9NqCQn7IrJHJHT99faBlzPqr/9ofEXYrxssuxSVaYgs5J04kFg0EnhE+E06KRDeexpCwQ7eUs30t5iONk5TumqTgJAsazHQg1+jFOSCq4/S7Y8ItZTK0tIpRnYi7U349sl3hwCquq2t4KeDOjO48TGlXAgMBAAECggEAFUjBNxxszqhVf1fLEyjhVih3F/uxlNBGcZ+8vK/tCk5IbY6jGNuNQ/ripWrM/2XQUnOY5B1DecSlSfxNoG1L8y8SbzNGdFgfW84OMsHJqsNveuLS5Fox3RLtFakMylxUboAdbLEPIrh/eD0jOmYn11i4m223pUCPHbCcbm63ChTMm62hoYzXLicm+Nj4q4OlKVDxGtDaqKC9hIaqkzFaBaUMx3ALRQYOst8/kIbqegqXVKYBQgzMF7CzutfF9rmDwqcfO3r5wBDh9KqzFZXoWJ7OyK+1zvRBtJOzLrZIraIpUkQe3REXMMU+tGzuDAuI12babJa/FC9i5ojyDWDImQKBgQDEOF5OAZYoV7ZtJMCndYWqPAc+WxnIFVbWBUIDDLWK9lecuue5nJKhyD+TbkPF64XE1FrCr+CT/Bam/pFP3HwZ1CiJ8Y5uWD7nh5KPslBeDgx/BLTN8TirD5NNwMsrpdsNY68CWff4VWqd/c2CCTbfOgPVv+dbnv6CXSB/L7KahQKBgQC36wSoPLqxum/LO/NbtUxFLfyu4WA/j589ESfLWfkb9pE6nEHh4/NpgyMd+K3vl3Dp9jT+NxcAY3hcohc29w6B0zWYoHl/Pu88FjwDpmPW8B//LS7X3kemAKOhimlQV9+Bu2tJfzDh7qGBh2IqpTCtRw+rOqScTqqafkKISqUxKwKBgDFoWCagM6UY4PB+jpwb9Xo1/0TuP4GoDeN6E3MdIiFJgioOzgZorGtcNtXyr9IISfiT1/6ptozMrw+BjiljxUPjrgl973VNdxlpg7f3GFF2jCL3lmc81B4On/K2FvJ4or2uWgTnjo7TQzNhEvwpQc3Xl9ucpK7nTAKbXHFqGzjZAoGAdtyhtuUAt2pJY+yL2+Iwt6j/3Dn2DT4R6NKUiFzOnR7ePyXLgmTi5HcHFBCqwOR76gjfuMf7ypl+qUdsf25t5sOMqOZVf0I6NPgdszIu5jNsSmt2EbcrUQKqvfUJGQ6heWOZ8/cKrYmewWqwq+T0r5f0bXJJ/mbs5UniT9kGJ98CgYEAnlsIuiVCO+L9d9PsMNxQbihGAV14ie/OUVnA2lxihaE8xe0Cow0WDk88kXOZ7cRaqH6PZKWK/fycvDo9fRZAPjzP1otx3lno/1+VCgi+ONZi2IYmbkSDxaO13ZQ2PnhnBWDc7s8/0K6Z2HSA7tXtEqBQnO6YxQTABbcit26qhD0=";
	// 鏀粯瀹濆叕閽,鏌ョ湅鍦板潃锛歨ttps://openhome.alipay.com/platform/keyManage.htm 瀵瑰簲APPID涓嬬殑鏀粯瀹濆叕閽ャ
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAn4HM17IjkfxAaqFZgIEb9vgk5Nc6XeL+A9YYBN5kOU0Koqgk7UQ8hwaejt9bDTEex28g+3aTZZrcXRLmd/OekKeUPSZ5K9xMBXhW5iK6cB741EckMS9trzVVbtMVVFUsx351aW3V/7L7AP35WvVwqvdWlxte69+TztJhX7cCorWC6VfExVXouq8QgBtppPjfXP29oW6OCZCbKmskmLfUYwapXbXRL9K+8yZyx05kT4Xk16ixF4c8qniOBMWLMNmbEP9AXOwFEX+TpRgsm5Rh1VhREngk1vRDBemlvesv1tpkMOgMI6Rk5EDwYahe7fwqnX9Wt2OrUdlvEcj72AOJKwIDAQAB";

	// 鏈嶅姟鍣ㄥ紓姝ラ氱煡椤甸潰璺緞  闇http://鏍煎紡鐨勫畬鏁磋矾寰勶紝涓嶈兘鍔?id=123杩欑被鑷畾涔夊弬鏁帮紝蹇呴』澶栫綉鍙互姝ｅ父璁块棶
	/*public static String notify_url = "http://localhost:8088/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";
*/
	// 椤甸潰璺宠浆鍚屾閫氱煡椤甸潰璺緞 闇http://鏍煎紡鐨勫畬鏁磋矾寰勶紝涓嶈兘鍔?id=123杩欑被鑷畾涔夊弬鏁帮紝蹇呴』澶栫綉鍙互姝ｅ父璁块棶
	public static String return_url ="http://localhost:8081/ifashion/user/payreturn.action";

	// 绛惧悕鏂瑰紡
	public static String sign_type = "RSA2";

	// 瀛楃缂栫爜鏍煎紡
	public static String charset = "utf-8";

	// 鏀粯瀹濈綉鍏
//	public static String gatewayUrl = "https://openapi.alipay.com/gateway.do";
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

	// 鏀粯瀹濈綉鍏
	public static String log_path = "C:\\";


//鈫戔啈鈫戔啈鈫戔啈鈫戔啈鈫戔啈璇峰湪杩欓噷閰嶇疆鎮ㄧ殑鍩烘湰淇℃伅鈫戔啈鈫戔啈鈫戔啈鈫戔啈鈫戔啈鈫戔啈鈫戔啈鈫

    /**
     * 鍐欐棩蹇楋紝鏂逛究娴嬭瘯锛堢湅缃戠珯闇姹傦紝涔熷彲浠ユ敼鎴愭妸璁板綍瀛樺叆鏁版嵁搴擄級
     * @param sWord 瑕佸啓鍏ユ棩蹇楅噷鐨勬枃鏈唴瀹
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

