package com.syntis.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.syntis.bean.CoreItem;
import com.syntis.mapper.CoreItemMapper;
@Service
public class CoreItemServiceImpl implements CoreItemService {

	@Autowired
	private CoreItemMapper coreItemMapper;
	
	@Override
	public List<CoreItem> queryCoreItem() {
		System.out.println("@serviceImpl");
		return this.coreItemMapper.queryCoreItem();
	}

	@Override
	public List<Map<String,Integer>> queryCountForCharts() {
		return this.coreItemMapper.queryTypeCount();
	}

}
