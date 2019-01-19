package com.std.stddc.app.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ApprStdDao {

	@Autowired private SqlSession sql;
	
	private static final String NAMESPACE = "ApprStdMapper.";
}
