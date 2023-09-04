package com.setbang.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.PartnerVO;

@Repository
public class PartnerDAOImpl implements PartnerDAO{
	private static final Logger logger = LoggerFactory.getLogger(PartnerDAOImpl.class);
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 세션아이디로 신청페이지에 이름, 전화번호 넣기
	@Override
	public PartnerVO selectInfo(String id) throws Exception {
		// TODO Auto-generated method stub
		logger.info("selectInfo DAO");
		System.out.println("=> Mybatis selectInfo() 호출");
		return mybatis.selectOne("PartnerDAO.selectInfo", id);
	}

	// 협력업체 정보 불러오기
	@Override
	public String selectCompany(String id) {
		// TODO Auto-generated method stub
		logger.info("selectCompany DAO");
		System.out.println("=> Mybatis selectCompany() 호출");
		return mybatis.selectOne("PartnerDAO.selectCompany", id);
	}
	
	// 세션아이디로  mem_code 찾기
	@Override
	public int followMemCode(String id) {
		// TODO Auto-generated method stub
		logger.info("followMemCode DAO");
		System.out.println("=> Mybatis followMemCode() 호출");
		return mybatis.selectOne("PartnerDAO.followMemCode", id);
	}

	// 세션아이디로  name 찾기
	@Override
	public String followName(String id) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis followName() 호출");
		return mybatis.selectOne("PartnerDAO.followName", id);
	}

	// 세션아이디로 tel 찾기
	@Override
	public String followTel(String id) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis followTel() 호출");
		return mybatis.selectOne("PartnerDAO.followTel", id);
	}

	// 협력업체 서비스 신청
	@Override
	public void insertCompany(PartnerVO vo) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis insertCompany() 호출");
		mybatis.insert("PartnerDAO.insertCompany", vo);
	}

}
