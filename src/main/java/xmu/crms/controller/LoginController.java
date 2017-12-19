package xmu.crms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import xmu.crms.entity.User;
import xmu.crms.exception.UserNotFoundException;
import xmu.crms.service.LoginService;

import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import java.util.Map;

/**
 * 登录控制器。微信小程序登录与 Web 端账号密码登录
 * @author LuLongfei
 */
@RestController
public class LoginController {
    @Autowired
    private LoginService loginService;

    /**
     * HMAC SHA256 密钥，在 classpath:application.properties 中配置
     */
    @Value("${hmac.sha256.secret-key}")
    private String secret;

    @PostMapping("/login")
    public Object login(@RequestBody Map<String, String> map) throws UserNotFoundException {
        String code = map.get("code");
        String phone = map.get("phone");
        String password = map.get("password");
        User login;
        if (code != null) {
            login = loginService.signInWeChat(null, code, null, null);
        } else if (phone != null && password != null) {
            User user = new User();
            user.setPhone(phone);
            user.setPassword(password);
            login = loginService.signInPhone(user);
        } else {
            login = null;
        }
        return login;
    }

    @ExceptionHandler(UserNotFoundException.class)
    public Object userNotFount() {
        return null;
    }

    public String jwt(User user) {
        String signature;
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            SecretKey secretKey = new SecretKeySpec(secret.getBytes(), "HmacSHA256");
            mac.init(secretKey);
            signature = new String(mac.doFinal(user.getEmail().getBytes()));
        } catch (Exception e) {
            signature = null;
        }
        return signature;
    }
}
