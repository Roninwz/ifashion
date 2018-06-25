package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.service.DesignerAuthService;
import com.zua.ifashion.person.service.UserService;
import com.zua.ifashion.person.vo.AuthDesignerVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminAuthDesignerController {
@Autowired
private DesignerAuthService designerAuthService;
@Autowired
private UserService userService;

    @RequestMapping(value = "/designerauths", method = RequestMethod.GET)
    public String adminOther(HttpSession session, Map<String,Object> map) {


      List<AuthDesignerVo> designerAuths= designerAuthService.getAllDesignerAuths();



        map.put("designerAuths",designerAuths);
        return "admin/authDesigner";
    }
}
