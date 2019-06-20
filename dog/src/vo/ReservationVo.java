package vo;

/**
 * 이 클래스는 예약정보에 대한 정보를 담는 클래스이다.
 * 
 * @author	양희준
 * @since	2019.06.20
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.20		ReservationVo 클래스 제작		작성자 : 양희준
 * 
 */


import java.sql.Date;
import java.sql.Time;

public class ReservationVo {
	private int pi_no; // 반려견 번호
	private int ser_no; // 서비스종류 번호
	private int pst_no; // 펫시터등급 번호
	private int lo_no; // 지역 번호
	private char ispay; // 마리수
	private Date r_Dstart; // 시작날짜
	private Time r_Tstart; // 시작시간
	private Date r_Dend; // 끝날짜
	private Time r_Tend; // 끝시간
	
	public int getPi_no() {
		return pi_no;
	}
	public void setPi_no(int pi_no) {
		this.pi_no = pi_no;
	}
	public int getSer_no() {
		return ser_no;
	}
	public void setSer_no(int ser_no) {
		this.ser_no = ser_no;
	}
	public int getPst_no() {
		return pst_no;
	}
	public void setPst_no(int pst_no) {
		this.pst_no = pst_no;
	}
	public int getLo_no() {
		return lo_no;
	}
	public void setLo_no(int lo_no) {
		this.lo_no = lo_no;
	}
	public char getIspay() {
		return ispay;
	}
	public void setIspay(char ispay) {
		this.ispay = ispay;
	}
	public Date getR_Dstart() {
		return r_Dstart;
	}
	public void setR_Dstart(Date r_Dstart) {
		this.r_Dstart = r_Dstart;
	}
	public Time getR_Tstart() {
		return r_Tstart;
	}
	public void setR_Tstart(Time r_Tstart) {
		this.r_Tstart = r_Tstart;
	}
	public Date getR_Dend() {
		return r_Dend;
	}
	public void setR_Dend(Date r_Dend) {
		this.r_Dend = r_Dend;
	}
	public Time getR_Tend() {
		return r_Tend;
	}
	public void setR_Tend(Time r_Tend) {
		this.r_Tend = r_Tend;
	}
	
	
}
