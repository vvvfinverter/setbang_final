package com.setbang.dao;

import com.setbang.domain.ConstractVO;

public interface ConstractDAO {
	
	// 자동으로 개인오피스 사용여부 Y -> N으로 변경
	public void autoPrivYn(ConstractVO vo);

}
