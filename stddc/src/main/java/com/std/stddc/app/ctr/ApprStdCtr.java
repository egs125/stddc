package com.std.stddc.app.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.std.stddc.app.svc.ApprStdSvc;

@Controller
public class ApprStdCtr {

	@Autowired 
	private ApprStdSvc apprStdSvc;
	
	@RequestMapping("/apprView")
	public String getAppView(Model model) {
		return "app/stdAppr";
	}
}
