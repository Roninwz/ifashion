package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.DesignerAuth;
import com.zua.ifashion.person.vo.AuthDesignerVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DesignerAuthMapper {

    //添加管理员不为空字段
    int addDesignerAuthSelective(DesignerAuth designerAuth);
    //删除管理员
    int deleteDesignerAuth(@Param("authId")Integer authId);

    //更新管理员不为空字段
    int updateDesignerAuthSelective(DesignerAuth designerAuth);

    DesignerAuth selectDesignerByUserId(@Param("userId") Integer userId);

    DesignerAuth selectDesignerByAuthId(@Param("authId") Integer authId);

    List<AuthDesignerVo> getAllDesignerAuths();


}
