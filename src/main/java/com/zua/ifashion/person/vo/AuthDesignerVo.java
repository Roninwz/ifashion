package com.zua.ifashion.person.vo;

import com.zua.ifashion.person.entity.DesignerAuth;
import com.zua.ifashion.person.entity.User;

import java.util.Date;

public class AuthDesignerVo extends DesignerAuth{

   private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public AuthDesignerVo() {
    }

    public AuthDesignerVo(User user) {
        this.user = user;
    }

    public AuthDesignerVo(Integer authId, Integer userId, String cardNum, String authImgurl, Integer authState, Date authDate, User user) {
        super(authId, userId, cardNum, authImgurl, authState, authDate);
        this.user = user;
    }

}
