package com.setbang.dao;


import java.util.List;

import com.setbang.domain.PubOfficeVO;

public interface PubOfficeDAO {
	
	public List<PubOfficeVO> selectPubOffice(PubOfficeVO vo);
	

	
	
	/**
	 * 공용오피스 콤보상자 조회 쿼리
	 * @param PubOfficeVO
	 * @return List<PubOfficeVO>
	 */
	public List<PubOfficeVO> selectPutOfficeCombo(PubOfficeVO vo);
	
	
	/**
	 * 공용오피스 라디오 상자 선택된 값 비교
	 * @param PubOfficeVO
	 */
	public PubOfficeVO selectComparetimes(PubOfficeVO vo);
	
	
	/**
	 * 공용오피스 예약 insert
	 * @param PubOfficeVO
	 * @return int
	 */
	public int insertPubOffice(PubOfficeVO vo);
	
	
	/**
	 * 공용오피스 사용여부 Y 변경
	 * @param PubOfficeVO
	 * @return int
	 */
	public int updatePubOfficeY(PubOfficeVO vo);
	
	/**
	 * 공용오피스 사용여부 N 변경
	 * @param PubOfficeVO
	 * @return int
	 */
	public int updatePubOfficeN(int pubCode);
	
	/**
	 * 공용오피스 예약 자정이 될 시 자동으로 전체 삭제
	 * 
	 */
	public void deleteOfficeBooking();
	
	
	/**
	 * 공용 오피스 카테고리 
	 * @param vo
	 * @return PubOfficeVO
	 */
	public PubOfficeVO selectPubCat(PubOfficeVO vo);
	
	/**
	 * memcode 조회 그러나 성민이 코드를 공유해서 사용 중이라 현재 사용 안하고 있음
	 * @param vo
	 * @return PubOfficeVO
	 */
	public PubOfficeVO selectMemCode(PubOfficeVO vo);
}
