package com.setbang.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.setbang.domain.CardVO;
import com.setbang.service.CardService;
import com.setbang.service.MemberService;


@Controller
public class CardController {
    
    @Autowired
    private CardService cardService;
    
    @Autowired
    private MemberService memberService;

    // 간편 비밀번호 변경
        @RequestMapping(value = "updateEasypw.do", method = RequestMethod.POST)
        public String updateEasypw(@RequestParam("currentEasypw") int currentEasypw,
                                   @RequestParam("newEasypw") int newEasypw,
                                   @RequestParam("cardCode") int cardCode) {

            int cardEasypw = cardService.getEasypwByCardcode(cardCode);
            System.out.println(currentEasypw + " " + newEasypw + " " + cardEasypw);

            if (cardEasypw == currentEasypw) {
                CardVO vo = new CardVO();
                vo.setCard_code(cardCode);
                vo.setCard_easypw(newEasypw);
                cardService.updateEasypw(vo);

                // task - 수정 성공 메시지 띄우기
            } else {
                // task - 실패 메시지 띄우기
            }

            return "redirect:/myPageCard.do";
        }

    

    // 카드 삭제
	@RequestMapping(value = "deleteCard.do", method = RequestMethod.POST)
	public String deleteCard(HttpSession session, CardVO vo) {
		cardService.deleteCard(vo);
		return "redirect:/myPageCard.do";
	}

    
	// 카드 등록
	@RequestMapping(value = "addCard.do", method = RequestMethod.POST)
	public String addCard(HttpSession session, 
	                      @RequestParam("cardName") String cardName,
	                      @RequestParam("cardNumber1") String cardNumber1,
	                      @RequestParam("cardNumber2") String cardNumber2,
	                      @RequestParam("cardNumber3") String cardNumber3,
	                      @RequestParam("cardNumber4") String cardNumber4,
	                      @RequestParam("expMonth") String expMonth,
	                      @RequestParam("expYear") String expYear,
	                      @RequestParam("cvc") int cvc,
	                      @RequestParam("cardPassword") int cardPassword,
	                      @RequestParam("cardPassword2") int cardPassword2) {
	    
	    // 세션에서 회원정보 가져오기
	    String sessionId = (String) session.getAttribute("sessionId");
	    
	    // 회원아이디로 회원코드 가져오기
	    int memCode = memberService.getMemCodeBySessionId(sessionId);
	    if (memCode != 0) { 
	        CardVO vo = new CardVO();
	        vo.setMem_code(memCode);
	        vo.setCard_name(cardName);
	        vo.setCard_no(cardNumber1 + "-" + cardNumber2 + "-" + cardNumber3 + "-" + cardNumber4);
	        vo.setCvc(cvc);
	        vo.setExp_date(expMonth + "/" + expYear);
	        vo.setCard_pw(cardPassword);
	        vo.setCard_easypw(cardPassword2);
	        
	        // 카드 등록하는 서비스 불러오기
	        cardService.addCard(vo);
	        
	        // task - 등록성공하면 등록성공했습니다, 아닐 경우엔 실패했습니다 띄우기
	    }

	    return "redirect:/myPageCard.do";
	}


    // 간편결제 페이지로 이동
    @RequestMapping(value = "myPageCard.do", method = RequestMethod.GET)
    public String myPageCard(HttpSession session, Model model) {
        String sessionId = (String) session.getAttribute("sessionId");
        if (sessionId != null) {
            int memCode = memberService.getMemCodeBySessionId(sessionId);
            if (memCode != 0) {
                // 등록된 카드 불러오기
                CardVO card = new CardVO();
                card.setMem_code(memCode);
                List<CardVO> cardList = cardService.getCardList(card);
                model.addAttribute("cardList", cardList);
                
                return "/myPage/myPageCard";
            }
        }
        return "redirect:/loginPage.do";
    }

}
