package com.cspiration.mooc.service;

import com.cspiration.mooc.entity.UserAuth;
import com.cspiration.mooc.dao.UserAuthDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
@Service
public class UserAuthService {

    @Autowired
    private UserAuthDao userAuthDao;

    public List<UserAuth> getUserAuth() {
        return userAuthDao.selectUserAuth();
    }
}
