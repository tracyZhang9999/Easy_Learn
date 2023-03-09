package com.cspiration.mooc.service;

import com.cspiration.mooc.entity.CourseSection;

import java.util.List;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
public interface ICourseSectionService {

    /**
     * 查找信息
     * @param userCourse
     * @return
     */
    List<CourseSection> query(CourseSection userCourse);
}
