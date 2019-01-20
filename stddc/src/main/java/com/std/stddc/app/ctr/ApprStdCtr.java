package com.std.stddc.app.ctr;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.std.stddc.app.svc.ApprStdSvc;
import com.std.stddc.app.vo.AppStdVocaVO;

@Controller
public class ApprStdCtr {

	@Autowired 
	private ApprStdSvc apprStdSvc;
	
	@RequestMapping("/apprView")
	public String getAppView(Model model) throws Exception {
		return "app/stdAppr";
	}
	
	@RequestMapping("/getAppVocaList")
	public @ResponseBody ArrayList<AppStdVocaVO> selectAppVocaList(
			@RequestBody HashMap<String, Object> param,
			Model model
			) throws Exception {
		
		ArrayList<AppStdVocaVO> list = apprStdSvc.selectAppVocaList();
		
		return list;
	}
}
