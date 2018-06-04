package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.Rank;

import java.util.List;

public interface RankMapper {
    //添加
    int addRank(Rank rank);
    //删除
    int deleteRank(Integer rankId);
    //修改
    int updateRank(Rank rank);

    Rank selectRankByRankId(Integer rankId);

    //查询所有
    List<Rank> getAllRanks();
    //查询等级数量
    int getAllRankCount();
}