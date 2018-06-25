package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.entity.DesignerAuth;
import com.zua.ifashion.person.entity.Rank;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.DesignerAuthService;
import com.zua.ifashion.person.service.RankService;
import com.zua.ifashion.person.service.UserService;
import com.zua.ifashion.util.MessageInfos;
import com.zua.ifashion.util.RandUtil;
import com.zua.ifashion.util.miaodiyun.httpApiDemo.IndustrySMS;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class PersonAuthController {
    @Autowired
    private UserService userService;
    @Autowired
    RankService rankService;
    @Autowired
    DesignerAuthService designerAuthService;
    @RequestMapping(value = "/designerauth", method = RequestMethod.GET)
    public String designerAuth(HttpSession session, Map<String,Object> map) {


        Integer userId= (Integer) session.getAttribute("userId");
        User user=userService.selectUserByUserId(userId);
        Rank rank= rankService.selectRankByRankId(user.getRankId());
        map.put("user",user);
        map.put("rank",rank);
        System.out.println(user.getUserMark());
        return "user/personal/user/designerauth";
    }
    @RequestMapping(value = "/authstate", method = RequestMethod.GET)
    public String authstate(HttpSession session, Map<String,Object> map) {


        Integer userId= (Integer) session.getAttribute("userId");
        User user=userService.selectUserByUserId(userId);
      DesignerAuth auth= designerAuthService.selectDesignerByUserId(userId);

        //Rank rank= rankService.selectRankByRankId(user.getRankId());
        map.put("auth",auth);
        map.put("user",user);
        //System.out.println(user.getUserMark());
        return "user/personal/user/authstate";
    }


    //认证1，判断用户名和邮箱
    @RequestMapping(value = "/designerauths1", method = RequestMethod.POST)
    @ResponseBody
    public MessageInfos designerauths1(HttpServletRequest request, HttpServletResponse response, @RequestBody User user, HttpSession session, Map<String,Object> map) throws IOException {
        MessageInfos messageInfos=new MessageInfos();
        DesignerAuth designerAuth =new DesignerAuth();
        Integer userId= (Integer) session.getAttribute("userId");
        User user1= userService.selectUserByUserId(userId);
       String isError="";
        //System.out.println("1"+user1.getUsername());
        //System.out.println("2"+user.getUsername());
        if(!user.getUsername().equals(user1.getUsername())){
            isError="usernameerror";
        }else if(user1.getEmail().isEmpty()){
            User user2=new User();
            user2.setUserId(userId);
            user2.setEmail(user.getEmail());
            userService.updateEmail(user2);
        }else if((!user.getEmail().equals(user1.getEmail()))&&(!user1.getEmail().isEmpty())){
            isError="emailerror";
        }else {
            designerAuth.setUserId(userId);
            DesignerAuth designerAuth1=designerAuthService.selectDesignerByUserId(userId);
            if(designerAuth1==null){
                designerAuthService.addDesignerAuthSelective(designerAuth);
            }

            isError="right";
        }
        messageInfos.setMessage(isError);
        System.out.println(isError);
        //response.getWriter().print(isError);
        return  messageInfos;
    }
//认证3，验证码
    @RequestMapping(value = "/ajaxgetauthcode", method = RequestMethod.POST)
    @ResponseBody
    public String ajaxgetauthcode(HttpServletRequest request, @RequestBody User user, HttpSession session, Map<String,Object> map) {
      String isError="";
        System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhh");
        // String tel=request.getParameter("tel");
        String code = RandUtil.getRandNum();
        //String ttel=tel;
        // 获取开发者账号信息
        //AccountInfo.execute();
        //System.out.println(tel);
        //System.out.println(ttel);
        System.out.println(code);
        // 验证码通知短信接口
        IndustrySMS.execute(user.getTel(),'"'+code+'"');
        session.setAttribute("telauthcode",code);

        //userService.addUserSelective(user);
        return isError;
    }
    //判断验证码
    @RequestMapping(value = "/ajaxAuthYzmCode", method = RequestMethod.POST)
    @ResponseBody
    public void ajaxAuthYzmCode(HttpServletRequest request, String code, HttpServletResponse response, HttpSession session, Map<String,Object> map) throws IOException {
        String yzmcode= (String) session.getAttribute("telauthcode");
        String isError="";
      if(yzmcode.equals(code)){
          isError="yerror";
      }else {
          isError="yright";
      }
        response.getWriter().write(isError);


        // return user1;
    }
    //认证3，身份证号，手机号，真实姓名
    @RequestMapping(value = "/trueauthdesigner", method = RequestMethod.POST)
    public String trueauthdesigner(HttpSession session,String truename,String cardNum,String tel,String code, HttpServletRequest request){
        //Topic topic1=new Topic();
        Integer userId= (Integer) session.getAttribute("userId");
       // User user1=userService.selectUserByUserId(userId);
        User user = new User();
        user.setUserId(userId);
        user.setTruename(truename);
        DesignerAuth designerAuth=designerAuthService.selectDesignerByUserId(userId);
        designerAuth.setCardNum(cardNum);
        designerAuth.setAuthState(0);

        int n=designerAuthService.updateDesignerAuthSelective(designerAuth);
       int n1= userService.updateUserSelective(user);
        System.out.println("n:"+n);
        System.out.println("n1:"+n1);
        DesignerAuth designerAuth2=designerAuthService.selectDesignerByUserId(userId);
        return "redirect:/user/authstate.action";
    }





    //认证2，上传认证设计师证图片
    @RequestMapping(value = "/saveHeaderPic", method = RequestMethod.POST)
    public void saveHeaderPic(HttpSession session,@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request, HttpServletResponse response) throws IOException {
        Integer userId = (Integer) session.getAttribute("userId");
        System.out.println("userId:" + userId);
        DesignerAuth designerAuth2 = designerAuthService.selectDesignerByUserId(userId);
        DesignerAuth designerAuth = new DesignerAuth();
        String resMsg = "";
        try {

            long  startTime=System.currentTimeMillis();

            System.out.println("fileName："+file.getOriginalFilename());
            String filename=new Date().getTime()+file.getOriginalFilename();
            String path="E:\\ifashion\\static\\"+new Date().getTime()+file.getOriginalFilename();
            System.out.println("path:" + path);

            File newFile=new File(path);
            //通过CommonsMultipartFile的方法直接写文件
            file.transferTo(newFile);
            long  endTime=System.currentTimeMillis();
            System.out.println("运行时间："+String.valueOf(endTime-startTime)+"ms");
            resMsg = "1";
            System.out.println(filename);
            designerAuth.setAuthImgurl("static/upload/images/" + filename);
            designerAuth.setAuthId(designerAuth2.getAuthId());
            System.out.println(designerAuth.getAuthImgurl());
            designerAuthService.updateDesignerAuthSelective(designerAuth);

        } catch (IllegalStateException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            resMsg = "0";
        }
        response.getWriter().write(resMsg);

    }


}
