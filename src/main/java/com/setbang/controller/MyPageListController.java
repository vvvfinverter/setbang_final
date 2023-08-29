package com.setbang.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.setbang.domain.JsonResponse;
import com.setbang.domain.MyPageListVO;
import com.setbang.service.MyPageListService;

@Controller
public class MyPageListController {
	private static final Logger logger = LoggerFactory.getLogger(MyPageListController.class);

	@Autowired
	private MyPageListService myPageListService;
	
	// 업무지원 서비스 신청현황
	@RequestMapping(value="supportlist.do")
	public String supportlist(MyPageListVO vo, Model model, HttpSession session) {
		
		// Session에서 Mem_code 가져오기
		String sessionId = (String) session.getAttribute("sessionId");
		int mem_code = myPageListService.findmemcode(sessionId);
		
		// Mem_code로 자신의 업무지원서비스 신청현황 가져오기
		List<MyPageListVO> supportlist = myPageListService.supportlist(mem_code);
			System.out.println("supportlist : " + supportlist);
			model.addAttribute("supportlist", supportlist);
		
		
		return "/myPage/myPageSupportlist";
	}
	
	
	// 협력업체지원서비스 신청현황
	@RequestMapping(value="partnerlist.do")
	public String partnerlist(MyPageListVO vo, Model model, HttpSession session) {
		
		// Session에서 Mem_code 가져오기
		String sessionId = (String) session.getAttribute("sessionId");
		int mem_code = myPageListService.findmemcode(sessionId);
		
		// Mem_code로 자신의 협력업체지원서비스 신청현황 가져오기
		List<MyPageListVO> partnerlist = myPageListService.partnerlist(mem_code);
			System.out.println("partnerlist : " + partnerlist);
			System.out.println("ptr_apply_date : " + vo.getPtr_apply_date());
			model.addAttribute("partnerlist", partnerlist);
			
		return "/myPage/myPagePartnerlist";
	}
	
	// 공용공간 예약신청현황
	@RequestMapping(value="pubbookinglist.do")
	public String pubbookinglist(MyPageListVO vo, Model model, HttpSession session) {
		
		// Session에서 Mem_code 가져오기
		String sessionId = (String) session.getAttribute("sessionId");
		int mem_code = myPageListService.findmemcode(sessionId);
		
		// Mem_code로 자신의 협력업체지원서비스 신청현황 가져오기
		List<MyPageListVO> pubbookinglist = myPageListService.pubbookinglist(mem_code);
			System.out.println("pubbookinglist : " + pubbookinglist);
			model.addAttribute("pubbookinglist", pubbookinglist);
			
		return "/myPage/myPagePubBookinglist";
	}
	
	// 물품신청 신청현황
	@RequestMapping(value="itemlist.do")
	public String itemlist(MyPageListVO vo, Model model, HttpSession session) {
		
		// Session에서 Mem_code 가져오기
		String sessionId = (String) session.getAttribute("sessionId");
		int mem_code = myPageListService.findmemcode(sessionId);
		
		// Mem_code로 자신의 협력업체지원서비스 신청현황 가져오기
		List<MyPageListVO> itemlist = myPageListService.itemlist(mem_code);
			System.out.println("itemlist : " + itemlist);
			model.addAttribute("itemlist", itemlist);
			
		return "/myPage/myPageItemlist";
	}
	
	// 임대차계약서 현황
	@RequestMapping(value="constractlist.do")
	public String constractlist(MyPageListVO vo, Model model, HttpSession session) {
		
		// Session에서 Mem_code 가져오기
		String sessionId = (String) session.getAttribute("sessionId");
		int mem_code = myPageListService.findmemcode(sessionId);
		
		// Mem_code로 자신의 임대차계약현황 가져오기
		List<MyPageListVO> constractlist = myPageListService.constractlist(mem_code);
			System.out.println("constractlist : " + constractlist);
			model.addAttribute("constractlist", constractlist);		
		
		return "/myPage/myPageConstractlist";
	}
	
	//물품 신청 취소
	@PostMapping("/itemDelete.do")
	@ResponseBody
	public JsonResponse deleteItem(@RequestBody List<MyPageListVO> voList) {
		logger.info("MypageSubController.deleteItem 접근");
		//JSON관련
		JsonResponse response = new JsonResponse();
		
	    try {
	    	
//	    	System.out.println(" ss : " +voList.get(0).getI_apply_code());
	    	myPageListService.deleteItemApply(voList); // 서비스 메소드를 호출하여 비즈니스 로직 처리
	        response.setSuccess(true);
	        response.setMessage("신청 취소가 완료되었습니다.");
	    } catch (Exception e) {
	    	logger.error("Error during item deletion: " + e.getMessage());
	        response.setSuccess(false);
	        response.setMessage("신청 취소에 실패하였습니다.");
	    }
	    
	    return response;
		
	}
}
