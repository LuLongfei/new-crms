package xmu.crms.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import xmu.crms.entity.User;
import xmu.crms.mapper.LoginMapper;

/**
 * @author LuLongfei
 */
@Repository
public class LoginDAO {
    @Autowired
    private LoginMapper loginMapper;

    public User getUserLoginByPhone(String phone) {
        User user = null;
        try {
            user = loginMapper.getUserLoginByPhone(phone);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    public User getUserLoginByWechat(String wechat) {
        User user = null;
        try {
            user = loginMapper.getUserLoginByPhone(wechat);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

}
