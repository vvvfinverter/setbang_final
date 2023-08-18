package com.setbang.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("PlanDAO")
public class PlanDAOImpl implements PlanDAO{
	private static final Logger logger = LoggerFactory.getLogger(PlanDAOImpl.class);

	@Autowired
	private SqlSessionTemplate mybatis;


   
}
