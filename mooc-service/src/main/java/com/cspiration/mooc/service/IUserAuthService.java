package com.cspiration.mooc.service;

import com.cspiration.mooc.entity.UserAuth;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
public interface IUserAuthService {

    /**
     * 增加数据：注册
     * @param userAuth
     * @return
     */
    Boolean insert(UserAuth userAuth);

    /**
     * username 是否重复
     * @param username
     * @return
     */
    Boolean getByUsername(String username);

    /**
     * email 是否重复
     * @param email
     * @return
     */
    Boolean getByUserEmail(String email);

    /**
     * 用户名 & 密码验证
     * @param username
     * @param password
     * @return
     */
    UserAuth auth(String username, String password);

    /**
     * 更新数据：个人主页
     * @param userAuth
     * @return
     */
    Boolean update(UserAuth userAuth);

    /**
     * 查找信息
     * @param userAuth
     * @return
     */
    List<UserAuth> query(UserAuth userAuth);
}
