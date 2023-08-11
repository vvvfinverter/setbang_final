package com.setbang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.setbang.domain.PubOfficeVO;

@Repository("PubOfficeDAO") //현재 class를 dao bean으로 등록
public class PubOfficeDAOImpl implements PubOfficeDAO{
	
	private static final Logger logger = LoggerFactory.getLogger(PubOfficeDAOImpl.class);
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<PubOfficeVO> selectPubOffice(PubOfficeVO vo) {
		logger.info("PubOfficeDAO.selectPubOffice 호출");
		System.out.println("--> Mybatis selectPuboffice() 호출");
		return mybatis.selectList("PubOfficeDAO.selectPubOffice",vo);
	}
	
	@Override
	public PubOfficeVO selectMemCode(PubOfficeVO vo) {
		logger.info("PubOfficeDAO.selectMemCode 탔음");
		System.out.println("selectMemCode mybatis이동전단계");
		return mybatis.selectOne("PubOfficeDAO.selectMemCode", vo);
	}
	

	@Override
	public int insertPubOffice(PubOfficeVO vo) {
		logger.info("PubOfficeDAO.insertPubOffice 호촐");
		System.out.println("--> Mybatis insertPubOffice() 호출");
		return mybatis.insert("PubOfficeDAO.insertOfficeBooking",vo);
	}

	@Override 
	public int updatePubOffice(PubOfficeVO vo) {
		logger.info("PubOfficeDAO.updatePubOffice 호출");
		System.out.println("--> Mybatis updatePubOffice() 호출");
		return mybatis.update("PubOfficeDAO.updatePubOffice",vo);
	}

	@Override
	public PubOfficeVO selectPubCat(PubOfficeVO vo) {
		logger.info("PubOfficeDAO.selectPubCat 탔음");
		return mybatis.selectOne("PubOfficeDAO.selectPubCat",vo);
	}




	
}
