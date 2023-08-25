package com.setbang.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.setbang.domain.ItemVO;
import com.setbang.service.ItemService;
import com.setbang.service.SupportService;

@Controller
public class ItemController {

	private static final Logger logger = LoggerFactory.getLogger(ItemController.class);
	
	@Autowired
	private ItemService itemService;
	
	@Autowired
	private SupportService supportService;
	
	//물품 신청 등록 화면 조회
	@GetMapping("itemApply.do")
	public ModelAndView viewItemApply(HttpSession session,ItemVO vo, HttpServletRequest request, Model model) {
		logger.info("ItemController.viewItemApply 접근");
		//물품 카테고리 콤보상자 조회
		List<ItemVO> itemCat = itemService.comboSelect1(vo);

			if(itemCat != null ) {
			model.addAttribute("itemCat",itemCat);
		}
		
		//jsp view 경로
		return new ModelAndView("item/itemApply");
	}
	
	@PostMapping("/aJaxItem.do")
	@ResponseBody
	public ResponseEntity<List<ItemVO>> ajaxItem(@RequestParam("selectedValue1") int selectedValue, ItemVO vo, Model model) {
		logger.info("ItemController.ajaxItem 접근");
		
		/**아래의 주석은 selectValue1(view에서 hidden type 이름)을 받는 다른 방법 **/
		//int selectedValue = Integer.parseInt(request.getParameter("selectedValue1"));
		//if(selectedValueStr != null) {
			//Integer selectedValue = Integer.valueOf(selectedValueStr);
			
			//selectValue의 값을 넣는다 --> 물품카테고리코드
			vo.setiCatCode(selectedValue);
			
		//}
		
		List<ItemVO> list = itemService.comboSelect2(selectedValue); 
		//System.out.println("list : " + list.get(0).getiName());
		model.addAttribute("item",list);
		return ResponseEntity.ok(list);
	}
	
	
	
	@PostMapping("/itemApplyInsert.do")
	public String insertItemApply(@RequestParam("orderList") String orderListJson ,ItemVO vo, RedirectAttributes redirectAttributes, HttpSession session) {
	//public String insertItemApply(@RequestBody List<Map<String, Object>> orderList, RedirectAttributes redirectAttributes, HttpSession session) {
		// orderListJson은 JSON 형식의 문자열이므로 이를 객체로 변환해서 사용합니다.
		ObjectMapper objectMapper = new ObjectMapper();
        try {
			List<ItemVO> orderList = objectMapper.readValue(orderListJson, new TypeReference<List<ItemVO>>() {});
			
	        List<ItemVO> validOrderList = new ArrayList<>();
	        for (ItemVO order : orderList) {
	            if (!order.getiName().isEmpty() && order.getiUnitAmount() != 0) {
	                validOrderList.add(order);
	            }
	        }

	        for (ItemVO validOrder : validOrderList) {
	            String itemName = validOrder.getiName();
	            int itemCount = validOrder.getiUnitAmount();
	            int iCode = validOrder.getiCode();
	            // 처리 로직 추가
	            System.out.println("itemName: " + itemName);
	            System.out.println("itemCount: " + itemCount);
	            
	    		String id = (String) session.getAttribute("sessionId");
	    		// ID로 Mem_code 가져오기
	    		int memcode = supportService.findMemcode(id);
	    		System.out.println("memcode : " + memcode);
	    		
	    		
	    		if(memcode != 0) {
	    			vo.setMemCode(memcode);
	    			System.out.println(vo.getMemCode());
	    		}
	    		vo.setiCode(iCode);
	    		vo.setiName(itemName);
	    		vo.setiUnitAmount(itemCount);
	    		
	    		// Item 객체를 Service 레이어로 전달하여 DB에 삽입
	    		itemService.insertItemApply(vo);
	        }
        } catch (Exception e) {
			// TODO: handle exception
        	e.printStackTrace();
		}
        
		
		
		System.out.println("iCode : " + vo.getiCode());
		System.out.println("iName : " + vo.getiName());
		System.out.println("i_unit_amount : " + vo.getiUnitAmount());
        // 여기서 Item 객체는 폼에서 제출된 데이터를 바인딩한 객체입니다.
        // 예를 들어, 폼에서 입력한 memCode, iCode, iUnitAmount 값을 포함합니다.
		

		
		// 삽입이 완료되었다는 메시지를 리다이렉트 시에 전달
		redirectAttributes.addFlashAttribute("message","물품신청이 완료되었다");
		
		return "redirect:/itemlist.do";
	}
	

}
