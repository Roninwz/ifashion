package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.entity.Admin;
import com.zua.ifashion.person.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminSystemController {

    @Autowired
    private AdminService adminService;

    //设置controller
    @RequestMapping(value = "/system", method = RequestMethod.GET)
    public String adminSystem(HttpSession session) {
        return "admin/system";
    }
    @RequestMapping(value = "/person", method = RequestMethod.GET)
    public String adminPerson(HttpSession session,Map<String,Object> map) {
        Admin admin1= (Admin) session.getAttribute("admin");
        Admin admin2= adminService.selectAdminByAdminId(admin1.getAdminId());
        map.put("admin",admin2);
        return "admin/systemperson";
    }



    @RequestMapping(value = "/updateAdminInfo", method = RequestMethod.POST)
    public String updateAdminInfo(Admin admin,Map<String,Object> map) {

        System.out.println(admin.getAdminId());
        System.out.println(admin.getAdminName());

        Admin admin1=new Admin();
        admin1.setAdminId(admin.getAdminId());
        admin1.setAdminName(admin.getAdminName());
        admin1.setIntroduce(admin.getIntroduce());

        adminService.updateAdminSelective(admin1);

        return "redirect:/admin/person.action";
    }

    @RequestMapping(value = "/updateadminpassword", method = RequestMethod.POST)
    public String updateadminpassword(HttpSession session, String beforepass, String newpass, String newpass2, Map<String,Object> map) {
                   Admin admin= (Admin) session.getAttribute("admin");
                   Admin admin1=new Admin();
                   String isError = "";
            if(!admin.getPassword().equals(beforepass)){
                isError = "原密码输入错误";
                System.out.println(isError);
                map.put("isError",isError);
            }else if(!newpass.equals(newpass2)){
                isError = "两次密码输入不一致";
                System.out.println(isError);

                map.put("isError",isError);
            }else {
                admin1.setAdminId(admin.getAdminId());
                admin1.setPassword(newpass);
                System.out.println("密码修改成功");
                adminService.updateAdminSelective(admin1);
            }
        return "redirect:/admin/person.action";
    }
}
