package controller.dog;
/**
 * @author	강찬규
 * @since	2019.06.18
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.18		LoginProc 클래스 제작		작성자 : 강찬규
 */
import javax.servlet.http.*;
import dao.*;
import controller.MainController;

public class LoginProc implements MainController {

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "";
		String sid = req.getParameter("id");
		String spw = req.getParameter("pw");
		
		System.out.println(sid);
		System.out.println(spw);
		
		MemberDAO mdao = new MemberDAO();
		int cnt = mdao.loginCnt(sid, spw);
		if(cnt == 1) {
			// 성공
			view = "welcome.jsp";
			HttpSession session = req.getSession();
			session.setAttribute("SID", sid);
		} else {
			// 실패
			System.out.println("로그인 실패 // 아이디와 비밀번호가 일치하지 않습니다.");
			req.setAttribute("isRDR", 1);
			view = "login.jsp";
		}
		return view;
	}

}
