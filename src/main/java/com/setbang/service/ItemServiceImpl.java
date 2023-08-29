package com.setbang.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setbang.dao.ItemDAO;
import com.setbang.domain.ItemVO;

@Service("ItemService")
public class ItemServiceImpl implements ItemService {
	
	private static final Logger logger = LoggerFactory.getLogger(ItemServiceImpl.class);

	@Autowired
	private ItemDAO itemDAO;
	

	/**
	 * 
	 * @param vo
	 */
	@Override
	public List<ItemVO> comboSelect1(ItemVO vo) {
		logger.info("ItemService.comboSelect 서비스 ");
		List<ItemVO> list1 = itemDAO.comboItemCat(vo);
		return list1;
	}

	/**
	 * 
	 * @param vo
	 */
	@Override
	public List<ItemVO> comboSelect2(int iCatCode) {
		logger.info("ItemService.comboSelect2 서비스");
		System.out.println("iCatCode : " + iCatCode);
		List<ItemVO> list2 = itemDAO.comboItem(iCatCode);
		return list2;
	}

	/**
	 * 
	 * @param vo
	 */
	@Override
	public void insertItemApply(ItemVO vo) {
		logger.info("ItemService.insertItemApply");
		itemDAO.insertItemApply(vo);
	}

	/**
	 * 
	 * @param vo
	 */
//	@Override
//	public void insertItemApplyDetail(ItemVO vo) {
//		
//		logger.info("ItemService.insertItemApplyDetail");
//		
//		itemDAO.insertItemApplyDetail(vo);
//		
//	}


	
}
