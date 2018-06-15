package com.zua.ifashion.util.interceptor;


import com.zua.ifashion.person.entity.Admin;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLoginInterceptor implements HandlerInterceptor {


    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {

        String uri = httpServletRequest.getRequestURI();
        //UTL:除了login.jsp是可以公开访问的，其他的URL都进行拦截控制
                if (uri.indexOf("/admin/login.action") >= 0) {
                         return true;
                    }
        //获取session
        HttpSession session = httpServletRequest.getSession();
        Admin admin= (Admin) session.getAttribute("admin");

                 if (admin != null) {
                         return true;
                    }

        httpServletRequest.setAttribute("msg", "您还没有登录，请先登录！");
        System.out.println("您还没有登录，请先登录！");
        httpServletRequest.getRequestDispatcher("/WEB-INF/jsp/admin/login.jsp").forward(httpServletRequest, httpServletResponse);
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
