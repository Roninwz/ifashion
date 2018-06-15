package com.zua.ifashion.person.mapper;


import com.zua.ifashion.person.entity.Tag;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TagMapper {

    //添加标签
    int addTagSelective(Tag tag);
    //删除标签
    int deleteTag(int tagId);
    //修改标签
    int updateTagSelective(Tag tag);
    //查询所有标签
    List<Tag> getAllTags();
    //查询标签数量
    int getAllTagCount();

    Tag selectTagByTagId(@Param("tagId") Integer tagId);
}