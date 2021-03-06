package com.std.stddc.app.vo;

import java.io.Serializable;

public class AppStdVO implements Serializable{

	public AppStdVO() {}
	
	private String voca;			//단어명
	private String vType;			//단어유형
	private String vSubst;			//대체단어
	private String vEng;			//영문명
	private String vEngShort;		//영문약어명
	private String vDef;			//정의
	private String vSource;			//출처
	private String vAppDt;			//신청일시
	private String vAppStts;		//단어 신청상태
	
	public String getVoca() {
		return voca;
	}
	public void setVoca(String voca) {
		this.voca = voca;
	}
	public String getvType() {
		return vType;
	}
	public void setvType(String vType) {
		this.vType = vType;
	}
	public String getvSubst() {
		return vSubst;
	}
	public void setvSubst(String vSubst) {
		this.vSubst = vSubst;
	}
	public String getvEng() {
		return vEng;
	}
	public void setvEng(String vEng) {
		this.vEng = vEng;
	}
	public String getvEngShort() {
		return vEngShort;
	}
	public void setvEngShort(String vEngShort) {
		this.vEngShort = vEngShort;
	}
	public String getvDef() {
		return vDef;
	}
	public void setvDef(String vDef) {
		this.vDef = vDef;
	}
	public String getvSource() {
		return vSource;
	}
	public void setvSource(String vSource) {
		this.vSource = vSource;
	}
	public String getvAppDt() {
		return vAppDt;
	}
	public void setvAppDt(String vAppDt) {
		this.vAppDt = vAppDt;
	}
	public String getvAppStts() {
		return vAppStts;
	}
	public void setvAppStts(String vAppStts) {
		this.vAppStts = vAppStts;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public String getDgName() {
		return dgName;
	}
	public void setDgName(String dgName) {
		this.dgName = dgName;
	}
	public String getdType() {
		return dType;
	}
	public void setdType(String dType) {
		this.dType = dType;
	}
	public String getdLength() {
		return dLength;
	}
	public void setdLength(String dLength) {
		this.dLength = dLength;
	}
	public String getdDef() {
		return dDef;
	}
	public void setdDef(String dDef) {
		this.dDef = dDef;
	}
	public String getdAppStts() {
		return dAppStts;
	}
	public void setdAppStts(String dAppStts) {
		this.dAppStts = dAppStts;
	}

}
