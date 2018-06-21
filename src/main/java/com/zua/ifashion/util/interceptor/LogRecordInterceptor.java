package com.zua.ifashion.util.interceptor;


import com.alibaba.fastjson.JSONObject;
import com.zua.ifashion.person.entity.Admin;
import com.zua.ifashion.person.entity.LogForm;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.LogFormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Enumeration;

public class LogRecordInterceptor implements HandlerInterceptor {

    @Autowired
    private LogFormService logFormService;
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) {

        //常用有三种json解析jackson、fastjson、gson。
        JSONObject requestBody = new JSONObject();
        JSONObject params = new JSONObject();
        JSONObject headers = new JSONObject();
        Enumeration<String> em = httpServletRequest.getHeaderNames();
        while (em.hasMoreElements()) {
            String s = em.nextElement();
            headers.put(s, httpServletRequest.getHeader(s));
        }
        requestBody.put("headers", headers);

        Enumeration<String> pem = httpServletRequest.getParameterNames();
        while (pem.hasMoreElements()) {
            String s = pem.nextElement();
            headers.put(s, httpServletRequest.getParameter(s));
        }

        String path = httpServletRequest.getServletPath();
        LogForm log = new LogForm();
        String content = requestBody.toJSONString();
        // log.setLog_operation(request.getRequestURI());
        // log.setLogin_username("用户名");
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        // log.setCreatetime(df.format(System.currentTimeMillis()));//获取当前时间插入数据库

        String requestUrl = httpServletRequest.getRequestURI();

        //获取session
        HttpSession session = httpServletRequest.getSession();
        Admin admin= (Admin) session.getAttribute("admin");
        User user= (User) session.getAttribute("user");
                 if (admin != null) {
                     log.setLogName(admin.getAdminName());
                     log.setLogIdentity(1);
                     log.setLogOperation(requestUrl);
                     log.setLogCreatedate(df.format(System.currentTimeMillis()));//获取当前时间插入数据库
                     logFormService.addLogFormSelective(log);
                     return true;
                   }
// else if(user!=null){
//                     log.setLogName(user.getUsername());
//                     log.setLogIdentity(0);
//                     log.setLogOperation(requestUrl);
//                     log.setLogCreatedate(df.format(System.currentTimeMillis()));//获取当前时间插入数据库
//                     logFormService.addLogFormSelective(log);
//                 }
         return true;//true表示放行
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
