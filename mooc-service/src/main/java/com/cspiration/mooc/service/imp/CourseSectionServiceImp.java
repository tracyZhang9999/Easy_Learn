package com.cspiration.mooc.service.imp;

import com.cspiration.mooc.dao.CourseSectionDao;
import com.cspiration.mooc.entity.CourseSection;
import com.cspiration.mooc.service.ICourseSectionService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
public class CourseSectionServiceImp implements ICourseSectionService {

    @Autowired
    private CourseSectionDao courseSectionDao;

    @Override
    public List<CourseSection> query(CourseSection courseSection) {
        return courseSectionDao.query(courseSection);
    }
}
