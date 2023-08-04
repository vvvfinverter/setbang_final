package com.setbang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setbang.dao.MemberDAO;
import com.setbang.domain.MemberVO;

@Service("MemberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAO memberDAO;
	
	// 로그인
	public MemberVO getLogin(MemberVO vo) {
		return memberDAO.getLogin(vo);
	}
	

}
