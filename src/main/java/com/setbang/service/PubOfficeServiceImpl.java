package com.setbang.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setbang.controller.PubOfficeController;
import com.setbang.dao.PubOfficeDAO;
import com.setbang.domain.PubOfficeVO;

@Service("pubOfficeService")
public class PubOfficeServiceImpl implements PubOfficeService{
	
	private static final Logger logger = LoggerFactory.getLogger(PubOfficeServiceImpl.class);
	
	@Autowired
	private PubOfficeDAO pubOfficeDAO;
	
	
	//사무실 예약 정보 조희 그러나 추가 수정 필요할 것 같아 보임
	@Override
	public List<PubOfficeVO> selectPubOfficeInfo(PubOfficeVO vo) {
		logger.info("selectPubOfficeInfo service 탔음 -> 추가 수정이 많이 필요함");
		return pubOfficeDAO.selectPubOffice(vo);
	}
	
	


	//공용 오피스 카테고리 
	@Override
	public PubOfficeVO selectPubCat(PubOfficeVO vo) {
		logger.info("PubOfficeServiceImpl.selectPubCat 탔음");
		return pubOfficeDAO.selectPubCat(vo);
	}


	public PubOfficeVO selectMemCode(PubOfficeVO vo) {
		logger.info("PubOfficeServiceImpl.selectMemCode");
		return pubOfficeDAO.selectMemCode(vo);
	}
	

	
	//booking 테이블 insert
	@Override
	public void insertPubOffice(PubOfficeVO vo) {
		// TODO Auto-generated method stub
		logger.info("PubOfficeServiceImpl.insertPubOffice 탔음");
		System.out.println("service : " + vo.getPubCode());
		pubOfficeDAO.insertPubOffice(vo);
	}




	@Override
	public List<PubOfficeVO> selectPubOfficeCombo(PubOfficeVO vo) {
		// TODO Auto-generated method stub
		logger.info("PubOfficeServiceImpl.selectPubOfficeCombo 탔음");
		return pubOfficeDAO.selectPutOfficeCombo(vo);
	}
	
	
}