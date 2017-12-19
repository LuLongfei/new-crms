package xmu.crms.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import xmu.crms.entity.User;
import xmu.crms.exception.UserNotFoundException;
import xmu.crms.service.LoginService;
import xmu.crms.view.LoginSuccessVO;

import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;

/**
 * 登录控制器。微信小程序登录与 Web 端账号密码登录
 *
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
    public LoginSuccessVO login(@RequestBody Map<String, String> map) throws UserNotFoundException {
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
            throw new UserNotFoundException();
        }
        return jwt(login);
    }

    @ExceptionHandler(UserNotFoundException.class)
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    public Object userNotFount() {
        return null;
    }

    public LoginSuccessVO jwt(User user) {
        ObjectMapper objectMapper = new ObjectMapper();

        Map<String, String> header = new HashMap<>(2);
        header.put("alg", "HS256");
        header.put("typ", "JWT");

        Map<String, String> payload = new HashMap<>();

        LoginSuccessVO loginSuccessVO = new LoginSuccessVO();
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            SecretKey secretKey = new SecretKeySpec(secret.getBytes(), "HmacSHA256");
            mac.init(secretKey);

            String headerString = objectMapper.writeValueAsString(header);
            String payloadString = objectMapper.writeValueAsString(payload);
            String signature = new String(mac.doFinal((headerString + payloadString).getBytes()));

            loginSuccessVO.setId(user.getId());
            loginSuccessVO.setName(user.getName());
            loginSuccessVO.setType(user.getType() == 1 ? "teacher" : "student");
            loginSuccessVO.setJwt(Base64.getEncoder().encodeToString(headerString.getBytes()),
                    Base64.getEncoder().encodeToString(payloadString.getBytes()), signature);
        } catch (Exception e) {

        }
        return loginSuccessVO;
    }
}
