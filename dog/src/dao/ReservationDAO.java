package dao;

import java.io.*;
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
 * @since	2019.06.24
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.24		ReservationDAO 클래스 제작			작성자 : 강찬규
 * 			2019.06.24		insertReservation 클래스 제작		작성자 : 강찬규
 */
public class ReservationDAO {
	CDBCP db = null;
	Connection con = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	ReservationSQL rSQL = null;
	
	public ReservationDAO() {
		db = new CDBCP();
		rSQL = new ReservationSQL();
	}
	
	// 예약 내역을 reservation 테이블에 추가하는 함수
	public int insertReservation(PetInfoVo vo, String start, String end) {
		con = db.getCon();
		String sql = rSQL.getSQL(rSQL.INSERT_RESERVATION);
		pstmt = db.getPSTMT(con, sql);
		int cnt = 9;
		try {
			pstmt.setString(1, start);
			pstmt.setString(2, end);
			pstmt.setInt(3, vo.getPa_no());
			pstmt.setInt(4, vo.getPs_no());
			
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		return cnt;
	}
}
