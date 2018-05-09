package com.ptjob.service;

import com.ptjob.entity.Collect;

public interface CollectService {
	boolean addCollect(Collect collect);

	Collect selectCollection(Collect collect);
	
}
