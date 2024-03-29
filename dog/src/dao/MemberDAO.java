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
 * @since	2019.06.18
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.18		MemberDAO 클래스 제작		작성자 : 강찬규
 * 			2019.06.18		loginCnt 클래스 제작		작성자 : 강찬규
 * 			2019.06.18		idCheck 클래스 제작			작성자 : 강찬규
 * 			2019.06.19		idGetData 클래스 제작		작성자 : 강찬규
 * 			2019.06.19		idCheck 클래스 수정			작성자 : 안다예
 * 			2019.06.19		addMemb 클래스 제작			작성자 : 안다예
 * 			2019.06.20		mailCheck 클래스 제작		작성자 : 강찬규
 * 			2019.06.20		randpwUpdate 클래스 제작	작성자 : 양희준
 * 			2019.06.21		mail 추가					작성자 : 안다예
 * 			2019.06.22		updateMemb 클래스 제작		작성자 : 양희준
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

	// 아이디로 회원정보 가져오는 함수
	public MemberVo idGetData(String id) {
		MemberVo vo = new MemberVo();
		con = db.getCon();
		String sql = mSQL.getSQL(mSQL.SEL_MEMB_INFO);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();
			
			vo.setMaddr(rs.getString("m_addr"));
			vo.setMname(rs.getString("m_name"));
			vo.setMbirth(rs.getString("m_birth"));
			vo.setMtel(rs.getString("m_tel"));
			vo.setMail(rs.getString("m_mail"));
		} catch(Exception e) {
			System.out.println("##### 아이디로 회원정보 가져오는 함수 DAO 에러");
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return vo;
	}

	
	// 아이디 중복체크 함수
	public int idCheck(String id) {
		int cnt = 8;
		con = db.getCon();
		String sql = mSQL.getSQL(mSQL.SEL_ID_CHECK);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();
			cnt = rs.getInt("cnt");
		} catch(Exception e) {
			System.out.println("##### 아이디 중복체크 함수 DAO 에러");
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return cnt;
	}
		
	// 회원 정보 가입 함수
	public MemberVo addMemb(MemberVo vo) {
		//회원정보 vo클래스에 있는 상태로 전달받음 -> 데이터 꺼내 회원정보 데이터 베이스에 추가하는 기능을 가진 함수
		//커넥션준비
		con = db.getCon();
		//질의명령가져오기
		String sql = mSQL.getSQL(mSQL.INSERT_MEMBER);
		//PreparedStatement 가져오기
		pstmt = db.getPSTMT(con, sql);
		//질의명령완성하기
		try {
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getMpw());
			pstmt.setString(3, vo.getMname());
			pstmt.setString(4, vo.getMbirth());
			pstmt.setString(5, vo.getMaddr());
			pstmt.setString(6, vo.getMtel());
			pstmt.setString(7, vo.getMail());
			//질의 명령 보내고 결과받기
			int cnt = pstmt.executeUpdate();
			if(cnt == 0) {
				vo.setMno(-1);
			} else {
				//회원가입 성공 -> 회원번호 다시가져옴
				vo.setMno(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		return vo;
	}
	
	// 아이디로 메일 체크 함수
	public int mailCheck(String id, String mail) {
		int cnt = 8;
		String smail = "";
		con = db.getCon();
		String sql = mSQL.getSQL(mSQL.SEL_ID_MAIL);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();
			smail = rs.getString("mail");
		} catch(Exception e) {
			System.out.println("##### 아이디로 메일 체크 함수 DAO 에러");
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		if(mail.equals(smail)) {
			// 성공한 경우
			cnt = 0;
		} else {
			// 실패한 경우
			cnt = 1;
		}
		return cnt;
	}
	
	// 임시비밀번호 변경
	public int randpwUpdate(String rpw, String id) {
		int cnt = 0;
		
		con = db.getCon();
		String sql = mSQL.getSQL(mSQL.UPDATE_RAND_PW);
		pstmt = db.getPSTMT(con, sql);
		
		try {
			pstmt.setString(1, rpw);
			pstmt.setString(2, id);
			
			cnt = pstmt.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
		}finally {
			db.close(pstmt);
			db.close(con);
		}
		return cnt;
	}
	
	// 회원정보 수정 함수
	public int updateMemb(MemberVo vo) {
		int cnt = 0;
		
		con = db.getCon();
		String sql = mSQL.getSQL(mSQL.UPDATE_MEMBER);
		pstmt = db.getPSTMT(con, sql);
		
		try {
			pstmt.setString(1, vo.getMpw());
			pstmt.setString(2, vo.getMtel());
			pstmt.setString(3, vo.getMail());
			pstmt.setString(4, vo.getMid());

			cnt = pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			db.close(pstmt);
			db.close(con);
		}
		return cnt;
	}
}
