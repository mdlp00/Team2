package sql;

public class MemberSQL {
	public final int SEL_MEMB_CNT = 1001;
	public final int SEL_ID_CHECK = 1002;
	
	public final int INSERT_MEMBER = 2001;
	
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
			buff.append("	m_no, m_id, m_pw, m_addr, m_name, m_birth, m_tel ");
			buff.append("	) ");
			buff.append("VALUES( ");
			buff.append("	?, ?, ?, ?, ?, ?, ? ");
			buff.append("	) ");
			break;
		}
		return buff.toString();
	}
}
