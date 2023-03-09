package com.cspiration.mooc.service;

import com.cspiration.mooc.entity.Course;
import com.cspiration.mooc.entity.CourseSectionSub;

import java.util.List;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
public interface ICourseService {

    /**
     * 查找信息
     * @param course
     * @return
     */
    List<Course> query(Course course);

    List<CourseSectionSub> queryCourseSection(Long courseId);
}
