package com.std.stddc.app.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.std.stddc.app.vo.AppStdVocaVO;

@Repository
public class ApprStdDao {

	@Autowired private SqlSession sql;
	
	private static final String NAMESPACE = "ApprStdMapper.";

	public ArrayList<AppStdVocaVO> selectAppVocaList() {
		return (ArrayList) sql.selectList(NAMESPACE + "selectAppVocaList");
	}
}
