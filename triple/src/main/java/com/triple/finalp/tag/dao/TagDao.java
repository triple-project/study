package com.triple.finalp.tag.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.triple.finalp.tag.vo.TagVo;

@Mapper
public interface TagDao {

	List<String> getList(String string);

	List<String> getCate();

	void insertTag(@Param("tag_id")String tag_id,@Param("tag_tag") String tag_tag);

	ArrayList<TagVo> getList2(String product_category);

	void deltag(String tag_id);


}
