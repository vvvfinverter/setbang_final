package com.setbang.dao;

import java.util.List;


import com.setbang.domain.ItemVO;

public interface ItemDAO {

	public List<ItemVO> comboItemCat(ItemVO vo);
	
	public List<ItemVO> comboItem(int iCatCode);
	
	public void insertItemApply(ItemVO vo);
}
