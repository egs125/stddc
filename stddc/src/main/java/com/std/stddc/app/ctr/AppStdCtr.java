package com.std.stddc.app.ctr;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.std.stddc.app.svc.AppStdSvc;
import com.std.stddc.app.vo.AppStdVO;

@Controller
public class AppStdCtr {

	@Autowired
	private AppStdSvc appStdSvc;
	
	@RequestMapping("/appView")
	public String getAppView(
				Model model
								) {
		
		return "app/AppStd";
	}
	
	@RequestMapping("/appWord")
	public ArrayList retrieveAppWord(
				Model model
									   ) {
		ArrayList list = appStdSvc.retrieveAppWord();
		
		return list;
	}
	
	@RequestMapping("/appVoca")
	public ArrayList retrieveAppVoca(
				Model model
									   ) {
		ArrayList list = appStdSvc.retrieveAppVoca();
		
		return list;
	}
	
	@RequestMapping("/appDomain")
	public ArrayList retrieveAppDomain(
				Model model
									   ) {
		ArrayList list = appStdSvc.retrieveAppDomain();
		
		return list;
	}
	
	@RequestMapping("/appNewVoca")
	public String saveNewVoca(AppStdVO vo) throws Exception {
		
		String rtn = "";
		
		//int result = appStdSvc.saveNewVoca(vo);
		
		return rtn;
	}
}
