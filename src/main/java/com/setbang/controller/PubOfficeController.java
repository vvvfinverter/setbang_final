package com.setbang.controller;

import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.setbang.domain.PubOfficeVO;
import com.setbang.service.PubOfficeService;
import com.setbang.service.SupportService;

@Controller
//@RequestMapping("/pubOffice")
public class PubOfficeController {
	
	private static final Logger logger = LoggerFactory.getLogger(PubOfficeController.class);

	@Autowired
	private PubOfficeService pubOfficeService;
	
	@Autowired
	private SupportService supportService;
	
	@RequestMapping(value = "/selectPubOffice.do")
	public String viewPubOffice(PubOfficeVO vo,Model model,HttpSession session) {
		logger.info("selectPubOffice.do 경로의 viewPubOffice controller 탔음 -> 추가 수정이 많이 필요함");
		
		
		String id = (String) session.getAttribute("sessionId");
		System.out.println("session id : " + id);
		
		model.addAttribute("public1","멀티미디어실");
		model.addAttribute("public2","회의실");
		model.addAttribute("public3", "컨퍼런스룸");
		
		//model.addAttribute("pubCat", pubOfficeService.selectPubCat(vo));
		//pubOfficeService.selectPubOfficeInfo(vo);
		
		//jsp 경로 
		return "pubOffice/pubOffice1";
	}
	
	@GetMapping("/pubOffice2.do")
	public ModelAndView viewPubOffice2(HttpSession session,PubOfficeVO vo,Model model) {
		logger.info("pubOffice2.do 경로의 viewPubOffice2 controller 탔음 -> 추가 수정이 많이 필요함");
		
		List<PubOfficeVO> pubUnits = pubOfficeService.selectPubOfficeCombo(vo);
		
		
		if(pubUnits != null) {
			model.addAttribute("pubUnits",pubUnits);
//			System.out.println(pubUnits.get(0).getPubCode());
		}
		
		//대상 view(jsp)파일
		return new ModelAndView("pubOffice/pubOffice2");
	}
	
	//@RequestParam("combinedDateTime") String combinedDateTime
	@PostMapping("/insertpubOfficeBooking.do")
	public ModelAndView insertPubBooking(PubOfficeVO vo,HttpSession session,Model model) {
		
		logger.info("PubOfficeController의 insertPubOfficeBooking method");
		
		//System.out.println(combinedDateTime);
		

	try {
		
		String id = (String) session.getAttribute("sessionId");
		System.out.println("session id : " + id);
		System.out.println("session id : " + session.getId());
		
		// ID로 Mem_code 가져오기
		int memcode = supportService.findMemcode(id);
		System.out.println("memcode : " + memcode);
		
		
		if(memcode != 0) {
			vo.setMemCode(memcode);
			
		}
		List<PubOfficeVO> pubUnits = pubOfficeService.selectPubOfficeCombo(vo);
		if(pubUnits != null) {
			System.out.println("널이 아님");
			model.addAttribute("pubUnits",pubUnits);
			vo.setPubCode(pubUnits.get(0).getPubCode());
			vo.setPubUnit(pubUnits.get(0).getPubUnit());
			//System.out.println(pubUnits.get(0).getPubCode());
		}
		
		 System.out.println("unit값 : " + vo.getPubUnit());
		 
//		pubOfficeService.selectMemCode(vo);
		
		

		String bookDate = vo.getBookDate();
		String bookStart = vo.getBookStart();
		String bookEnd = vo.getBookEnd();
		

		
		System.out.println(vo.getMemCode());
		
		//데이터 형식 포맷
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat inputTimeformat = new SimpleDateFormat("HH:mm");
		SimpleDateFormat outputTimeFormat = new SimpleDateFormat("HH:mm");
	
		//문자열 타입을 Date형식으로 변환 날짜 및 시간 파싱
		Date parsedDate = dateFormat.parse(bookDate);
		Date parsedStartTime = inputTimeformat.parse(bookStart);
		Date parsedEndTime = inputTimeformat.parse(bookEnd);
		
		
		//Date형식을 다시 문자열 타입으로 변환
		
		String formattedStartTime = outputTimeFormat.format(parsedStartTime);
		String formattedEndTime = outputTimeFormat.format(parsedEndTime);
		
		  // 결합한 날짜와 시간을 다시 문자열 타입으로 변환
//        String strCombinedDateTime = dateFormat.format(parsedDate) + " " + timeformat.format(parsedStartTime) + " " + timeformat.format(parsedEndTime);
		
		System.out.println("parsedDate : " + parsedDate); //Date타입
		System.out.println("strStartTime : " + parsedStartTime);
		System.out.println("strEndTime : " + parsedEndTime);
		System.out.println("");
		
		System.out.println("formattedStartTime : " + formattedStartTime);
		System.out.println("formattedEndTime : " + formattedEndTime);
		vo.setBookStart(formattedStartTime); 
		vo.setBookEnd(formattedEndTime);
		// bookDate
		// 2023-08-11
		// formattedStartTime		formattedEndTime
		// 2023-08-01 15:27:00.000, 2023-08-01 16:27:00.000 
		//날짜 데이터가 08월11일인데 위와 같이 나오는 문제가 있음
		pubOfficeService.insertPubOffice(vo);
		return new ModelAndView("pubOffice/success");
		} catch (ParseException e) {
			e.printStackTrace();
			return new ModelAndView("pubOffice/error");
		}
	
	}//insertbooking
}
