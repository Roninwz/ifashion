package com.zua.ifashion.person.service.impl;

import com.zua.ifashion.person.entity.Tag;
import com.zua.ifashion.person.mapper.TagMapper;
import com.zua.ifashion.person.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("tagService")
public class TagServiceImpl implements TagService {
    @Autowired
    private TagMapper tagMapper;
    @Override
    public int addTagSelective(Tag tag) {
        return tagMapper.addTagSelective(tag);
    }

    @Override
    public int deleteTag(int tagId) {
        return tagMapper.deleteTag(tagId);
    }

    @Override
    public int updateTagSelective(Tag tag) {
        return tagMapper.updateTagSelective(tag);
    }

    @Override
    public List<Tag> getAllTags() {
        return tagMapper.getAllTags();
    }

    @Override
    public int getAllTagCount() {
        return tagMapper.getAllTagCount();
    }

    @Override
    public Tag selectTagByTagId(Integer tagId) {
        return tagMapper.selectTagByTagId(tagId);
    }
}
