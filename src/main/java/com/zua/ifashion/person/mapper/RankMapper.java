package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.Rank;

public interface RankMapper {
    int deleteByPrimaryKey(Integer idRank);

    int insert(Rank record);

    int insertSelective(Rank record);

    Rank selectByPrimaryKey(Integer idRank);

    int updateByPrimaryKeySelective(Rank record);

    int updateByPrimaryKey(Rank record);
}