package com.std.stddc.app.svc;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.std.stddc.app.dao.AppStdDao;
import com.std.stddc.app.vo.AppStdDomainVO;
import com.std.stddc.app.vo.AppStdVocaVO;

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
		
		return null;
	}

	@Override
	public int saveNewVoca(AppStdVocaVO vo) {
		return appStdDao.saveNewVoca(vo);
	}

	@Override
	public int chkRegVoca(String voca) {
		return appStdDao.chkRegVoca(voca);
	}

	@Override
	public int chkRegDomain(String domain) {
		return appStdDao.chkRegDomain(domain);
	}

	@Override
	public int saveNewDomain(AppStdDomainVO vo) {
		return appStdDao.saveNewDomain(vo);
	}
	
	
}
