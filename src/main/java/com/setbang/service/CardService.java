package com.setbang.service;

import java.util.List;

import com.setbang.domain.CardVO;

public interface CardService {
	
    // 카드 등록
    void addCard(CardVO vo);
    
    // 등록된 카드 조회
    List<CardVO> getCardList(CardVO vo);

    // 카드 삭제
    void deleteCard(CardVO vo);
    
    // 간편 비밀번호 일치여부 확인
    boolean checkEasypw(CardVO vo);
    
    // 간편 비밀번호 변경
    void updateEasypw(CardVO vo, int card_neweasypw);    
}
