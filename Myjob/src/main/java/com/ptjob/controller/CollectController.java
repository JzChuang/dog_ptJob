package com.ptjob.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ptjob.entity.Collect;
import com.ptjob.entity.Relation;
import com.ptjob.service.CollectService;

@Controller
public class CollectController {

	@Resource
	private CollectService cs;
	
	@RequestMapping(value = "collectjobs", method = RequestMethod.POST, produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String sendResumes(Collect collect) {
		if (cs.selectCollection(collect) == null) {
			
			if (cs.addCollect(collect))
				return "收藏成功";
			else
				return "收藏失败";

		}
		return "你已收藏该职位";
	}
}
