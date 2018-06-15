package com.zua.ifashion.talk.vo;

import java.util.Date;

public class UserDiscuss extends UserRank implements Comparable<UserDiscuss>{
    private Integer count;

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public UserDiscuss(Integer userId, Integer rankId, String username, String password, String truename, String tel, String email, String sex, Integer age, Date birth, Integer userMark, Integer score, String userImgurl, String userIntroduce, Date registerDate, String userTag, Integer state, String rankName, Integer count) {
        super(userId, rankId, username, password, truename, tel, email, sex, age, birth, userMark, score, userImgurl, userIntroduce, registerDate, userTag, state, rankName);
        this.count = count;
    }

    public UserDiscuss() {
    }

    public int compareTo(UserDiscuss ud){
        int i=this.getCount()-ud.getCount();
        return i;
    }

}
