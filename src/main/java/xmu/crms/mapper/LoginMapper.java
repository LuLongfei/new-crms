package xmu.crms.mapper;

import org.springframework.stereotype.Component;
import xmu.crms.entity.User;

/**
 * LoginMapper
 * 仅获取登录所需要的用户信息
 *
 * @author LuLongfei
 * @date 2017-12-18
 */
@Component
public interface LoginMapper {
    /**
     * 获取使用手机号登录时所需的用户信息
     * @param phone
     * @return
     */
    User getUserLoginByPhone(String phone);

    /**
     * 获取微信小程序登录时所需的用户信息
     * @param wechat
     * @return
     */
    User getUserLoginByWechat(String wechat);


}
