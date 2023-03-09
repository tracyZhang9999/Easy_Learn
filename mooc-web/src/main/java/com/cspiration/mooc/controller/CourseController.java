package com.cspiration.mooc.controller;

import com.cspiration.mooc.entity.*;
import com.cspiration.mooc.interception.UserContext;
import com.cspiration.mooc.service.ICommentService;
import com.cspiration.mooc.service.ICourseService;
import com.cspiration.mooc.service.IUserCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
@Controller
@RequestMapping("course")
public class CourseController {

    @Autowired
    private IUserCourseService iUserCourseService;

    @Autowired
    private ICourseService iCourseService;

    @Autowired
    private ICommentService iCommentService;

    @RequestMapping("/learn")
    public String learn(Long id, ModelMap modelMap) {
        Long userId = UserContext.getUser().getId();
        UserCourse userCourse = new UserCourse();
        userCourse.setCourseId(id);
        userCourse.setUserId(userId);
        List<UserCourse> list = iUserCourseService.query(userCourse);
        if (list.isEmpty()) {
            return "/index";
        }

        List<Course> courseList = iCourseService.query(new Course(id));
        if (courseList.isEmpty()) {
            return "error/404";
        }
        Course course = courseList.get(0);
        modelMap.put("course", course);

        List<CourseSectionSub> chapterSections = iCourseService.queryCourseSection(id);
        if (chapterSections == null || chapterSections.size() == 0) {
            return "error/404";
        }
        modelMap.put("chapterSections", chapterSections);

        return "course/learn";
    }

    @RequestMapping("/learn/comment")
    public String courseComment(Long courseId, ModelMap modelMap) {
        if (courseId == null) {
            return "error/404";
        }

        Comment comment = new Comment();
        comment.setCourseId(courseId);
        List<Comment> list = iCommentService.query(comment);

        modelMap.put("list", list);
        modelMap.put("courseId", courseId);

        return "/course/comment";
    }

    @RequestMapping("/learn/comment/commentPublish")
    @ResponseBody
    public Boolean courseCommentPublish(Comment comment) {
        UserAuth userAuth = UserContext.getUser();
        comment.setUserId(userAuth.getId());
        return iCommentService.insert(comment);
    }


}
