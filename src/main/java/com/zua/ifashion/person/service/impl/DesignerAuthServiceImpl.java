package com.zua.ifashion.person.service.impl;

import com.zua.ifashion.person.entity.DesignerAuth;
import com.zua.ifashion.person.mapper.DesignerAuthMapper;
import com.zua.ifashion.person.service.DesignerAuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("designerAuthService")
public class DesignerAuthServiceImpl implements DesignerAuthService {

    @Autowired
    private DesignerAuthMapper designerAuthMapper;
    @Override
    public int addDesignerAuthSelective(DesignerAuth designerAuth) {
        return designerAuthMapper.addDesignerAuthSelective(designerAuth);
    }

    @Override
    public int deleteDesignerAuth(Integer authId) {
        return designerAuthMapper.deleteDesignerAuth(authId);
    }

    @Override
    public int updateDesignerAuthSelective(DesignerAuth designerAuth) {
        return designerAuthMapper.updateDesignerAuthSelective(designerAuth);
    }

    @Override
    public DesignerAuth selectDesignerByUserId(Integer userId) {
        return designerAuthMapper.selectDesignerByUserId(userId);
    }

    @Override
    public DesignerAuth selectDesignerByAuthId(Integer authId) {
        return designerAuthMapper.selectDesignerByAuthId(authId);
    }
}
