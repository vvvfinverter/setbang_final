package com.setbang.dao;


import java.util.List;

import com.setbang.domain.PubOfficeVO;

public interface PubOfficeDAO {
	
	public List<PubOfficeVO> selectPubOffice(PubOfficeVO vo);
	
	public PubOfficeVO selectMemCode(PubOfficeVO vo);
	
	public List<PubOfficeVO> selectPutOfficeCombo(PubOfficeVO vo);
	
	public int insertPubOffice(PubOfficeVO vo);
	
	public int updatePubOffice(PubOfficeVO vo);
	
	public PubOfficeVO selectPubCat(PubOfficeVO vo);
}
