package dao;

import java.sql.*;
import java.util.*;

import sql.*;
import db.*;
import vo.*;
import utils.*;

/**
 * 이 클래스는 회원 정보에 관련된 데이터베이스 작업을 전담할 클래스이다.
 * 
 * @author	강찬규
 * @since	2019.06.18
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.18		MemberDAO 클래스 제작		작성자 : 강찬규
 * 			2019.06.18		loginCnt 클래스 제작		작성자 : 강찬규
 */
public class MemberDAO {
	CDBCP db = null;
	Connection con = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	MemberSQL mSQL = null;
	
	public MemberDAO() {
		db = new CDBCP();
		mSQL = new MemberSQL();
	}
	
	// 로그인 처리 함수
	public int loginCnt(String id, String pw) {
		int cnt = 8;
		con = db.getCon();
		String sql = mSQL.getSQL(mSQL.SEL_MEMB_CNT);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			rs.next();
			cnt = rs.getInt("cnt");
		} catch(Exception e) {
			System.out.println("##### 로그인 처리 함수 DAO 에러");
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return cnt;
	}
}
