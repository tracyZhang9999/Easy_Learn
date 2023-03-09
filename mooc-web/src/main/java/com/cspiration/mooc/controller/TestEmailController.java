package com.cspiration.mooc.controller;

import com.cspiration.mooc.entity.UserAuth;
import com.cspiration.mooc.service.UserAuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
@Controller
public class TestEmailController {

    @Autowired
    private UserAuthService userAuthService;

    @RequestMapping("testEmail")
    public String testEmail(ModelMap modelMap) {
        List<UserAuth> userAuthList = userAuthService.getUserAuth();
        UserAuth userAuth = userAuthList.get(0);
        if (userAuth != null) {
            throw new IllegalArgumentException();
        }
        modelMap.put("user", userAuth);
        return "testEmail";
    }
}
