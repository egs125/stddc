package com.std.stddc.app.svc;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.std.stddc.app.dao.ApprStdDao;
import com.std.stddc.app.vo.AppStdVocaVO;

@Service
public class ApprStdSvcImpl implements ApprStdSvc {

	@Autowired
	private ApprStdDao apprStdDao;

	@Override
	public ArrayList<AppStdVocaVO> selectAppVocaList() {
		return apprStdDao.selectAppVocaList();
	}
}
