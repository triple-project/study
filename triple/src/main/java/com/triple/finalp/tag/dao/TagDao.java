package com.triple.finalp.tag.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface TagDao {

	List<String> getList(String string);

	List<String> getCate();

	void insertTag(@Param("tag_id")String tag_id,@Param("tag_tag") String tag_tag);


}
