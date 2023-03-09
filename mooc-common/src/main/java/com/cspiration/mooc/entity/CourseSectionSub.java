package com.cspiration.mooc.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 *
 * 章节下面分节，每个章下面，都有若干小节
 */
public class CourseSectionSub extends CourseSection {

    //小节
    private List<CourseSection> sections;

    public CourseSectionSub() {
        sections = new ArrayList<>();
    }

    public List<CourseSection> getSections() {
        return sections;
    }

    public void setSections(List<CourseSection> sections) {
        this.sections = sections;
    }
}
