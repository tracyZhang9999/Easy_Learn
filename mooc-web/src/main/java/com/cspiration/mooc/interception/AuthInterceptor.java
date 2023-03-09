package com.cspiration.mooc.interception;

import com.cspiration.mooc.entity.UserAuth;
import com.cspiration.mooc.utils.CommonConstants;
import com.cspiration.mooc.utils.ResultMsg;
import com.google.common.base.Joiner;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
@Component
public class AuthInterceptor implements HandlerInterceptor {

    private static final String PATTEN_STATIC = "/static";
    private static final String PATTEN_ERROR = "/error";
    private static final String PATTEN_TARGET = "target";

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        Map<String, String[]> parameterMap = request.getParameterMap();
        parameterMap.forEach((k, v) -> {
            if (k.equals(ResultMsg.errorMsgKey) || k.equals(ResultMsg.successMsgKey) || k.equals(PATTEN_TARGET)) {
                request.setAttribute(k, Joiner.on(",").join(v));
            }
        });

        String requestURI = request.getRequestURI();
        if (requestURI.startsWith(PATTEN_STATIC) || requestURI.startsWith(PATTEN_ERROR)) {
            return true;
        }

        HttpSession session = request.getSession(true);
        UserAuth userAuth = (UserAuth) session.getAttribute(CommonConstants.USER_ATTRIBUTE);
        if (userAuth != null) {
            UserContext.setUser(userAuth);
        }

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        UserContext.remove();
    }
}
