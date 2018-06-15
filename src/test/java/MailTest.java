import com.zua.ifashion.util.mail.MailUtil;
import org.junit.Test;

public class MailTest {

@Test
public void send() throws Exception {

    MailUtil.sendMail("1947914887@qq.com","123456");
    System.out.println("发送成功");
}

}
