package com.zua.ifashion.person.service.impl;

import com.zua.ifashion.person.entity.Rank;
import com.zua.ifashion.person.mapper.RankMapper;
import com.zua.ifashion.person.service.RankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("rankService")
public class RankServiceImpl implements RankService {
    @Autowired
    private RankMapper rankMapper;
    @Override
    public int addRank(Rank rank) {
        return rankMapper.addRank(rank);
    }

    @Override
    public int deleteRank(Integer rankId) {
        return rankMapper.deleteRank(rankId);
    }

    @Override
    public int updateRank(Rank rank) {
        return rankMapper.updateRank(rank);
    }

    @Override
    public Rank selectRankByRankId(Integer rankId) {
        return rankMapper.selectRankByRankId(rankId);
    }

    @Override
    public List<Rank> getAllRanks() {
        return rankMapper.getAllRanks();
    }

    @Override
    public int getAllRankCount() {
        return rankMapper.getAllRankCount();
    }
}
