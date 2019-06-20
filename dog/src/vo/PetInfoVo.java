package vo;

/**
 * 이 클래스는 펫에 대한 정보를 담는 클래스이다.
 * 
 * @author	양희준
 * @since	2019.06.20
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.20		PetInfoVo 클래스 제작		작성자 : 양희준
 * 
 */

public class PetInfoVo {
	private String m_id;
	private String p_name;
	private int ps_no;
	private int pa_no;
	private int pk_no;
	
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public int getPs_no() {
		return ps_no;
	}
	public void setPs_no(int ps_no) {
		this.ps_no = ps_no;
	}
	public int getPa_no() {
		return pa_no;
	}
	public void setPa_no(int pa_no) {
		this.pa_no = pa_no;
	}
	public int getPk_no() {
		return pk_no;
	}
	public void setPk_no(int pk_no) {
		this.pk_no = pk_no;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	
	
}
