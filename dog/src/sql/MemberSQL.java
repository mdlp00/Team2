package sql;

public class MemberSQL {
	public final int SEL_MEMB_CNT = 1001;
	
	
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
		}
		return buff.toString();
	}
}
