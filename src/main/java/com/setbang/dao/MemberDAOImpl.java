package com.setbang.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.MemberVO;

@Repository("MemberDAO")
public class MemberDAOImpl implements MemberDAO {
    private static final Logger logger = LoggerFactory.getLogger(MemberDAOImpl.class);

    @Autowired
    private SqlSessionTemplate mybatis;

    // 로그인
    public MemberVO getLogin(MemberVO vo) {
        logger.info("getLogin DAO");
        System.out.println("=> Mybatis getLogin() 호출");
        return mybatis.selectOne("MemberDAO.getLogin", vo);
    }
    
    // 회원가입
    public void getSignup(MemberVO vo) {
		// TODO Auto-generated method stub
		logger.info("getSignup DAO");
		System.out.println("=> Mybatis getSignup() 호출");
        mybatis.insert("MemberDAO.getSignup", vo);
    }
    
    // 세션 아이디로 회원번호 가져오기
    public int getMemCodeBySessionId(String sessionId) {
    	logger.info("getMemCodeBySessionId DAO");
        System.out.println("=> Mybatis getMemCodeBySessionId() 호출");
        return mybatis.selectOne("MemberDAO.getMemCodeBySessionId", sessionId);
    }
    
    // 세션아이디로 회원플랜등급 가져오기
    public String getMemPlanBySessionId(String sessionId) {
    	logger.info("getMemPlanBySessionId DAO");
    	System.out.println("=> Mybatis getMemPlanBySessionId() 호출");
    	return mybatis.selectOne("MemberDAO.getMemPlanBySessionId", sessionId);
    }

}
