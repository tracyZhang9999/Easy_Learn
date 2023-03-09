package com.cspiration.mooc.interception;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import java.util.List;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
@Configuration
public class WebMvcConf extends WebMvcConfigurerAdapter {

    @Autowired
    private AuthActionInterceptor authActionInterceptor;

    @Autowired
    private AuthInterceptor authInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
       registry.addInterceptor(authInterceptor).excludePathPatterns("/static").addPathPatterns("/**");
       registry.addInterceptor(authActionInterceptor)
               .addPathPatterns("/accounts/profile")
               .addPathPatterns("/course/learn")
               .addPathPatterns("/course/learn/comment/commentPublish")
               .addPathPatterns("/accounts/myCourse");
       super.addInterceptors(registry);
    }

    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        super.configureMessageConverters(converters);
    }
}
