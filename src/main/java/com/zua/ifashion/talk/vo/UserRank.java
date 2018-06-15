package com.zua.ifashion.talk.vo;

import com.zua.ifashion.person.entity.User;

import java.util.Date;

public class UserRank extends User{
    private String rankName;

    public String getRankName() {
        return rankName;
    }

    public void setRankName(String rankName) {
        this.rankName = rankName;
    }

    public UserRank(Integer userId, Integer rankId, String username, String password, String truename, String tel, String email, String sex, Integer age, Date birth, Integer userMark, Integer score, String userImgurl, String userIntroduce, Date registerDate, String userTag, Integer state, String rankName) {
        super(userId, rankId, username, password, truename, tel, email, sex, age, birth, userMark, score, userImgurl, userIntroduce, registerDate, userTag, state);
        this.rankName = rankName;
    }

    public UserRank() {
    }
}
