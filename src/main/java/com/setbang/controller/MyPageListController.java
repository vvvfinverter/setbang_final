package com.setbang.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.setbang.domain.AdminVO;
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
}
