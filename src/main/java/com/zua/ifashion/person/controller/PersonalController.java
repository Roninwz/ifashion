package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.entity.Rank;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.RankService;
import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class PersonalController {
    @Autowired
    private UserService userService;
    @Autowired
    RankService rankService;
//    @Autowired
    //    个人中心首页
    @RequestMapping(value = "/personal", method = RequestMethod.GET)
    public String userPersonal(HttpSession session, Map<String,Object> map) {


        Integer userId= (Integer) session.getAttribute("userId");
        User user=userService.selectUserByUserId(userId);

       Rank rank= rankService.selectRankByRankId(user.getRankId());
        map.put("user",user);
        map.put("rank",rank);
        System.out.println(user.getUserMark());

        if(user.getUserMark().equals(0)){
            return "user/personal/user/information";
        }else {
            return "user/personal/designer/designer";
        }

    }


}
