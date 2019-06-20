package vo;

import java.sql.Date;
import java.sql.Time;

public class ReservationVo {
	private int pi_no;
	private int ser_no;
	private int pst_no;
	private int lo_no;
	private char ispay;
	private Date r_Dstart;
	private Time r_Tstart;
	private Date r_Dend;
	private Time r_Tend;
	
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
