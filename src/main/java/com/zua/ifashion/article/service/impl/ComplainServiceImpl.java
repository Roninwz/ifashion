package com.zua.ifashion.article.service.impl;

import com.zua.ifashion.article.entity.Complain;
import com.zua.ifashion.article.mapper.ComplainMapper;
import com.zua.ifashion.article.service.ComplainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("complainService")
public class ComplainServiceImpl implements ComplainService {

    @Autowired
    private ComplainMapper complainMapper;

    @Override
    public int addComplain(Complain complain) {
        return complainMapper.addComplain(complain);
    }

    @Override
    public int addComplainSelective(Complain complain) {
        return complainMapper.addComplainSelective(complain);
    }

    @Override
    public int deleteComplain(Integer complainId) {
        return complainMapper.deleteComplain(complainId);
    }

    @Override
    public Complain selectComplainBycomplainedUserid(Integer complainedUserid) {
        return complainMapper.selectComplainByComplainId(complainedUserid);
    }

    @Override
    public Complain selectComplainByComplainId(Integer complainId) {
        return complainMapper.selectComplainByComplainId(complainId);
    }

    @Override
    public List<Complain> selectAllComplain() {
        return complainMapper.selectAllComplain();
    }
}
