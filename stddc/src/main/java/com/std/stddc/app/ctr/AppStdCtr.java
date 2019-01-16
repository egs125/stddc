package com.std.stddc.app.ctr;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.std.stddc.app.svc.AppStdSvc;
import com.std.stddc.app.vo.AppStdDomainVO;
import com.std.stddc.app.vo.AppStdVocaVO;

@Controller
public class AppStdCtr {

	@Autowired
	private AppStdSvc appStdSvc;
	
	@RequestMapping("/getAppView")
	public String getAppView(Model model) {
		return "app/stdApp";
	}
	/*
	@RequestMapping("/appView")
	public String getAppView(Model model) {
		return "app/AppStd";
	}
	*/
	
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
	public @ResponseBody String saveNewVoca(AppStdVocaVO vo
			,Model model
			,HttpServletRequest request
			,HttpServletResponse response
			) throws Exception {
		
		String rtn = "";
	
		int cnt = appStdSvc.chkRegVoca(vo.getVoca());
		
		if(cnt > 0) {
			rtn = "이미 신청한 단어가 있습니다.";
		}else{
			int result = appStdSvc.saveNewVoca(vo);
			
			rtn = result > 0? "신청 완료!":"문제 발생ㅠ";
		}
		
		response.setContentType("text/html;charset=UTF-8");
		return rtn;
	}
	
	@RequestMapping("/appNewDomain")
	public @ResponseBody String saveNewDomain(AppStdDomainVO vo) throws Exception {
		
		String rtn = "";
		
		int cnt = appStdSvc.chkRegDomain(vo.getDomain());
		
		if(cnt > 0) {
			rtn = "이미 신청한 도메인이 있습니다.";
		}else{
			int result = appStdSvc.saveNewDomain(vo);
			
			rtn = result > 0? "신청 완료!":"문제 발생ㅠ";
		}
			
		
		return rtn;
	}
	
	@RequestMapping("/appListView")
	public String getAppListView(Model model) {
		return "app/appList";
	}
}
