package com.std.stddc.app.svc;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.std.stddc.app.dao.AppStdDao;
import com.std.stddc.app.vo.AppStdVO;

@Service
public class AppStdSvcImpl implements AppStdSvc {

	@Autowired
	private AppStdDao appStdDao;

	@Override
	public ArrayList retrieveAppWord() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList retrieveAppVoca() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList retrieveAppDomain() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int saveNewVoca(AppStdVO vo) {
		return appStdDao.saveNewVoca(vo);
	}
	
	
}
