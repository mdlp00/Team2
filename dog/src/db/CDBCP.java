package db;

import java.sql.*;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 * 이 클래스는 커넥션 풀에 있는 커넥션을 이용하여
 * 데이터베이스 작업을 할 유틸리티 클래스이다.
 * 
 * @author	강찬규
 * @since	2019.06.18
 * @version	1.0
 * @see
 * 			유지관리 변경 등록
 * 			2019.06.18		CDBCP 클래스제작		담당자 : 강찬규 
 *
 */

public class CDBCP {
	public DataSource ds;
		
	public CDBCP() {
		try {
			// 1. context.xml 파일에 등록된 자원을 알아낸다.
			InitialContext context = new InitialContext();
			// 2. 그중에 필요한 자원을 얻으면 된다.
			ds = (DataSource)context.lookup("java:/comp/env/jdbc/TestDB");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// 커넥션 얻어오는 함수
	public Connection getCon() {
		Connection con = null;
		try {
			con = ds.getConnection();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	// Statement 만드는 함수
	public Statement getSTMT(Connection con) {
		Statement stmt = null;
		try {
			stmt = con.createStatement();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return stmt;
	}
	
	// PreparedStatement 만드는 함수
	public PreparedStatement getPSTMT(Connection con, String sql) {
		PreparedStatement pstmt = null;
		try {
			pstmt = con.prepareStatement(sql);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return pstmt;
	}
	
	// 자원을 반환하는 함수
	public void close(Object o) {
		try {
			if(o instanceof Connection) {
				((Connection)o).close();
			} else if(o instanceof Statement) {
				((Statement)o).close();
			} else if(o instanceof PreparedStatement) {
				((PreparedStatement)o).close();
			} else if(o instanceof ResultSet) {
				((ResultSet)o).close();				
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
