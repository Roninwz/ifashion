package com.zua.ifashion.person.controller;

import com.zua.ifashion.article.entity.Article;
import com.zua.ifashion.person.entity.DesignerAuth;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.DesignerAuthService;
import com.zua.ifashion.person.service.UserService;
import com.zua.ifashion.util.interceptor.Token;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminManageUserController {

    @Autowired
    private UserService userService;
    @Autowired
    DesignerAuthService designerAuthService;

//    @RequestMapping(value="/list",method=RequestMethod.GET)
//    @ResponseBody
//    public Map<String, Object>findAllByPage(int currPage,int pageSize){
//        Map<String, Object> resultMap = new HashMap<String, Object>();
//        resultMap.put("currPage",currPage);
//        resultMap.put("pageSize",pageSize);
//        List<User> users=userService.getAllUsers();
//
//        PageInfo<User> pager = new PageInfo(users);
//        //总条数
//        resultMap.put("total", pager.getTotal());
//        //获取每页数据
//        resultMap.put("rows", pager.getList());
//        return resultMap;
//
//    }

//    //用户管理controller
//    @RequestMapping(value = "/usermanage", method = RequestMethod.GET)
//    public String adminUser(HttpServletRequest request, HttpServletResponse response, HttpSession session, Map<String, Object> map) {
//
////每页显示的条数
//        int pageSize=2;
//        //当前的页面默认是首页
//        int curPage=1;
//        String scurPage=request.getParameter("curPage");
//        if (scurPage!=null&&!scurPage.trim().equals("")){
//
//            curPage=Integer.parseInt(scurPage);
//        }
//        Map<String ,Object> cmap=new HashMap<>();
//        if(curPage>=1){
//            curPage=curPage-1;
//        }
//
//        int beginIndex=curPage*pageSize;
//        cmap.put("beginIndex",beginIndex);
////           每页显示的条数
//        cmap.put("pageSize",pageSize);
//
////        PageHelper.startPage(1, 3);
//       List<User> users=userService.getAllUsers(cmap);
////
////
//     PageInfo<User> pageInfo = new PageInfo(users);
//        map.put("pageInfo",pageInfo);
////        map.put("page",p);
//        session.getAttribute("adminModuleVos");
//        return "admin/user";
//    }
//用户管理controller
@RequestMapping(value = "/usermanage", method = RequestMethod.GET)
public String adminUser(HttpServletRequest request, HttpServletResponse response,HttpSession session, Map<String, Object> map) {
       // int pageSize=10;
        //System.out.println(curPage);
       // PageHelper.startPage(curPage,pageSize);
        List<User> users=userService.getAllUsers();
       // PageInfo<User> pageInfo = new PageInfo<>(users);
        //map.put("pageInfo",pageInfo);
        map.put("users",users);
        map.put("n",users.size());
        return "admin/user";
}

    @Token(save = true)
    @RequestMapping(value = "/adduser", method = RequestMethod.GET)
    public String addUser(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/adduser";
    }
    @Token(remove = true)
    @RequestMapping(value = "/addhandleuser", method = RequestMethod.POST)
    public String addHandleUser(HttpSession session,User user) {

        User user1=new User();
        user1.setUsername(user.getUsername());
        user1.setPassword(user.getPassword());
        user1.setSex(user.getSex());
        System.out.println(new Date());
        user1.setRegisterDate(new Date());
        user1.setEmail(user.getEmail());
        user1.setTel(user.getTel());
        user1.setAge(user.getAge());
        user1.setUserIntroduce(user.getUserIntroduce());
        user1.setUserMark(0);
        user1.setState(1);
        userService.addUserSelective(user1);

        return "redirect:/admin/usermanage.action";
    }
    @RequestMapping(value = "/updateuser", method = RequestMethod.GET)
    public String updateUser(HttpSession session,Integer userId,Map<String,Object> map) {
        User user=userService.selectUserByUserId(userId);
        map.put("user",user);
        session.getAttribute("adminModuleVos");
        return "admin/updateuser";
    }
    @RequestMapping(value = "/updatehandleuser", method = RequestMethod.POST)
    public String updateHandleUser(HttpSession session,User user) {
        User user1=new User();
        user1.setUserId(user.getUserId());
        user1.setUsername(user.getUsername());
        user1.setPassword(user.getPassword());
        user1.setSex(user.getSex());
        System.out.println(new Date());
        user1.setRegisterDate(new Date());
        user1.setEmail(user.getEmail());
        user1.setTel(user.getTel());
        user1.setAge(user.getAge());
        user1.setUserIntroduce(user.getUserIntroduce());
        userService.updateUserSelective(user1);
        return "redirect:/admin/usermanage.action";
    }
    @RequestMapping(value = "/deleteuser", method = RequestMethod.GET)
    public String deleteUser(HttpSession session,Integer userId,Map<String,Object> map) {
        userService.deleteUser(userId);
        session.getAttribute("adminModuleVos");
        return "admin/user";
    }
    @RequestMapping(value = "/ajaxdeleteuser", method = RequestMethod.POST)
    @ResponseBody
    public User ajaxdeleteUser(HttpSession session,@RequestBody User user,Map<String,Object> map) {
       String msg="";
        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
        //System.out.println(userId);
        System.out.println(user.getUserId());
        int n=userService.deleteUser(user.getUserId());
        if(n>0){
            msg="删除成功";
        }else {
            msg="删除失败";
        }

        return user;
    }
//
//    搜索用户
@RequestMapping(value = "/searchuser", method = RequestMethod.POST)
public String searchUser(HttpSession session,String username,Map<String,Object> map) {
   //List<User> users= userService.selectUserByUsername(username);
    System.out.println("hhhhhhhhhhhhhhhhhhh");
    List<User> users=userService.selectUsersByUname(username);
    map.put("n",users.size());
    map.put("users",users);
    for (User user:users){
        System.out.println(user.getUserId());
    }
    return "admin/searchuser";
}


    @RequestMapping(value = "/ajaxforbiddenuser", method = RequestMethod.POST)
    @ResponseBody
    public User ajaxForbiddenUser(HttpSession session,@RequestBody User user,Map<String,Object> map) {
        String msg="";
        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
        //System.out.println(userId);
        System.out.println(user.getUserId());
        User user1=new User();
        user1.setUserId(user.getUserId());
        user1.setState(0);
        int n=userService.updateUserSelective(user1);
        if(n>0){
            msg="禁用成功";
        }else {
            msg="禁用失败";
        }
        System.out.println(msg);
        return user1;
    }
    //ajaxstartuser

    @RequestMapping(value = "/ajaxstartuser", method = RequestMethod.POST)
    @ResponseBody
    public User ajaxStartUser(HttpSession session,@RequestBody User user,Map<String,Object> map) {
        String msg="";
        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
        //System.out.println(userId);
        System.out.println(user.getUserId());
        User user1=new User();
        user1.setUserId(user.getUserId());
        user1.setState(1);
        int n=userService.updateUserSelective(user1);
        if(n>0){
            msg="启用成功";
        }else {
            msg="启用失败";
        }
        System.out.println(msg);
        return user;
    }

    //batchdeleteuser批量删除

    @RequestMapping(value = "/batchdeleteuser", method = RequestMethod.POST)
    public void batchDeleteUser(HttpSession session, HttpServletResponse response,HttpServletRequest request, Map<String,Object> map) {
        String msg = "";
        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
        //System.out.println(userId);
        String items = request.getParameter("delitems");// System.out.println(items);
        String[] strs = items.split(",");

        for (int i = 0; i < strs.length; i++) {
            try {
                int a = Integer.parseInt(strs[i]);
                int n = userService.deleteUser(a);
                if (n > 0) {
                    msg = "删除成功";
                } else {
                    msg = "删除失败";
                }
                System.out.println(msg);
            } catch (Exception e) {
            }
        }
    }
    //设计师审核审核状态ajax
//                                <%--// 0 待审核--%>
//                                <%--// 1 通过审核--%>
//                                <%--// 2 未通过审核-%>
    @RequestMapping(value = "/ajaxtongguoauth", method = RequestMethod.POST)
    @ResponseBody
    public DesignerAuth ajaxtongguoauth(HttpSession session, @RequestParam Integer authId, Map<String,Object> map) {
        String msg="";
        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
        DesignerAuth designerAuth=new DesignerAuth();
        designerAuth.setAuthId(authId);
        designerAuth.setAuthState(1);
        int n=designerAuthService.updateDesignerAuthSelective(designerAuth);
        if(n>0){
            msg="更新成功";
        }else {
            msg="更新失败";
        }
        System.out.println(msg);

        return designerAuth;
    }

    @RequestMapping(value = "/ajaxnotongguoauth", method = RequestMethod.POST)
    @ResponseBody
    public DesignerAuth ajaxnotongguoauth(HttpSession session, @RequestParam Integer authId, Map<String,Object> map) {
        Integer userId= (Integer) session.getAttribute("userId");
        String msg="";
        DesignerAuth designerAuth=new DesignerAuth();
        designerAuth.setAuthId(authId);
        designerAuth.setAuthState(2);
        int n=designerAuthService.updateDesignerAuthSelective(designerAuth);
        User user=new User();
        user.setUserId(userId);
        user.setUserMark(1);
        int k=userService.updateUser(user);
        if(n>0&&k>0){
            msg="更新成功";
        }else {
            msg="更新失败";
        }
        System.out.println(msg);

        return designerAuth;
    }

    //ajaxdeleteauth

    @RequestMapping(value = "/ajaxdeleteauth", method = RequestMethod.POST)
    @ResponseBody
    public DesignerAuth ajaxdeleteauth(HttpSession session, @RequestBody DesignerAuth designerAuth, Map<String,Object> map) {
        String msg="";
        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");

        int n=designerAuthService.deleteDesignerAuth(designerAuth.getAuthId());
        if(n>0){
            msg="删除成功";
        }else {
            msg="删除失败";
        }
        System.out.println(msg);

        return designerAuth;
    }
}
