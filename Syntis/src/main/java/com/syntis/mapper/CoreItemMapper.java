package com.syntis.mapper;

import java.util.List;
import java.util.Map;

import com.syntis.bean.CoreItem;
// like dao
public interface CoreItemMapper {
	List<CoreItem> queryCoreItem();
	List<Map<String,Integer>> queryTypeCount();// 要跟mapper.xml同
}
