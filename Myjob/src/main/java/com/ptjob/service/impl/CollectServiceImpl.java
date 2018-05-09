package com.ptjob.service.impl;

import java.text.SimpleDateFormat;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ptjob.dao.CollectMapper;
import com.ptjob.entity.Collect;
import com.ptjob.service.CollectService;

@Service
public class CollectServiceImpl implements CollectService{
	@Resource
	private CollectMapper cm;
	
	public boolean addCollect(Collect collect) {
		// TODO Auto-generated method stub
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyÄêMMÔÂddÈÕ");
		String time = sdf.format(System.currentTimeMillis());
		collect.setCollectTime(time);
		return cm.insert(collect)>0;
	}

	public Collect selectCollection(Collect collect) {
		// TODO Auto-generated method stub
		return cm.selectCollection(collect);
	}

}
