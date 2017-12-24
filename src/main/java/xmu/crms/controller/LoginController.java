package xmu.crms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import xmu.crms.entity.User;
import xmu.crms.exception.UserNotFoundException;
import xmu.crms.security.auth.JwtService;
import xmu.crms.security.auth.impl.JwtServiceImpl;
import xmu.crms.service.LoginService;
import xmu.crms.view.LoginSuccessVO;

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

    @Autowired
    private JwtService jwtService;

    @PostMapping("/register")
    public LoginSuccessVO register(@RequestBody Map<String, Object> map) {
        String phone = map.get("phone").toString();
        String password = map.get("password").toString();
        User user = new User();
        user.setPhone(phone);
        user.setPassword(password);
        user = loginService.signUpPhone(user);
        jwtService.generateJwt(user);
        return new LoginSuccessVO(user.getId(),"unbinded",user.getName(),null);
    }
}
