package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import db.CDBCP;
import sql.MemberSQL;
import sql.PetInfoSQL;
import vo.MemberVo;
import vo.PetInfoVo;

/**
 * 이 클래스는 회원 정보에 관련된 데이터베이스 작업을 전담할 클래스이다.
 * 
 * @author	양희준
 * @since	2019.06.20
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.20		PetInfoDAO 클래스 제작		작성자 : 양희준
 * 			2019.06.20		addPetInfo 함수 제작 		작성자 : 양희준
 * 			2019.06.21		idGetPetData 함수 제작 		작성자 : 강찬규
 */

public class PetInfoDAO {
	CDBCP db = null;
	Connection con = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	PetInfoSQL pSQL = null;
 	
	public PetInfoDAO() {
		db = new CDBCP();
		pSQL = new PetInfoSQL();
	}
	

	// 회원 정보 가입 함수
	public int addPetInfo(PetInfoVo vo) {
		//회원정보 vo클래스에 있는 상태로 전달받음 -> 데이터 꺼내 회원정보 데이터 베이스에 추가하는 기능을 가진 함수
		//커넥션준비
		con = db.getCon();
		//질의명령가져오기
		String sql = pSQL.getSQL(pSQL.INSERT_PET);
		//PreparedStatement 가져오기
		pstmt = db.getPSTMT(con, sql);
		//질의명령완성하기
		int cnt = 9;
		try {
			pstmt.setString(1, vo.getP_name());
			pstmt.setInt(2, vo.getPa_no());
			pstmt.setInt(3, vo.getPs_no());
			pstmt.setInt(4, vo.getPk_no());
			pstmt.setString(5, vo.getM_id());
			//질의 명령 보내고 결과받기
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		return cnt;
	}
	
	// 아이디로 펫 정보 가져오는 함수
	public ArrayList<PetInfoVo> idGetPetData(String mid) {
		ArrayList<PetInfoVo> list = new ArrayList<PetInfoVo>();
		con = db.getCon();
		String sql = pSQL.getSQL(pSQL.SELECT_PET);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, mid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				PetInfoVo vo = new PetInfoVo();
				vo.setP_name(rs.getString("pet_name"));
				vo.setPet_age(rs.getString("pet_age"));
				vo.setPet_kind(rs.getString("pet_kind"));
				vo.setPet_size(rs.getString("pet_size"));
				list.add(vo);
			}
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("아이디로 펫 정보 가져오는 DAO 처리 에러");
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return list;
	}
}
