package com.setbang.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.SupportVO;

@Repository("SupportDAO")
public class SupportDAOImpl implements SupportDAO{
	private static final Logger logger = LoggerFactory.getLogger(SupportDAOImpl.class);


	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
    public void insertApply(SupportVO vo) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis insertApply() 호출");
		System.out.println("dao"+vo.getSup_code());
        mybatis.insert("SupportDAO.insertApply", vo);
    }
	
	@Override
    public int findMemcode(String id) {
        System.out.println("=> Mybatis findMemcode() 호출");
        return mybatis.selectOne("SupportDAO.findMemcode", id);
    }
    
	@Override
	public SupportVO selectUser(String id) throws Exception {
		// TODO Auto-generated method stub
		logger.info("selectUser DAO");
		System.out.println("=> Mybatis selectUser() 호출");
		
		return mybatis.selectOne("SupportDAO.selectUser", id);
	}

	@Override
	public String findEmail(String id){
		System.out.println("=> Mybatis findEmail() 호출");
		
		return mybatis.selectOne("SupportDAO.findEmail", id);
	}
	
}
