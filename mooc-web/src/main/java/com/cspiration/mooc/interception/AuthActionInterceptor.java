package com.cspiration.mooc.interception;

import com.cspiration.mooc.entity.UserAuth;
import com.cspiration.mooc.utils.ResultMsg;
import org.apache.commons.lang3.StringUtils;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
@Component
public class AuthActionInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        UserAuth user = UserContext.getUser();

        if (user == null) {
            String message = "请先登录";
            String target;
            String queryString = request.getQueryString();
            if (StringUtils.isBlank(queryString)) {
                target = URLEncoder.encode(request.getRequestURL().toString(), "UTF-8");
            } else {
                target = URLEncoder.encode(request.getRequestURL().toString() + "?" + queryString, "UTF-8");
            }

            if (HttpMethod.GET.matches(request.getMethod())) {
                response.sendRedirect("/login?" + ResultMsg.errorMsg(message).asUrlParams() + "&target=" + target);
                return false;
            } else {
                response.sendRedirect("/login?" + ResultMsg.errorMsg(message).asUrlParams());
                return false;
            }
        }

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
