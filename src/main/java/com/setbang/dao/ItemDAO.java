package com.setbang.dao;

import java.util.List;


import com.setbang.domain.ItemVO;

public interface ItemDAO {
	
	/**
	 * 
	 * @param vo
	 * @return
	 */
	public List<ItemVO> comboItemCat(ItemVO vo);
	
	/**
	 * 
	 * @param iCatCode
	 * @return
	 */
	public List<ItemVO> comboItem(int iCatCode);
	
	/**
	 * 
	 * @param vo
	 */
	public void insertItemApply(ItemVO vo);
	
	/**
	 * 
	 * @param vo
	 */
//	public void insertItemApplyDetail(ItemVO vo);
	
}
