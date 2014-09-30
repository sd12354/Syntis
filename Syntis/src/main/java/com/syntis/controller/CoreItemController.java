package com.syntis.controller;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.syntis.bean.CoreItem;
import com.syntis.service.CoreItemService;

@Controller
@RequestMapping("/coreitem")
public class CoreItemController {
	@Autowired
	private CoreItemService coreItemService;
	 
	@RequestMapping("/getall")
	@ResponseBody
	public List<CoreItem> findItems(){
		System.out.println("@controller: findItems, @ResponseBody: json");
		List<CoreItem> list = coreItemService.queryCoreItem();
		return list;
	}
	@RequestMapping("/layout")
    public String getItemPartialPage() {
		System.out.println("just want to forward to item.jsp");
        return "item";
    }
	
	
	@RequestMapping(value = " /find/{frequency}", method=RequestMethod.GET)
	public String findItemsAndPrintLogByfrequency(@PathVariable Integer frequency){
		//印五次 test for rex [http://localhost:8080/Spatis/item/find2/5.ok]
		List<CoreItem> list = coreItemService.queryCoreItem();
		for (CoreItem bean : list) {
			System.out.println(ToStringBuilder.reflectionToString(bean));
		}
		int times = 0;
		while (times < frequency) {
			System.out.println("test for rex");
			times++;
		}
		return "item";
	}
}
