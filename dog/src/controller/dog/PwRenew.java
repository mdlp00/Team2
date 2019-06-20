package controller.dog;
/**
 * @author	강찬규
 * @since	2019.06.20
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.20		PwRenew 클래스 제작		작성자 : 강찬규
 */
import javax.servlet.http.*;
import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import dao.*;


@WebServlet("/dog/pwrenew.ck")
public class PwRenew extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) {
		int cnt = 9;
		// 1. 데이터 받기
		String sid = req.getParameter("id");
		String smail = req.getParameter("mail");
		// 2. 데이터베이스 처리
		MemberDAO mDAO = new MemberDAO();
		cnt = mDAO.mailCheck(sid, smail);
		// 3. 넘겨준다
		PrintWriter pw = null;
		try {
			pw = resp.getWriter();
			pw.write("	{");
			pw.write("	\"cnt\" : " + cnt);
			pw.write("	}");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
