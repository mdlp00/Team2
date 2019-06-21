package controller.dog;

import javax.servlet.http.*;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import dao.*;

 
@WebServlet("/dog/idcheck.ck")
public class IDCheck extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) {
		//할일
		//1. 데이터받기
		String mid = req.getParameter("id");
		//2. 데이터베이스에 넘겨서 데이터 만들기
		MemberDAO mDAO = new MemberDAO();
		int cnt = mDAO.idCheck(mid);
		//3. 넘겨준다
		PrintWriter pw = null;
		try {
			pw = resp.getWriter();
			pw.write( "{");
			pw.write("	\"cnt\": " + cnt);
			pw.write("}");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
