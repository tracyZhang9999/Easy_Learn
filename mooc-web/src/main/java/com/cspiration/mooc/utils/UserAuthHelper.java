package com.cspiration.mooc.utils;

import com.cspiration.mooc.entity.UserAuth;
import org.apache.commons.lang3.StringUtils;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
public class UserAuthHelper {

    public static ResultMsg validate(UserAuth userAuth) {
        if (StringUtils.isBlank(userAuth.getEmail())) {
            return ResultMsg.errorMsg("邮箱不能为空");
        }
        if (StringUtils.isBlank(userAuth.getUsername())) {
            return ResultMsg.errorMsg("用户名不能为空");
        }
        if (StringUtils.isBlank(userAuth.getPasswd())
                || StringUtils.isBlank(userAuth.getConfirmPasswd())) {
            return ResultMsg.errorMsg("密码或者确认密码不能为空");
        }
        if (!userAuth.getPasswd().equals(userAuth.getConfirmPasswd())) {
            return ResultMsg.errorMsg("两次密码不一致");
        }
        if (userAuth.getPasswd().length() < 6) {
            return ResultMsg.errorMsg("密码不能小于6位");
        }

        return ResultMsg.successMsg("");
    }
}
