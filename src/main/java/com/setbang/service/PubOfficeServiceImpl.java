package com.setbang.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setbang.dao.PubOfficeDAO;
import com.setbang.domain.PubOfficeVO;

@Service("pubOfficeService")
public class PubOfficeServiceImpl implements PubOfficeService{
	
	private static final Logger logger = LoggerFactory.getLogger(PubOfficeServiceImpl.class);
	
	@Autowired
	private PubOfficeDAO pubOfficeDAO;
	
	
	/**
	 * 공용 오피스 방 선택하는 콤보상자
	 * @param vo
	 * @return
	 */
	@Override
	public List<PubOfficeVO> selectPubOfficeInfo(PubOfficeVO vo) {
		logger.info("selectPubOfficeInfo service 탔음 -> 추가 수정이 많이 필요함");
		return pubOfficeDAO.selectPubOffice(vo);
	}
	


	/**
	 * 공용 오피스 카테고리 
	 * @param vo
	 * @return
	 */ 
	@Override
	public PubOfficeVO selectPubCat(PubOfficeVO vo) {
		logger.info("PubOfficeServiceImpl.selectPubCat 탔음");
		return pubOfficeDAO.selectPubCat(vo);
	}


	/**
	 * memcode 조회 그러나 성민이 코드를 공유해서 사용 중이라 현재 사용 안하고 있음
	 * @param vo
	 * @return
	 */
	public PubOfficeVO selectMemCode(PubOfficeVO vo) {
		logger.info("PubOfficeServiceImpl.selectMemCode");
		return pubOfficeDAO.selectMemCode(vo);
	}
	
	
	/**
	 * 공용 오피스 방 선택시 ajax이용해서 라디오 상자와 상호작용
	 * 이부분은 공용 오피스 코드와 pubTime, bookStart 가 일치하는 경우엔 라디오 상자 사용 불가능하게 하는 기능
	 * @param vo
	 * @return process
	 */
	@Override
	public PubOfficeVO selectCompareTimes(PubOfficeVO vo) {
	 PubOfficeVO process = pubOfficeDAO.selectComparetimes(vo);
		return process;
	}
	
	/**
	 * booking 테이블 insert
	 * @param vo
	 */
	@Override
	public void insertPubOffice(PubOfficeVO vo) {
		// TODO Auto-generated method stub
		logger.info("PubOfficeServiceImpl.insertPubOffice 탔음");
		System.out.println("service : " + vo.getPubCode());
		pubOfficeDAO.insertPubOffice(vo);
	}
	

	@Override
	public List<PubOfficeVO> selectPubOfficeCombo(PubOfficeVO vo) {
		// TODO Auto-generated method stub
		logger.info("PubOfficeServiceImpl.selectPubOfficeCombo 탔음");
		return pubOfficeDAO.selectPutOfficeCombo(vo);
	}



	/**
	 * 공용오피스 사용여부 Y로 변경
	 *  
	 *  **/
	@Override
	public int updatePubOfficeY(PubOfficeVO vo) {
		logger.info("PubOfficeServiceImpl.updatePubOfficeY");
		return pubOfficeDAO.updatePubOfficeY(vo);
	}


	/**
	 * 공용오피스 사용여부 N으로 변경
	 *  
	 **/
	@Override
	public int updatePubOfficeN(int pubCode) {
		logger.info("PubOfficeServiceImpl.updatePubOfficeN");
		int process = pubOfficeDAO.updatePubOfficeN(pubCode);
		return process;
	}


	/**
	 * 공용오피스 자정이 될시 자동 삭제
	 */
	@Override
	public void deleteOfficeBooking() {
		logger.info("PubOfficeServiceImpl.deleteOfficeBooking");
		pubOfficeDAO.deleteOfficeBooking();
	}


	//구현 안된 부분
//	/**
//	 * 공용오피스 사용여부 N으로 변경 -> 8시 예약 10시 종료
//	 *  
//	 **/
//	@Override
//	public int updatePubOfficeN10(int pubCode) {
//		logger.info("PubOfficeServiceImpl.updatePubOfficeN");
//		int ten = pubOfficeDAO.updatePubOfficeN10(pubCode);
//		return ten;
//	}


	
}