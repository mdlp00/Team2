package sql;
/**
 * 이 클래스는 회원 정보에 관련된 데이터베이스 작업을 전담할 클래스이다.
 * 
 * @author	강찬규
 * @since	2019.06.18
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.18		MemberSQL 클래스 제작		작성자 : 강찬규
 * 			2019.06.18		getSQL 클래스 제작			작성자 : 강찬규
 * 			2019.06.18		SEL_MEMB_CNT			작성자 : 강찬규
 * 			2019.06.18		SEL_ID_CHECK			작성자 : 강찬규
 * 			2019.06.18		INSERT_MEMBER			작성자 : 강찬규
 * 			2019.06.19		SEL_MEMB_INFO			작성자 : 강찬규
 * 			2019.06.20 		INSERT_MEMBER(수정)		작성자 : 안다예
 * 			2019.06.20		SEL_ID_MAIL				작성자 : 강찬규
 * 			2019.06.20		UPDATE_RAND_PW			작성자 : 양희준
 * 			2019.06.21		m_mail 추가				작성자 : 안다예
 * 
 */
public class MemberSQL {
	public final int SEL_MEMB_CNT = 1001;
	public final int SEL_ID_CHECK = 1002;
	public final int SEL_MEMB_INFO = 1003;
	public final int SEL_ID_MAIL = 1004;

	
	public final int INSERT_MEMBER = 2001;
	
	public final int UPDATE_RAND_PW = 3001;
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case SEL_MEMB_CNT:
			buff.append("SELECT ");
			buff.append("	count(*) cnt ");
			buff.append("FROM ");
			buff.append("	member ");
			buff.append("WHERE ");
			buff.append("	m_id = ? ");
			buff.append("	AND m_pw = ? ");
			break;
		case SEL_ID_CHECK:
			buff.append("SELECT ");
			buff.append("	count(*) cnt ");
			buff.append("FROM ");
			buff.append("	member ");
			buff.append("WHERE ");
			buff.append("	m_id = ? ");
			break;
		case INSERT_MEMBER:
			buff.append("INSERT INTO ");
			buff.append("	member( ");
			buff.append("	m_no , m_id , m_pw , m_name, m_birth, m_addr, m_tel, m_mail ");
			buff.append("	) ");
			buff.append("VALUES( ");
			buff.append("	(SELECT NVL(MAX(m_no)+1, 1) FROM member ), ");
			buff.append(" 	?, ?, ?, ?, ?, ?, ?  ");
			buff.append("	) ");
			break;
		case SEL_MEMB_INFO:
			buff.append("SELECT ");
			buff.append("	m_addr, m_name, m_birth, m_tel, m_mail ");
			buff.append("FROM ");
			buff.append("	member ");
			buff.append("WHERE ");
			buff.append("	m_id = ? ");
			break;
		case SEL_ID_MAIL:
			buff.append("SELECT ");
			buff.append("	m_mail mail ");
			buff.append("FROM ");
			buff.append("	member ");
			buff.append("WHERE ");
			buff.append("	m_id = ? ");
			break;
		case UPDATE_RAND_PW:
			buff.append("UPDATE ");
			buff.append("	member ");
			buff.append("SET ");
			buff.append("	m_pw = ? ");
			buff.append("WHERE ");
			buff.append("	m_id = ? ");
		}
		
		return buff.toString();
	}
}
