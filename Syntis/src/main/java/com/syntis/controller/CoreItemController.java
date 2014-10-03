package com.syntis.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.syntis.bean.CoreItem;
import com.syntis.service.CoreItemService;
import com.syntis.util.Util;

@Controller
@RequestMapping("/{template}_coreitem")
public class CoreItemController {
	@Autowired
	private CoreItemService coreItemService;
	 
	@RequestMapping("/getItems")
	@ResponseBody
	public List<CoreItem> findItems(){
		System.out.println("@controller: findItems, @ResponseBody: json");
		List<CoreItem> list = coreItemService.queryCoreItem();
		return list;
	}
	/**
	 * draw charts with c3.js
	 * @param chartType : pie, donut, line
	 * @return
	 */
	@RequestMapping(value="/dataCharts/{chartType}", method=RequestMethod.POST)
	@ResponseBody
	public List<Object> getDataCountForCharts(@PathVariable String chartType){
		System.out.println("@controller: getDataCountForCharts");
		// key為item type name，value為count(*)
		List<Map<String, Integer>> querylist = coreItemService.queryCountForCharts();
		if(!chartType.equals("line")){
			// 資料格式[["前下巴",2],["後下巴",3],["後擾流",5],["配件",7],["避震器",3]]
			List<Object> arraylist = new ArrayList<Object>();// List<List<Object>>
			List<Object> datalist = null;
			for (Map<String, Integer> map : querylist) {
				datalist = new ArrayList<Object>(map.values());
				arraylist.add(datalist);
			}
			return arraylist;
		}else{
			// 資料格式[{"itemTypeName":"前下巴","count":2},{"itemTypeName":"後下巴","count":3},{"itemTypeName":"後擾流","count":5}]
			List<Object> converterlist = new ArrayList<Object>();
			converterlist.addAll(querylist);
			return converterlist;
		}
	}
	
	
	@RequestMapping("/layout")
    public String getItemPartialPage(@PathVariable String template) {
		System.out.println("just want to forward to item.jsp");
        return template + "/item";
    }
	
	
	@RequestMapping(value = " /find/{frequency}", method=RequestMethod.GET)
	public String findItemsAndPrintLogByfrequency(@PathVariable Integer frequency){
		//印五次 test for rex [http://localhost:8080/Spatis/item/find2/5.ok]
		List<CoreItem> list = coreItemService.queryCoreItem();
		for (CoreItem bean : list) {
			Util.printBean(bean);
		}
		int times = 0;
		while (times < frequency) {
			System.out.println("test for rex");
			times++;
		}
		return "item";
	}
}
