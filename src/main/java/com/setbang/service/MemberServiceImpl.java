package com.setbang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setbang.dao.MemberDAO;
import com.setbang.domain.MemberVO;

@Service("MemberService")
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberDAO memberDAO;

    // 로그인
    public MemberVO getLogin(MemberVO vo) {
        return memberDAO.getLogin(vo);
    }
    
    // 회원가입
    public void getSignup(MemberVO vo) {
    	memberDAO.getSignup(vo);
    }
    
    // 세션아이디로 회원코드 가져오기
    public int getMemCodeBySessionId(String sessionId) {
        return memberDAO.getMemCodeBySessionId(sessionId);
    }

    // 세션아이디로 회원플랜등급 가져오기
    public String getMemPlanBySessionId(String sessionId) {
    	return memberDAO.getMemPlanBySessionId(sessionId);
    }

    // 세션아이디로 프로필 가져오기
    public String getProfileBySessionId(String sessionId) {
    	return memberDAO.getProfileBySessionId(sessionId);
    }

    // 아이디 중복 확인
    public int idCheck(String id) {
    	return memberDAO.idCheck(id);
    }
    
    // 아이디 찾기
    public MemberVO findId(MemberVO vo) {
    	return memberDAO.findId(vo);
    }

    // 패스워드 찾기
    public MemberVO findPw(MemberVO vo) {
    	return memberDAO.findPw(vo);
    }
    
    // 프로필 사진 변경
    public void updateProfile(MemberVO vo) {
    	memberDAO.updateProfile(vo);
    }
    
    // 회원 정보 변경
    public void updateMemberInfo(MemberVO vo) {
    	memberDAO.updateMemberInfo(vo);
    }
    
    // 회원ID로 회원승인여부 가져오기
    public MemberVO findApporval(MemberVO vo) {
    	return memberDAO.findApporval(vo);
    }
}
