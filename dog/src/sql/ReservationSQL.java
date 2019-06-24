package sql;
/**
 * 이 클래스는 회원 정보에 관련된 데이터베이스 작업을 전담할 클래스이다.
 * 
 * @author	강찬규
 * @since	2019.06.24
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.24		ReservationSQL 클래스 제작		작성자 : 강찬규
 * 			2019.06.24		INSERT_RESERVATION				작성자 : 강찬규
 */
public class ReservationSQL {
	public final int INSERT_RESERVATION = 2001;
	public final int INSERT_PAY_DATA = 2002;
	
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case INSERT_RESERVATION:
			buff.append("INSERT INTO ");
			buff.append("	reservation(r_no, r_start, r_end, pa_no, ps_no, pst_no, lo_no, ser_no) ");
			buff.append("VALUES( ");
			buff.append("	(SELECT NVL(MAX(r_no)+1, 1) from reservation), ");
			buff.append("	?, ?, ?, ?, 1, 1, 2 ");
			buff.append("	) ");		    
			break;
		case INSERT_PAY_DATA:
			buff.append("INSERT INTO ");
			buff.append("	pay(pay_no,  ) ");
			buff.append("VALUES( ");
			buff.append("	(SELECT NVL(MAX(pay_no)+1, 1) from pay), ");
			buff.append("	?, ?, ?, ? ");
			buff.append("	) ");		    
			break;
		}
		
		return buff.toString();
	}
}
