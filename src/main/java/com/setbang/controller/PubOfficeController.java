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
	
	/**아래 주석 된 코드는 추후 삭제 예정 **/
//	@RequestMapping(value = "/selectPubOffice.do")
//	public String viewPubOffice(PubOfficeVO vo,Model model,HttpSession session) {
//		logger.info("selectPubOffice.do 경로의 viewPubOffice controller 탔음 -> 추가 수정이 많이 필요함");
//		
//		
//		String id = (String) session.getAttribute("sessionId");
//		System.out.println("session id : " + id);
//		
//		model.addAttribute("public1","멀티미디어실");
//		model.addAttribute("public2","회의실");
//		model.addAttribute("public3", "컨퍼런스룸");
//		
//		//model.addAttribute("pubCat", pubOfficeService.selectPubCat(vo));
//		//pubOfficeService.selectPubOfficeInfo(vo);
//		
//		//jsp 경로 
//		return "pubOffice/pubOffice1";
//	}
	/** 공유 오피스 예약 페이지 접근 **/
	@GetMapping("/pubOfficeBooking.do")
	public ModelAndView viewPubOffice2(HttpSession session,PubOfficeVO vo,Model model) {
		logger.info("pubOffice.do 경로의 viewPubOffice controller 탔음 -> 추가 수정이 많이 필요함");
		
		List<PubOfficeVO> pubUnits = pubOfficeService.selectPubOfficeCombo(vo);
		
		
		if(pubUnits != null) {
			model.addAttribute("pubUnits",pubUnits);
//			System.out.println(pubUnits.get(0).getPubCode());
		}
		
		//대상 view(jsp)파일
		/** 파일이름 변경예정  **/
		return new ModelAndView("pubOffice/pubOffice");
	}
	
	/** 공유 오피스 예약  insert 처리 **/
	@PostMapping("/insertpubOfficeBooking.do")
	public ModelAndView insertPubBooking(PubOfficeVO vo,HttpSession session,Model model, HttpServletRequest request) {
		
		logger.info("PubOfficeController의 insertPubOfficeBooking method");
		
		//System.out.println(combinedDateTime);
		String selectedValueStr = request.getParameter("selectedValue");
		System.out.println("selected value hidden 값 : " + selectedValueStr);
		if(selectedValueStr != null) {
			try {
				Integer selectedValue = Integer.valueOf(selectedValueStr);
				System.out.println("int 변환된 hidden select 값 : " + selectedValue);
				vo.setPubCode(selectedValue);
				System.out.println("selectedValue 값을 getPubCode에 넣은 후 가져옴 : " + vo.getPubCode());
			} catch (NumberFormatException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}

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
		
		/**  MemCode를 직접 가져올 경우 그러나 성민이가 구현해둔 것을 공통으로 사용하고 있어서 이 코드는 사용 안하고 주석 처리 **/
//		pubOfficeService.selectMemCode(vo);
		
		String bookDate = vo.getBookDate();
		String bookStart = vo.getBookStart();
		
		
		//데이터 형식 포맷
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat inputTimeformat = new SimpleDateFormat("HH:mm");
		SimpleDateFormat outputTimeFormat = new SimpleDateFormat("HH:mm");
	
		//문자열 타입을 Date형식으로 변환 날짜 및 시간 파싱
		Date parsedDate = dateFormat.parse(bookDate);
		Date parsedStartTime = inputTimeformat.parse(bookStart);
		
		
		//Date형식을 다시 문자열 타입으로 변환
		
		String formattedStartTime = outputTimeFormat.format(parsedStartTime);
		
		  // 결합한 날짜와 시간을 다시 문자열 타입으로 변환
//        String strCombinedDateTime = dateFormat.format(parsedDate) + " " + timeformat.format(parsedStartTime) + " " + timeformat.format(parsedEndTime);
		
		System.out.println("parsedDate : " + parsedDate); //Date타입
		System.out.println("strStartTime : " + parsedStartTime);
		System.out.println("");
		
		System.out.println("formattedStartTime : " + formattedStartTime);
		vo.setBookStart(formattedStartTime); 
		/**
		// bookDate
		// 2023-08-11
		// formattedStartTime		
		// 2023-08-01 15:27:00.000
		//예를 들면 날짜 데이터가 08월11일인데 startTime에선 위와 같이 해당 달의 첫번 째 날이 나오는 문제가 있음
		 * *
		 */
		pubOfficeService.insertPubOffice(vo);
		return new ModelAndView("pubOffice/success");
		} catch (ParseException e) {
			e.printStackTrace();
			return new ModelAndView("pubOffice/error");
		}
	
	}//insertbooking 메소드 끝나는 위치 
	
}
