package vo;

import java.util.List;

/**
 * 이 클래스는 펫에 대한 정보를 담는 클래스이다.
 * 
 * @author	양희준
 * @since	2019.06.20
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.20		PetInfoVo 클래스 제작		작성자 : 양희준
 * 			2019.06.21		age,size,kind 변수 및 겟터셋터 추기		작성자 : 양희준
 * 
 */

public class PetInfoVo {
	private int p_no;
	private String m_id;
	private String p_name;
	private int ps_no;
	private int pa_no;
	private int pk_no;
	private String pet_age;
	private String pet_size;
	private String pet_kind;
	
	PetImgVo main_img;
	List<PetImgVo> img_list;
	
	public List<PetImgVo> getImg_list() {
		return img_list;
	}
	public void setImg_list(List<PetImgVo> img_list) {
		this.img_list = img_list;
		
		for(PetImgVo imgVo: img_list)
			main_img = imgVo;
	}
	
	public PetImgVo getMain_img() {
		return main_img;
	}
	public void setMain_img(PetImgVo main_img) {
		this.main_img = main_img;
	}
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public String getPet_age() {
		return pet_age;
	}
	public void setPet_age(String pet_age) {
		this.pet_age = pet_age;
	}
	public String getPet_size() {
		return pet_size;
	}
	public void setPet_size(String pet_size) {
		this.pet_size = pet_size;
	}
	public String getPet_kind() {
		return pet_kind;
	}
	public void setPet_kind(String pet_kind) {
		this.pet_kind = pet_kind;
	}
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
