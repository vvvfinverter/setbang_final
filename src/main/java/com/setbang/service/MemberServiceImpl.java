package com.setbang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setbang.dao.MemberDAOImpl;
import com.setbang.domain.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAOImpl memberDAO;
	
	public MemberVO selectMember(MemberVO vo) {
		return memberDAO.selectMember(vo);
	}
	

}
