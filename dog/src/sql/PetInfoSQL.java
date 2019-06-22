package sql;
/**
 * 이 클래스는 펫정보에 관련된 데이터베이스 작업을 전담할 클래스이다.
 * 
 * @author	양희준
 * @since	2019.06.20
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.20		PetInfoSQL 클래스 제작		작성자 : 양희준
 *  		2019.06.20		getSQL 클래스 제작			작성자 : 양희준
 * 			2019.06.20		SELECT_PET				작성자 : 양희준
 * 			2019.06.20		INSERT_PET				작성자 : 양희준 
 * 			2019.06.22		SELECT_PET_IDX			작성자 : 양희준
 * 			2019.06.22		SEL_AGE_LIST			작성자 : 양희준
 * 			2019.06.22		SEL_SIZE_LIST			작성자 : 양희준
 * 			2019.06.22		SEL_KIND_LIST			작성자 : 양희준
 * 			2019.06.22		UPDATE_PET_INFO			작성자 : 양희준
 */
public class PetInfoSQL {
	public final int SELECT_PET = 1001; // 펫 정보조회 SQL
	public final int SELECT_PET_IDX = 1002; // 펫 인덱스조회 SQL
	public final int SEL_AGE_LIST = 1100; // 펫 나이 리스트 SQL
	public final int SEL_SIZE_LIST = 1101; // 펫 사이즈 리스트 SQL
	public final int SEL_KIND_LIST = 1102; // 펫 종류 리스트 SQL
	
	public final int INSERT_PET = 2001; // 펫 정보등록 SQL
	
	public final int UPDATE_PET_INFO = 3001; // 펫 정보수정 SQL
	
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case INSERT_PET:
			buff.append("INSERT INTO ");
			buff.append("	PETINFO(PIF_NO, PIF_NAME, PA_NO, PS_NO, PK_NO, M_ID) ");
			buff.append("VALUES ");
			buff.append("	( ");
			buff.append("	(SELECT NVL(MAX(PIF_NO),0)+1 FROM PETINFO), ");
			buff.append("	?, ");
			buff.append("	?, ");
			buff.append("	?, ");
			buff.append("	?, ");
			buff.append("	? ");
			buff.append("	) ");
			break;
		case SELECT_PET:
			buff.append("SELECT ");
			buff.append("	pif.pif_name pet_name, pk.pk_kinds pet_kind, pa.pa_age pet_age, ps.ps_size pet_size, pif_no ");
			buff.append("FROM ");
			buff.append("	member m INNER JOIN petinfo pif ON m.m_id=pif.m_id ");
			buff.append("	INNER JOIN petkinds pk ON pif.pk_no=pk.pk_no ");
			buff.append("	INNER JOIN petage pa ON pif.pa_no=pa.pa_no ");
			buff.append("	INNER JOIN petsize ps ON pif.ps_no=ps.ps_no ");
			buff.append("WHERE ");
			buff.append("	m.m_id = ? ");
			break;
		case SELECT_PET_IDX:
			buff.append("SELECT ");
			buff.append("pif.pif_name p_name, pk.pk_no pk_no, pa.pa_no pa_no, ps.ps_no ps_no, pif_no ");
			buff.append("FROM  ");
			buff.append("member m INNER JOIN petinfo pif on m.m_id=pif.m_id ");
			buff.append("INNER JOIN petkinds pk  on pif.pk_no=pk.pk_no ");
			buff.append("INNER JOIN petage  pa on pif.pa_no=pa.pa_no ");
			buff.append("INNER JOIN petsize ps on pif.ps_no=ps.ps_no ");
			buff.append("WHERE ");
			buff.append("pif.pif_no=? ");
			break;
		case SEL_AGE_LIST:
			buff.append("SELECT ");
			buff.append("pa_no, pa_age ");
			buff.append("FROM ");
			buff.append("PETAGE ");
			break;
		case SEL_SIZE_LIST:
			buff.append("SELECT ");
			buff.append("ps_no, ps_size, ps_price ");
			buff.append("FROM ");
			buff.append("PETSIZE ");
			break;
		case SEL_KIND_LIST:
			buff.append("SELECT ");
			buff.append("pk_no, pk_kinds ");
			buff.append("FROM ");
			buff.append("PETKINDS ");
			break;
		case UPDATE_PET_INFO:
			buff.append("UPDATE ");
			buff.append("petinfo ");
			buff.append("SET ");
			buff.append("pif_name = ?, ");
			buff.append("pa_no = ?, ");
			buff.append("ps_no = ?, ");
			buff.append("pk_no = ? ");
			buff.append("WHERE ");
			buff.append("pif_no = ? ");
		}
		
		return buff.toString();
	}
}
