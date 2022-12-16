package dao.face;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;


import dto.FileUpload;
import dto.Member;
import dto.Reservation;

public interface MypageDao {
	


	/**
	 * 회원정보 수정
	 * 
	 * 
	 * @param member
	 */
	public void userUpdate(Member member);
	
	
	/**
	 * 프로필사진 변경
	 * 
	 * @param member
	 * @param imageList
	 * @param webPath
	 * @param folderPath
	 * @return
	 * @throws Exception
	 */
	public void insertProfile(FileUpload fileupload);


	public Object selectFileByMemberNo(Member member);


	/**
	 * 회원탈퇴
	 * 
	 * @param member
	 * @param session
	 */
	public void withdrawal(Member member);


	/**
	 * 비밀번호 확인
	 * 
	 * @param member
	 * @return
	 */
	public int checkPw(Member member);


	
	/**
	 * 프로필사진 보여주기
	 * 
	 * @param memberNo
	 * @return
	 */
	public FileUpload selectProfile(int memberNo);
	
	
	/**
	 * 프로필사진 변경
	 * 
	 * @param file
	 */
	public void updateProfile(FileUpload file);
	

	/**
	 * 예약 목록 조회
	 * 
	 * @return
	 */
	public List<Reservation> reservationlist(String id);

	
	


	



	

}
