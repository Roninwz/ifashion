package com.zua.ifashion.online.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

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

    @Autowired
    private  GoodsReviewService goodsReviewService;

    @Autowired
    private OnlineOrderGoodsService onlineOrderGoodsService;
//    按类型得到所有商品
    @RequestMapping("/online_list")
    public String  getAllGoodsType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<GoodsType> goodsTypeList=goodsTypeService.getAllGoodsType();
        List<GoodsIntegrateVO> goodsIntegrateList=goodsIntegrateService.getAllGoodsIntegrate();
       /* System.out.println(goodsIntegrateList.size());*/
        List<Integer> userId=new ArrayList<>();
        List<User> users=new ArrayList<>();
        for(GoodsIntegrateVO goodsIntegrateVO:goodsIntegrateList){
            System.out.println(goodsIntegrateVO.getGoodstypeId());
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
        System.out.println(goodsIntegrateList.size());
        request.setAttribute("goodstype",goodsTypeList);
        return "user/online/order";
    }

    @RequestMapping(value = "/online_select1",method = RequestMethod.GET)

    public String getGoodsType(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        List<GoodsType> goodsTypes=goodsTypeService.getAllGoodsType();
        request.setAttribute("goodsTypes",goodsTypes);
        return "user/online/order_liucheng";


    }
   /* @RequestMapping(value = "/online_select11",method = RequestMethod.POST)
    @ResponseBody
    public List<GoodsType> goodstype(HttpServletRequest request,HttpServletResponse response){
        System.out.println("kaish");
        List<GoodsType> goodsTypes=goodsTypeService.getAllGoodsType();
        return goodsTypes;
    }*/
//    在线定制，按类型筛选商品
    @RequestMapping(value = "/online_select2",method=RequestMethod.GET)
    @ResponseBody
    public  List<GoodsChildType> queryGoods(HttpServletRequest request, HttpServletResponse response) {
        String type=request.getParameter("id");
        System.out.println(type+"ssss");
      //  System.out.println(type.toString());
        Integer typeId=Integer.parseInt(type);

        List<GoodsChildType> goodsChildTypeList=goodsChildTypeService.getAllGoodsChildType(typeId);
        request.setAttribute("goodsChildTypeList",goodsChildTypeList);
        System.out.println("2222ssssss");
        return goodsChildTypeList;
       /* return "/jsp/online_order1.jsp";*/
    }
    @RequestMapping(value = "/online_select3",method= RequestMethod.POST)
    @ResponseBody
    public Set<GoodsMaterial> queryMaterial(HttpServletRequest request,HttpServletResponse response){
        String id=request.getParameter("id");
        String id2=request.getParameter("goodschildId");
        Integer goodstypeId=Integer.parseInt(id);
        Integer goodschildId=Integer.parseInt(id2);
        List<Goods> goods=goodsService.getGoodsByConditions(goodstypeId,goodschildId,null);
        Set<GoodsMaterial> goodsMaterialList=new HashSet<>();
        if(goods.size()>0){
            for(Goods good:goods){
                GoodsMaterial goodsMaterial=goodsMaterialService.getGoodsMaterialByGoodsId(good.getGoodsId());
                goodsMaterialList.add(goodsMaterial);
            }

        }

      /*  System.out.println(goodsMaterialList.size());*/

        return goodsMaterialList;

    }

    @RequestMapping(value = "/online_select4.action",method= RequestMethod.GET)
    @ResponseBody
    public Set<GoodsStyle> queryGoodsStyle(HttpServletRequest request, HttpServletResponse response){
        Set<GoodsStyle> goodsStyleList=new HashSet<>();
        String id=request.getParameter("id");
        String id2=request.getParameter("goodschildId");
        String id3=request.getParameter("materiId");
        Integer goodstypeId=Integer.parseInt(id);
        Integer goodschildId=Integer.parseInt(id2);
        Integer goodsmaterialId=Integer.parseInt(id3);

        List<Goods> goods=goodsService.getGoodsByConditions(goodstypeId,goodschildId,goodsmaterialId);
        if(goods.size()>0){
            for(Goods good:goods){
               List<GoodsStyle> goodsStyleList1=goodsStyleService.getgoodsstyleListByGoodsId(good.getGoodsId());
               for(GoodsStyle goodsStyle:goodsStyleList1){
                   goodsStyleList.add(goodsStyle);
               }
            }
        }
        return goodsStyleList;

    }
    @RequestMapping("/online_order")
    public String getBuyPage(HttpServletRequest request, HttpServletResponse response, @RequestParam(required = false,defaultValue = "1",value = "curPage")Integer curPage) {


        String typeid = request.getParameter("typeid");
        String childid = request.getParameter("childid");
        String materiId = request.getParameter("materiId");
        String styleId = request.getParameter("styleId");

        Integer goodstypeId = Integer.parseInt(typeid);
        Integer goodschildId = Integer.parseInt(childid);
        Integer goodsMaterial = Integer.parseInt(materiId);
        Integer goodsStyle = Integer.parseInt(styleId);
        List<GoodsReview> reviews=new ArrayList<>();
        Map<GoodsAndImgDesignerVO,User> map1=new HashMap<>();  //一个商品的设计师
       /* List<User> users=new ArrayList<>();*/
        Map<GoodsAndImgDesignerVO,List<GoodsReview>> map=new HashMap<>(); //一个商品对应的所有评论
        int pageSize=1;
        PageHelper.startPage(curPage,pageSize);
        List<Goods> goodsList=goodsService.getGoodsByConditions(goodstypeId, goodschildId, goodsMaterial);
      /*  List<GoodsAndImgDesignerVO> goodsList =onlineOrderGoodsService.getGoodsByCondition(goodstypeId, goodschildId, goodsMaterial,goodsStyle);*/
        PageInfo<Goods> pageInfo = new PageInfo<Goods>(goodsList);
        List<GoodsAndImgDesignerVO> goodsAndImgDesignerVO=new ArrayList<>();
        for(Goods goods:goodsList){
            GoodsAndImgDesignerVO goodsAndImgDesignerVO1=goodsService.getGoodsByGoodsId(goods.getGoodsId());
        /*    reviews=goodsReviewService.getGoodsReviewByGoodsId(goodsAndImgDesignerVO1.getGoodsId());*/
          /*  map.put(goodsAndImgDesignerVO1,reviews);*/
            User user=goodsService.selectDesignerByGoodsId(goodsAndImgDesignerVO1.getGoodsId());

            map1.put(goodsAndImgDesignerVO1,user);
            System.out.println(map1.get(goodsAndImgDesignerVO1).getUserId());
            System.out.println(goodsAndImgDesignerVO1.getGoodsName());
            goodsAndImgDesignerVO.add(goodsAndImgDesignerVO1);
        }

        request.setAttribute("pageInfo",pageInfo);
        request.setAttribute("goodsAndImgDesignerVO",goodsAndImgDesignerVO);
        request.setAttribute("goodstypeId",goodstypeId);
        request.setAttribute("childid",childid);
        request.setAttribute("materiId",materiId);
        request.setAttribute("styleId",styleId);
        request.setAttribute("map1",map1);
      /*  request.setAttribute("map",map);*/
        System.out.println(goodsList.size());
        return "user/online/online_order1";
    }

}
