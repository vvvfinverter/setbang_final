package com.setbang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.setbang.dao.CardDAO;
import com.setbang.domain.CardVO;

@Service("CardService")
public class CardServiceImpl implements CardService {
    @Autowired
    private CardDAO cardDAO;

    @Override
    // 카드 등록
    public void addCard(CardVO vo) {
        cardDAO.addCard(vo);
    }
    
    @Override
    // 등록된 카드 조회
    public List<CardVO> getCardList(CardVO vo) {
    	return cardDAO.getCardList(vo);
    }
    
    @Override
    // 카드 삭제
    public void deleteCard(CardVO vo) {
    	cardDAO.deleteCard(vo);
    }

    @Override
    // 간편 비밀번호 일치여부 확인
    public int getEasypwByCardcode(int cardCode) {
    	return cardDAO.getEasypwByCardcode(cardCode);
    }
    
    @Override
    // 간편 비밀번호 변경
    public void updateEasypw(CardVO vo) {
    	cardDAO.updateEasypw(vo);
    }

}
