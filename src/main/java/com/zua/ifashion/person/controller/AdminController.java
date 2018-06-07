package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.entity.Tag;
import com.zua.ifashion.person.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminController {
   @Autowired
    private TagService tagService;
   // adminmanage.action
    //管理员管理controller
    //1.角色管理
    @RequestMapping(value = "/rolemanage", method = RequestMethod.GET)
    public String adminRole(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/role";
    }
    //2.功能模块管理
    @RequestMapping(value = "/modulemanage", method = RequestMethod.GET)
    public String adminModule(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/module";
    }


    @RequestMapping(value = "/adminmanage", method = RequestMethod.GET)
    public String adminAdminManage(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/adminlist";
    }
    @RequestMapping(value = "/addadmin", method = RequestMethod.GET)
    public String addAdmin(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/addadmin";
    }
    @RequestMapping(value = "/updateadmin", method = RequestMethod.GET)
    public String updateAdmin(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/updateadmin";
    }



   // 其它管理controller
    @RequestMapping(value = "/tagmanage", method = RequestMethod.GET)
    public String adminOther(HttpSession session, Map<String,Object> map) {


        List<Tag> tags=tagService.getAllTags();
        int tagcount=tagService.getAllTagCount();
        map.put("tags",tags);
        map.put("tagcount",tagcount);
        session.getAttribute("adminModuleVos");
        return "admin/tag";
    }


    @RequestMapping(value = "/addtag", method = RequestMethod.POST)
    @ResponseBody
    public Tag addTag(HttpSession session, @RequestBody Tag tag,Map<String, Object> map) {
//            String isAdd="";
//         int n= tagService.addTagSelective(tag);
//         if(n>0){
//             isAdd="添加失败";
//         }else {
//             isAdd="添加成功";
//         }
        int n= tagService.addTagSelective(tag);

        session.getAttribute("adminModuleVos");
        return tag;
    }
}
