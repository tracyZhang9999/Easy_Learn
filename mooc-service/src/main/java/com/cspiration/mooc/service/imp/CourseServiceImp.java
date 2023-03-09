package com.cspiration.mooc.service.imp;

import com.cspiration.mooc.dao.CourseDao;
import com.cspiration.mooc.dao.CourseSectionDao;
import com.cspiration.mooc.entity.Course;
import com.cspiration.mooc.entity.CourseSection;
import com.cspiration.mooc.entity.CourseSectionSub;
import com.cspiration.mooc.service.ICourseService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
@Service
public class CourseServiceImp implements ICourseService {

    @Autowired
    private CourseSectionDao courseSectionDao;

    @Autowired
    private CourseDao courseDao;

    @Override
    public List<Course> query(Course course) {
        return courseDao.query(course);
    }

    @Override
    public List<CourseSectionSub> queryCourseSection(Long courseId) {
        List<CourseSectionSub> res = new ArrayList<>();
        CourseSection courseSection = new CourseSection();
        courseSection.setCourseId(courseId);

        Map<Long, CourseSectionSub> map = new LinkedHashMap<>();
        Iterator<CourseSection> iterator = courseSectionDao.query(courseSection).iterator();
        while (iterator.hasNext()) {
            CourseSection item = iterator.next();
            if (Long.valueOf(0).equals(item.getParentId())) {
                CourseSectionSub courseSectionSub = new CourseSectionSub();
                BeanUtils.copyProperties(item, courseSectionSub);
                map.put(courseSectionSub.getId(), courseSectionSub);
            } else {
                map.get(item.getParentId()).getSections().add(item);
            }
        }

        for (CourseSectionSub courseSectionSub : map.values()) {
            res.add(courseSectionSub);
        }

        return res;
    }
}
