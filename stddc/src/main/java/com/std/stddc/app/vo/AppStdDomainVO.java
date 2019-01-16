package com.std.stddc.app.vo;

import java.io.Serializable;

public class AppStdDomainVO implements Serializable {

	public AppStdDomainVO() {}
	
	private String domain;			//도메인명
	private String dgName;			//도메인 그룹명
	private String iName;			//도메인 인포명
	private String dType;			//도메인 타입
	private String dLength;			//도메인 데이터 길이
	private String dDef;			//도메인 정의
	private String dAppStts;        //도메인 신청상태
	
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
	public String getiName() {
		return iName;
	}
	public void setiName(String iName) {
		this.iName = iName;
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
