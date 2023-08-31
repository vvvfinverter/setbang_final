package com.setbang.service;

import java.util.List;

import com.setbang.domain.ItemVO;

public interface ItemService {
	
	// i_cat_code로 item리스트 가져와서 List에 담기 
	public List<ItemVO> selectItem(int icatcode);
	
	
	// i_code로 item이름 가져와서 List에 담기
	public List<ItemVO> selectItemName(int itemCode);
	
	// session으로 mem_code 가져오기
	public int getMemCodeBySessionId(String id);
	
	
	// 주문 insert 
	public void insetOrder(ItemVO vo);
	
	
}
