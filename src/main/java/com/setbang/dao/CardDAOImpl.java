package com.setbang.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.CardVO;

@Repository("CardDAO")
public class CardDAOImpl implements CardDAO{
	private static final Logger logger = LoggerFactory.getLogger(MemberDAOImpl.class);

	@Autowired
	private SqlSessionTemplate mybatis;

    @Override
    // 카드 등록
    public void addCard(CardVO vo) {
		// TODO Auto-generated method stub
		logger.info("addCard DAO");
		System.out.println("=> Mybatis addCard() 호출");
        mybatis.insert("CardDAO.addCard", vo);
    }
    
    @Override
    // 등록된 카드 조회
    public List<CardVO> getCardList(CardVO vo) {
    	// TODO Auto-generated method stub
    	logger.info("getCardList DAO");
    	System.out.println("=> Mybatis getCardList() 호출");
    	return mybatis.selectList("CardDAO.getCardList", vo);
    }
    
    @Override
    // 카드 삭제
    public void deleteCard(CardVO vo) {
    	// TODO Auto-generated method stub
    	logger.info("deleteCard DAO");
    	System.out.println("=> Mybatis deleteCard() 호출");
    	mybatis.insert("CardDAO.deleteCard", vo);
    }

    @Override
    // 간편 비밀번호 일치여부 확인
    public int getEasypwByCardcode (int cardCode) {
    	// TODO Auto-generated method stub
    	logger.info("getEasypwByCardcode DAO");
    	System.out.println("=> Mybatis getEasypwByCardcode() 호출");
    	return mybatis.selectOne("CardDAO.getEasypwByCardcode", cardCode);
	} 

    
    @Override
    // 간편 비밀번호 변경
    public void updateEasypw(CardVO vo) {
    	// TODO Auto-generated method stub
    	logger.info("updateEasypw DAO");
    	System.out.println("=> Mybatis updateEasypw() 호출");
    	mybatis.update("CardDAO.updateEasypw", vo);
    }

   
}
