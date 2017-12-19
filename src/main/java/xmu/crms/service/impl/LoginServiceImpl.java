package xmu.crms.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import xmu.crms.dao.LoginDAO;
import xmu.crms.entity.User;
import xmu.crms.exception.UserNotFoundException;
import xmu.crms.service.LoginService;

import java.math.BigInteger;
import java.net.URL;
import java.util.Map;

/**
 * @author LuLongfei
 */
@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginDAO loginDAO;

    @Value("${wechat.mp.appid}")
    private String appid;

    @Value("${wechat.mp.secret}")
    private String secret;

    private static final String KEY_OPEN_ID = "openid";
    // private static final String KEY_SESSION_KEY = "session_key";

    private static final String KEY_ERR_CODE = "errcode";

    @Override
    public User signInWeChat(BigInteger userId, String code, String state, String successUrl) throws UserNotFoundException {
        User val = null;
        try {
            String urlString = String.format("https://api.weixin.qq.com/sns/jscode2session?" +
                            "appid=%s&secret=%s&js_code=%s&grant_type=authorization_code",
                    appid, secret, code);
            URL url = new URL(urlString);
            // json解析
            ObjectMapper mapper = new ObjectMapper();
            // 请求接口获取结果并进行json解析
            Map<String, Object> map = mapper.readValue(url, Map.class);
            if (map.get(KEY_OPEN_ID) != null) {
                val = loginDAO.getUserLoginByWechat(map.get(KEY_OPEN_ID).toString());
            } else if (map.get(KEY_ERR_CODE) != null) {
                val = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (val == null) {
            throw new UserNotFoundException();
        }
        return val;
    }

    @Override
    public User signInPhone(User user) throws UserNotFoundException {
        User val = null;
        try {
            val = loginDAO.getUserLoginByPhone(user.getPhone());
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (val == null) {
            throw new UserNotFoundException();
        }
        return val;
    }
}
