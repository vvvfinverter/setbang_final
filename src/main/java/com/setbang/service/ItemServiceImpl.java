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
	

	@Override
	public List<ItemVO> comboSelect1(ItemVO vo) {
		logger.info("ItemServiceImpl.comboSelect 서비스 ");
		List<ItemVO> list1 = itemDAO.comboItemCat(vo);
		return list1;
	}

	@Override
	public List<ItemVO> comboSelect2(ItemVO vo) {
		logger.info("ItemServiceImpl.comboSelect2 서비스");
		List<ItemVO> list2 = itemDAO.comboItem(vo);
		return list2;
	}
	
	

	
}
