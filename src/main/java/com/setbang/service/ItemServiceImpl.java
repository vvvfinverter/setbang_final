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
	
	// i_cat_code로 item리스트 가져와서 List에 담기
	@Override
	public List<ItemVO> selectItem(int icatcode) {
		logger.info("ItemService.selectItem 서비스 ");
		List<ItemVO> itemlist = itemDAO.selectItem(icatcode);
		return itemlist;
	}

	// i_name 가져오기
	@Override
	public List<ItemVO> selectItemName(int itemCode) {
		// TODO Auto-generated method stub
		
		List<ItemVO> ItemNamelist = itemDAO.selectItemName(itemCode);
		return ItemNamelist;
	}

	// session으로 mem_code 가져오기
	@Override
	public int getMemCodeBySessionId(String id) {
		// TODO Auto-generated method stub
		int memcode = itemDAO.getMemCodeBySessionId(id);
		return memcode;
	}

	@Override
	public void insetOrder(ItemVO vo) {
		// TODO Auto-generated method stub		
		itemDAO.insetOrder(vo);	
	}
	
	

	
	
	
	
	
	
	
//	/**
//	 * 
//	 * @param vo
//	 */
//	@Override
//	public List<ItemVO> comboSelect2(int iCatCode) {
//		logger.info("ItemService.comboSelect2 서비스");
//		System.out.println("iCatCode : " + iCatCode);
//		List<ItemVO> list2 = itemDAO.comboItem(iCatCode);
//		return list2;
//	}
//
//	/**
//	 * 
//	 * @param vo
//	 */
//	@Override
//	public void insertItemApply(ItemVO vo) {
//		logger.info("ItemService.insertItemApply");
//		itemDAO.insertItemApply(vo);
//	}
//
//	/**
//	 * 
//	 * @param vo
//	 */
//	@Override
//	public void insertItemApplyDetail(ItemVO vo) {
//		
//		logger.info("ItemService.insertItemApplyDetail");
//		
//		itemDAO.insertItemApplyDetail(vo);
//		
//	}


	
}
