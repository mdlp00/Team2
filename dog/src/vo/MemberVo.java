package vo;

import java.sql.*;

/**
 * 이 클래스는 결제에 대한 정보를 담는 클래스이다.
 * 
 * @author	안다예
 * @since	2019.06.18
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.18		MemberVo 클래스 제작				작성자 : 양희준
 * 			2019.06.20		mmail 변수 및 gettter&setter  추가	작성자 : 안다예
 */

public class MemberVo {
	private int  mno; // 회원 번호
	private String mid; // 회원 아이디
	private String mpw; // 회원 비밀번호
	private String mname; // 회원 이름
	private String mbirth; // 회원 생일
	private String maddr; // 회원 주소
	private String mtel; // 회원 전화번호
	private String mail; // 회원 전화번호
	private Date mDate; // 가입날짜
	private Time mTime; // 가입시간
	
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMbirth() {
		return mbirth;
	}
	public void setMbirth(String mbirth) {
		this.mbirth = mbirth;
	}
	public String getMaddr() {
		return maddr;
	}
	public void setMaddr(String maddr) {
		this.maddr = maddr;
	}
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public Date getmDate() {
		return mDate;
	}
	public void setmDate(Date mDate) {
		this.mDate = mDate;
	}
	public Time getmTime() {
		return mTime;
	}
	public void setmTime(Time mTime) {
		this.mTime = mTime;
	}
	
}
