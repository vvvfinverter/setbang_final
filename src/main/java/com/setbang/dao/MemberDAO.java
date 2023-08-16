package com.setbang.dao;

import com.setbang.domain.MemberVO;

public interface MemberDAO {
    
    // 로그인
    MemberVO getLogin(MemberVO vo);
    
    // 회원가입
    void getSignup(MemberVO vo);
    
    // 세션아이디로 회원코드 가져오기
    int getMemCodeBySessionId(String sessionId);

    // 세션아이디로 회원플랜등급 가져오기
    String getMemPlanBySessionId(String sessionId);
}
