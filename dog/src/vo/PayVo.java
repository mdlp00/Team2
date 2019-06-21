package vo;

import java.sql.Date;
import java.sql.Time;

/**
 * 이 클래스는 결제에 대한 정보를 담는 클래스이다.
 * 
 * @author	양희준
 * @since	2019.06.20
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.20		PayVo 클래스 제작		작성자 : 양희준
 * 
 */

public class PayVo {
	private int r_no; 	// 예약 번호
	private int pay_price; // 총 금액
	private Date pay_dDate; // 결제 날짜
	private Time pay_tDate; // 결제 시간
	private int paym_no; // 결제수단 번호
	   
	public int getR_no() { 
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public int getPay_price() {
		return pay_price;
	}
	public void setPay_price(int pay_price) {
		this.pay_price = pay_price;
	}
	public Date getPay_dDate() {
		return pay_dDate;
	}
	public void setPay_dDate(Date pay_dDate) {
		this.pay_dDate = pay_dDate;
	}
	public Time getPay_tDate() {
		return pay_tDate;
	}
	public void setPay_tDate(Time pay_tDate) {
		this.pay_tDate = pay_tDate;
	}
	public int getPaym_no() {
		return paym_no;
	}
	public void setPaym_no(int paym_no) {
		this.paym_no = paym_no;
	}
	
	
	
}
