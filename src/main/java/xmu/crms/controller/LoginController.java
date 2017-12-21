package xmu.crms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import xmu.crms.entity.User;
import xmu.crms.exception.UserNotFoundException;
import xmu.crms.security.auth.JwtService;
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

}
