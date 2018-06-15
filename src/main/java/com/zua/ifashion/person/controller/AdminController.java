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

//updatetag


    // 其它管理controller
    @RequestMapping(value = "/updatetag", method = RequestMethod.GET)
    public String updatetag(HttpSession session,Integer tagId,Map<String,Object> map) {

        Tag tag=tagService.selectTagByTagId(tagId);

        map.put("tag",tag);

        session.getAttribute("adminModuleVos");
        return "admin/updatetag";
    }
    // 其它管理controller
    @RequestMapping(value = "/updatehandletag", method = RequestMethod.POST)
    public String updatehandletag(HttpSession session,Tag tag,Map<String,Object> map) {

         tagService.updateTagSelective(tag);

        //map.put("tag",tag);

        session.getAttribute("adminModuleVos");
        return "redirect:/admin/tagmanage.action";
    }

    @RequestMapping(value = "/ajaxdeletetag", method = RequestMethod.POST)
    @ResponseBody
    public Tag ajaxdeleteTag(HttpSession session, @RequestBody Tag tag, Map<String,Object> map) {
        String msg="";


        int n=tagService.deleteTag(tag.getTagId());
        if(n>0){
            msg="删除成功";
        }else {
            msg="删除失败";
        }
        session.getAttribute("adminModuleVos");

        return tag;
    }
}
