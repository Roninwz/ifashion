package com.zua.ifashion.person.controller;

import com.zua.ifashion.online.entity.Address;
import com.zua.ifashion.online.service.GoodsAddressService;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.RankService;
import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class PersonAddressController {
    @Autowired
    private UserService userService;
    @Autowired
    RankService rankService;
    @Autowired
    private GoodsAddressService goodsAddressService;




    //   收货地址页面

    //0是默认收货地址


    @RequestMapping(value = "/address", method = RequestMethod.GET)
    public String userAddress(HttpSession session, Map<String,Object> map) {
        Integer userId= (Integer) session.getAttribute("userId");
        //Integer uid=Integer.parseInt(userId);
        User user=userService.selectUserByUserId(userId);
        System.out.println("userId:"+userId);
        List<Address> addresses=goodsAddressService.getAddressByUserId(userId);
        map.put("user",user);
        map.put("addresses",addresses);
        for (Address address:addresses){
            System.out.println("id:"+address.getAddressId());
            System.out.println("content:"+address.getAddressContent());
            System.out.println(address.getAddressTel());
            System.out.println(address.getReceiverName());
            System.out.println(address.getAddressContent());
        }

        return "user/personal/user/address";
    }

    //   收货地址页面
    @RequestMapping(value = "/addaddress", method = RequestMethod.GET)
    public String addaddress(HttpSession session,Integer addressId,Map<String, Object> map) {

        return "user/personal/user/addaddress";
    }

    //   收货地址页面
    @RequestMapping(value = "/addhandleaddress", method = RequestMethod.POST)
    public String addaddress(HttpSession session, Address address,Map<String, Object> map) {
        System.out.println("ddddddddddddddddddddddddd");
        Integer userId= (Integer) session.getAttribute("userId");
        //Integer uid=Integer.parseInt(userId);
        User user=userService.selectUserByUserId(userId);
        Address address1=new Address();
        address1.setAddressState(1);
        address1.setUserId(userId);
        address1.setReceiverName(address.getReceiverName());
        address1.setAddressTel(address.getAddressTel());
        address1.setAddressContent(address.getAddressContent());
       int n= goodsAddressService.addAddress(address1);
        System.out.println(n);
        map.put("user",user);
        return "redirect:/user/address.action";
    }
    //   收货地址页面
    @RequestMapping(value = "/updateaddress", method = RequestMethod.GET)
    public String updateaddress(HttpSession session,Integer addressId,Map<String, Object> map) {
        Address address=goodsAddressService.getAddressByAddressId(addressId);
        System.out.println("update:"+address.getAddressTel());
        map.put("address",address);
        return "user/personal/user/updateaddress";
    }
    //   收货地址页面
    @RequestMapping(value = "/updatehandleaddress", method = RequestMethod.POST)
    public String updatehandleaddress(HttpSession session, Address address,Map<String, Object> map) {
        System.out.println(address.getAddressId());
        System.out.println(address.getAddressContent());
        System.out.println(address.getReceiverName());
        //System.out.println(address.get);
       int n= goodsAddressService.updateAddressSelective(address);
        System.out.println(n);
        return "redirect:/user/address.action";
    }

    //设置默认收货地址
    @RequestMapping(value = "/ajaxdefultaddress", method = RequestMethod.POST)
    @ResponseBody
    public Address ajaxdefultaddress(HttpSession session, @RequestParam(value = "addressId",required=false) Integer addressId, Map<String,Object> map) {
        Integer userId= (Integer) session.getAttribute("userId");
        //System.out.println("addressid:"+address.getAddressId());
        System.out.println("addressid:"+addressId);
        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
        Address address=new Address();
        address.setUserId(userId);
       List<Address> addresses= goodsAddressService.getAddressByUserId(userId);
        for(Address address1:addresses){
            System.out.println("addddddddddddddddddddd:"+address1.getAddressId());
            int n=goodsAddressService.updateAddressById(address1.getAddressId(),1);
            System.out.println("n:"+n);
        }
        int n2=goodsAddressService.updateAddressById(addressId,0);
        System.out.println("n2:"+n2);
        return address;
    }


    //设置默认收货地址
    @RequestMapping(value = "/deleteaddress", method = RequestMethod.GET)
    public String deleteaddress(HttpSession session,@RequestParam("addressId")  Integer addressId, Map<String,Object> map) {

        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");

        System.out.println("addressId:"+addressId);
        int n=goodsAddressService.deleteAddress(addressId);

        System.out.println(n);

        return "redirect:/user/address.action";
    }
}
