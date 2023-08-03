package com.setbang.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setbang.controller.MemberController;
import com.setbang.dao.MemberDAO;
import com.setbang.domain.MemberVO;

@Service("MemberService")
public class MemberServiceImpl implements MemberService{
	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);

	
	@Autowired
	private MemberDAO memberDAO;
	
	public MemberVO getLogin(MemberVO vo) {
		logger.info("getLogin 서비스impl");
		System.out.println("logger가 안먹혀서 system.println 사용함 - getlogin서비스impl탔음");
		return memberDAO.getLogin(vo);
	}
	

}
