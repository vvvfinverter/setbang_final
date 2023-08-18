package com.setbang.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.ItemVO;

@Repository("ItemDAO")
public class ItemDAOImpl implements ItemDAO{
	private static final Logger logger = LoggerFactory.getLogger(ItemDAOImpl.class);
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<ItemVO> comboItemCat(ItemVO vo) {
		logger.info("ItemDAOImpl.comboItemCat 호출");
		return mybatis.selectList("ItemDAO.comboItemCat",vo);
	}

	@Override
	public List<ItemVO> comboItem(ItemVO vo) {
		logger.info("ItemDAOImpl.comboItem 호출");
		return mybatis.selectList("ItemDAO.comboItem", vo);
	}
	
	

}
