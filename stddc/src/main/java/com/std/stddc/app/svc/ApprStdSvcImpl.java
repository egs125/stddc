package com.std.stddc.app.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.std.stddc.app.dao.ApprStdDao;

@Service
public class ApprStdSvcImpl implements ApprStdSvc {

	@Autowired
	private ApprStdDao apprStdDao;
}
