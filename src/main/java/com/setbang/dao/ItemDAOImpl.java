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
		logger.info("ItemDAO.comboItemCat 호출");
		return mybatis.selectList("ItemDAO.comboItemCat",vo);
	}

	@Override
	public List<ItemVO> comboItem(int iCatCode) {
		logger.info("ItemDAO.comboItem 호출");
		System.out.println("iCatCode : " + iCatCode);
		return mybatis.selectList("ItemDAO.comboItem", iCatCode);
	}

	@Override
	public void insertItemApply(ItemVO vo) {
		logger.info("ItemDAO.insertItemApply 호출");
		mybatis.insert("ItemDAO.insertItemApply",vo);
	}

	/**
	 * 
	 */
//	@Override
//	public void insertItemApplyDetail(ItemVO vo) {
//		
//		logger.info("ItemDAO.insertItemApplyDetail 호출");
//		System.out.println("물품신청내역코드 시퀀스: " + vo.getIApplayDetailCode());
//		System.out.println("물품신청코드(FK) 시퀀스: " + vo.getIApplyCode());
//		System.out.println("물품신청수량 : " + vo.getIAmount());
//		mybatis.insert("ItemDAO.insertItemApplyDetail", vo);
//	}


}
