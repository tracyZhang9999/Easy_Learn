package com.cspiration.mooc.service.imp;

import com.cspiration.mooc.dao.UserCourseDao;
import com.cspiration.mooc.entity.UserCourse;
import com.cspiration.mooc.service.IUserCourseService;
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
public class UserCourseServiceImp implements IUserCourseService {

    @Autowired
    private UserCourseDao userCourseDao;

    @Override
    public List<UserCourse> query(UserCourse userCourse) {
        List<UserCourse> list = userCourseDao.query(userCourse);
        return list;
    }
}
