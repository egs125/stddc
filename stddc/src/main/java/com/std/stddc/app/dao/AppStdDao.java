package com.std.stddc.app.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.std.stddc.app.vo.AppStdVO;
import com.std.stddc.common.AbstractDAO;

@Repository
public class AppStdDao extends AbstractDAO {

	@Autowired private SqlSession sql;
	
	private static final String NAMESPACE = "AppStdMapper.";
	
	public ArrayList retrieveAppWord() {
		return (ArrayList) sql.selectList(NAMESPACE + "retrieveAppWord");
	}

	public int saveNewVoca(AppStdVO vo) {
		return sql.insert(NAMESPACE + "saveNewVoca", vo);
	}
	
}
