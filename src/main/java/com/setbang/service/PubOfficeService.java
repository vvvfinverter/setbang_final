package com.setbang.service;


import java.util.List;

import com.setbang.domain.PubOfficeVO;

public interface PubOfficeService {

	/**
	 * 공용 오피스 방 선택하는 콤보상자
	 * @param vo
	 * @return
	 */
	List<PubOfficeVO> selectPubOfficeInfo(PubOfficeVO vo);
	
	/**
	 * 공용 오피스 카테고리 
	 * @param vo
	 * @return
	 */
	PubOfficeVO selectPubCat(PubOfficeVO vo);
	
	
	/**
	 * memcode 조회 그러나 성민이 코드를 공유해서 사용 중이라 현재 사용 안하고 있음
	 * @param vo
	 * @return
	 */
	public PubOfficeVO selectMemCode(PubOfficeVO vo);
	
	/**
	 * 공용 오피스 콤보상자
	 * @param vo
	 * @return
	 */
	public List<PubOfficeVO> selectPubOfficeCombo(PubOfficeVO vo);
	
	/** 
	 *  공용 오피스 방 선택시 ajax이용해서 라디오 상자와 상호작용
	 *  이부분은 공용 오피스 코드와 pubTime, bookStart 가 일치하는 경우엔 라디오 상자 사용 불가능하게 하는 기능
	 *  @param vo
	 *  @return
	 **/
	public PubOfficeVO selectCompareTimes(PubOfficeVO vo);
	
	/**
	 * booking 테이블 insert
	 * @param vo
	 */
	public void insertPubOffice(PubOfficeVO vo);
	
	/**
	 * 공용오피스 사용여부 Y로 변경
	 * @param vo
	 * @return
	 */
	public int updatePubOfficeY(PubOfficeVO vo);
	
	/**
	 * 공용오피스 사용여부 N으로 자정이 될 시 자동 변경
	 * @param pubCode
	 * @return
	 */
	public int updatePubOfficeN(int pubCode);
	
	/**
	 * 공용오피스 예약 자정이 될 시 전체 삭제
	 */
	public void deleteOfficeBooking();
	
}
