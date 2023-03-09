package com.cspiration.mooc.service.imp;

import com.cspiration.mooc.dao.UserAuthDao;
import com.cspiration.mooc.entity.UserAuth;
import com.cspiration.mooc.service.IUserAuthService;
import com.cspiration.mooc.utils.HashUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
@Service
public class UserAuthServiceImp implements IUserAuthService {

    @Autowired
    private UserAuthDao userAuthDao;

    @Override
    public Boolean insert(UserAuth userAuth) {
        userAuth.setPasswd(HashUtils.encryPassword(userAuth.getPasswd()));
        userAuth.setCreateTime(new Date());
        if (userAuthDao.insert(userAuth) <= 0) {
            return false;
        }

        return true;
    }

    @Override
    public Boolean getByUsername(String username) {
        UserAuth userAuth = new UserAuth();
        userAuth.setUsername(username);
        List<UserAuth> list = userAuthDao.query(userAuth);
        return !list.isEmpty();
    }

    @Override
    public Boolean getByUserEmail(String email) {
        UserAuth userAuth = new UserAuth();
        userAuth.setUsername(email);
        List<UserAuth> list = userAuthDao.query(userAuth);
        return !list.isEmpty();
    }

    @Override
    public UserAuth auth(String username, String password) {
        UserAuth userAuth = new UserAuth();
        userAuth.setUsername(username);
        userAuth.setPasswd(HashUtils.encryPassword(password));
        List<UserAuth> list = getUserAuthByQuery(userAuth);
        if (!list.isEmpty()) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public Boolean update(UserAuth userAuth) {
        if (userAuthDao.update(userAuth) <= 0) {
            return false;
        }
        return true;
    }

    @Override
    public List<UserAuth> query(UserAuth userAuth) {
        List<UserAuth> list = userAuthDao.query(userAuth);
        return list;
    }

    private List<UserAuth> getUserAuthByQuery(UserAuth userAuth) {
        List<UserAuth> list = userAuthDao.query(userAuth);
        return list;
    }
}
