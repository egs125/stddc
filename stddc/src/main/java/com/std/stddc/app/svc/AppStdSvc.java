package com.std.stddc.app.svc;

import java.util.ArrayList;

import com.std.stddc.app.vo.AppStdDomainVO;
import com.std.stddc.app.vo.AppStdVO;
import com.std.stddc.app.vo.AppStdVocaVO;

public interface AppStdSvc {

	ArrayList retrieveAppWord();
	
	ArrayList retrieveAppVoca();
	
	ArrayList retrieveAppDomain();

	int saveNewVoca(AppStdVocaVO vo);

	int chkRegVoca(String voca);

	int chkRegDomain(String domain);

	int saveNewDomain(AppStdDomainVO vo);
}
