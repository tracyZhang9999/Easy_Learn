package com.cspiration.mooc.controller;

import com.cspiration.mooc.entity.UserAuth;
import com.cspiration.mooc.entity.UserCourse;
import com.cspiration.mooc.interception.UserContext;
import com.cspiration.mooc.service.IUserAuthService;
import com.cspiration.mooc.service.IUserCourseService;
import com.cspiration.mooc.utils.CommonConstants;
import com.cspiration.mooc.utils.ResultMsg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
@Controller
public class UserProfileController {

    @Autowired
    private IUserAuthService iUserAuthService;

    @Autowired
    private IUserCourseService iUserCourseService;

    @RequestMapping("/accounts/profile")
    public String profile(HttpServletRequest request, UserAuth userAuth) {
        if (userAuth.getUsername() == null) {
            return "/accounts/myProfile";
        }
        iUserAuthService.update(userAuth);
        UserAuth query = new UserAuth();
        query.setEmail(userAuth.getEmail());
        List<UserAuth> authList = iUserAuthService.query(userAuth);
        request.getSession(true).setAttribute(CommonConstants.USER_ATTRIBUTE, authList.get(0));
        return "redirect:/accounts/profile?" + ResultMsg.successMsg("更新成功").asUrlParams();
    }

    @RequestMapping("/accounts/myCourse")
    public String myCourse(ModelMap modelMap) {
        UserAuth userAuth = UserContext.getUser();
        UserCourse userCourse = new UserCourse();
        userCourse.setUserId(userAuth.getId());

        List<UserCourse> userCourseList = iUserCourseService.query(userCourse);
        modelMap.put("userCourse", userCourseList);
        return "/accounts/myCourse";
    }
}
