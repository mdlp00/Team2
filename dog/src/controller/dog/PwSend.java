package controller.dog;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.MainController;
import dao.MemberDAO;
import utils.MailSend;
import utils.PwRandom;

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
