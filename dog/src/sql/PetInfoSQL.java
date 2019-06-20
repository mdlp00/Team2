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
 */
public class PetInfoSQL {
	public final int SELECT_PET = 1001; // 펫 정보조회 SQL
	public final int INSERT_PET = 2001; // 펫 정보등록 SQL
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case INSERT_PET:
			buff.append("INSERT INTO ");
			buff.append("	PETINFO(PIF_NO, PIF_NAME, PA_NO, PS_NO, PK_NO, M_ID) ");
			buff.append("VALUES ");
			buff.append("(");
			buff.append("(SELECT NVL(MAX(PIF_NO),0)+1 FROM PETINFO),");
			buff.append("?");
			buff.append("?");
			buff.append("?");
			buff.append("?");
			buff.append("?");
			buff.append(")");
			break;
		case SELECT_PET:
			buff.append("SELECT ");
			buff.append("pif.pif_name, pk.pk_kinds, pa.pa_age, ps.ps_size ");
			buff.append("FROM ");
			buff.append("member m INNER JOIN petinfo pif ON m.m_id=pi.m_id ");
			buff.append("INNER JOIN petkinds pk ON pif.pk_no=pk.pk_no ");
			buff.append("INNER JOIN petage pa ON pif.pa_no=pa.pa_no ");
			buff.append("INNER JOIN petsize ps ON pif.ps_no=ps.ps_no ");
			buff.append("WHERE ");
			buff.append("m.m_id = ?");
		}
		
		return buff.toString();
	}
}
