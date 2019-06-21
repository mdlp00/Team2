package controller.dog;
/**
 * @author	양희준
 * @since	2019.06.20
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.20		PwSend 클래스 제작		작성자 : 양희준
 */
import javax.servlet.http.*;
import controller.*;
import dao.*;
import utils.*;

public class PwSend implements MainController{

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		req.setAttribute("isRDR", 1);
		String view = "login.c3";

		// 비밀번호 랜덤값
		String pw = PwRandom.getRamdomPassword(10);
		
		// 해당 아이디 및 메일 가져오기
		String pid = req.getParameter("pid");
		String pmail = req.getParameter("pmail");
		
		// 랜덤비밀번호 값 업데이트 작업
		MemberDAO mdao = new MemberDAO();
		int cnt = mdao.randpwUpdate(pw, pid);
		
		// 이메일 전송
		/*
		 * try { MailSend.send(); } catch (Exception e) { // TODO Auto-generated catch
		 * block e.printStackTrace(); }
		 */
		return view;
	}
	
}
