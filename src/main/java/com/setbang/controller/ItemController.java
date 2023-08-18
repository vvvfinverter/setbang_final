package com.setbang.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.setbang.domain.ItemVO;
import com.setbang.service.ItemService;

@Controller
public class ItemController {

	private static final Logger logger = LoggerFactory.getLogger(ItemController.class);
	
	@Autowired
	private ItemService itemService;
	
	@GetMapping("itemApply.do")
	public ModelAndView viewItemApply(HttpSession session,ItemVO vo, Model model) {
		logger.info("ItemController.viewItemApply 접근");
		List<ItemVO> itemCat = itemService.comboSelect1(vo);
		List<ItemVO> item = itemService.comboSelect2(vo);
		
		if(itemCat != null && item != null) {
//			if(itemCat != null ) {
			model.addAttribute("itemCat",itemCat);
			model.addAttribute("item",item);
			
//			System.out.println("itemCatCode : " + itemCat.get(0).getiCatCode());
//			System.out.println("itemCat : " + itemCat.get(0).getiCat());
//			System.out.println("item");
		}
		
		return new ModelAndView("item/itemApply");
	}
}
