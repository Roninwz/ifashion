package com.zua.ifashion.person.service;

import com.zua.ifashion.person.entity.Tag;

import java.util.List;

public interface TagService  {

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


    Tag selectTagByTagId(Integer tagId);
}
