package com.zua.ifashion.online.controller;

import com.zua.ifashion.online.entity.*;
import com.zua.ifashion.online.service.*;
import com.zua.ifashion.online.vo.GoodsAndImgDesignerVO;
import com.zua.ifashion.online.vo.GoodsIntegrateVO;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("/user")
public class GoodsController{
    @Autowired
   private GoodsTypeService goodsTypeService;
    @Autowired
    private GoodsIntegrateService goodsIntegrateService;

    @Autowired
    private UserService userService;

    @Autowired
    private GoodsChildTypeService goodsChildTypeService;

    @Autowired
    private GoodsService goodsService;

    @Autowired
    private GoodsMaterialService goodsMaterialService;

    @Autowired
    private GoodsStyleService goodsStyleService;
//    按类型得到所有商品
    @RequestMapping("/online_list")
    public String  getAllGoodsType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<GoodsType> goodsTypeList=goodsTypeService.getAllGoodsType();
        List<GoodsIntegrateVO> goodsIntegrateList=goodsIntegrateService.getAllGoodsIntegrate();
        List<Integer> userId=new ArrayList<>();
        List<User> users=new ArrayList<>();
        for(GoodsIntegrateVO goodsIntegrateVO:goodsIntegrateList){
            List<GoodsAndImgDesignerVO> goodsAndImgDesignerVO=goodsIntegrateVO.getGoodsAndImgDesignerVOList();
            for(GoodsAndImgDesignerVO goodsList:goodsAndImgDesignerVO){
               userId.add(goodsList.getUserId());
            }
        }
        if(userId.size()>0){
            for(Integer id:userId){
                users.add(userService.selectUserByUserId(id));
            }
        }
        request.setAttribute("user",users);
        request.setAttribute("goodsIntegrateList",goodsIntegrateList);
        request.setAttribute("goodstype",goodsTypeList);
        return "user/online/order";
    }

//    在线定制，按类型筛选商品
    @RequestMapping(value = "/select1",method= RequestMethod.POST)
    @ResponseBody
    public List<GoodsChildType> queryGoods(HttpServletRequest request, HttpServletResponse response){
        String type=request.getParameter("id");
      //  System.out.println(type.toString());
        Integer typeId=Integer.parseInt(type);
        List<GoodsChildType> goodsChildTypeList=goodsChildTypeService.getAllGoodsChildType(typeId);
        return goodsChildTypeList;


    }
    @RequestMapping(value = "/select2",method= RequestMethod.POST)
    @ResponseBody
    public List<GoodsMaterial> queryMaterial(HttpServletRequest request,HttpServletResponse response){
        String id=request.getParameter("id");
        String id2=request.getParameter("id2");
        Integer goodstypeId=Integer.parseInt(id);
        Integer goodschildId=Integer.parseInt(id2);
        List<Goods> goods=goodsService.getGoodsByConditions(goodstypeId,goodschildId,null);
        List<GoodsMaterial> goodsMaterialList=new ArrayList<>();
        if(goods.size()>0){
            for(Goods good:goods){
                GoodsMaterial goodsMaterial=goodsMaterialService.getGoodsMaterialByGoodsId(good.getGoodsId());
                goodsMaterialList.add(goodsMaterial);
            }

        }
        return goodsMaterialList;


    }

    @RequestMapping(value = "/select3.action",method= RequestMethod.POST)
    @ResponseBody
    public List<GoodsStyle> queryGoodsStyle(HttpServletRequest request, HttpServletResponse response){
        Set<GoodsStyle> goodsStyleList=new HashSet<>();
        String id=request.getParameter("id");
        String id2=request.getParameter("id2");
        String id3=request.getParameter("id3");
        Integer goodstypeId=Integer.parseInt(id);
        Integer goodschildId=Integer.parseInt(id2);
        Integer goodsmaterialId=Integer.parseInt(id3);
        System.out.println("11111");

        List<Goods> goods=goodsService.getGoodsByConditions(goodstypeId,goodschildId,goodsmaterialId);
        System.out.println("2222");
        if(goods.size()>0){
            for(Goods good:goods){
               List<GoodsStyle> goodsStyleList1=goodsStyleService.getgoodsstyleListByGoodsId(good.getGoodsId());
               for(GoodsStyle goodsStyle:goodsStyleList1){
                   goodsStyleList.add(goodsStyle);
               }
            }
        }

//        System.out.println(goodsStyleList.size());
//        System.out.println(goodsStyleList);
        List<GoodsStyle> list=new ArrayList<>(goodsStyleList);
//        for(GoodsStyle go:goodsStyleList){
//            System.out.println(go.getGoodsstyleId()+go.getGoodsstyleName());
//        }
        System.out.println("33333");
        return list;

    }



}
