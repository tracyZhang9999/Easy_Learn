package com.cspiration.mooc.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
@RestController
public class Controller {

    @RequestMapping("helloworld")
    public String helloworld() {
        return "helloworldOfCSON";
    }
}
