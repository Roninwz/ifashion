package com.zua.ifashion.person.service;

import com.zua.ifashion.person.entity.DesignerAuth;
import com.zua.ifashion.person.vo.AuthDesignerVo;

import java.util.List;

public interface DesignerAuthService {



    //添加管理员不为空字段
    int addDesignerAuthSelective(DesignerAuth designerAuth);
    //删除管理员
    int deleteDesignerAuth(Integer authId);

    //更新管理员不为空字段
    int updateDesignerAuthSelective(DesignerAuth designerAuth);

    DesignerAuth selectDesignerByUserId(Integer userId);
    DesignerAuth selectDesignerByAuthId(Integer authId);
    List<AuthDesignerVo> getAllDesignerAuths();
}
