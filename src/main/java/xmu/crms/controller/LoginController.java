package xmu.crms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import xmu.crms.entity.User;
import xmu.crms.service.LoginService;

import java.util.Map;

@RestController
public class LoginController {
    @Autowired
    private LoginService loginService;
    @PostMapping("/login")
    public Object login(@RequestBody Map<String, String> map) {
        String code = map.get("code");
        String phone = map.get("phone");
        String password = map.get("password");
        User login;
        if(code !=null){
            login = loginService.signInWeChat(null,code,null,null);
        } else if(phone !=null && password!=null){
            User user=new User();
            user.setPhone(phone);
            user.setPassword(password);
            login = loginService.signInPhone(user);
        } else {
            login = null;
        }
        return login;
    }
}
