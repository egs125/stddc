package com.std.stddc.app.svc;

import java.util.ArrayList;

import com.std.stddc.app.vo.AppStdVO;

public interface AppStdSvc {

	ArrayList retrieveAppWord();
	
	ArrayList retrieveAppVoca();
	
	ArrayList retrieveAppDomain();

	int saveNewVoca(AppStdVO vo);
}
