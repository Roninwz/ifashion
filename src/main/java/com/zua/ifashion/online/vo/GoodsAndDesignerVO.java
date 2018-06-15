package com.zua.ifashion.online.vo;

import com.zua.ifashion.online.entity.Goods;
import com.zua.ifashion.person.entity.User;

public class GoodsAndDesignerVO extends Goods {
    private User user;

    public GoodsAndDesignerVO(){

    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
