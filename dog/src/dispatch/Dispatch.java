package dispatch;

import java.io.*;				// properties 파일을 읽을 목적
import java.util.*;				// Properties, HashMap을 사용할 목적

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import controller.*;

/**
 * 이 Class는 확장자가 c3로 요청이 된 경우 Dispatch시킬 Servlet Class이다.
 * 
 * @author	강찬규
 * @since	2019.06.18
 * @version	1.02
 *
 * @see
 * 			유지보수 기록 관리
 * 			????년 ??월 ??일		**** 작업수정		담당 : 아무개
 * 
 */

@WebServlet("*.c3")
public class Dispatch extends HttpServlet {
	public HashMap map;
	
	public void init(ServletConfig config) throws ServletException {
		Properties prop = new Properties();
		try {
			// 파일을 스트림으로 만들기
			String path = this.getClass().getResource("/").getPath();
			path = path + "resources/c3.properties";
			File file = new File(path);
			FileInputStream fin = new FileInputStream(file);
			// 읽기
			prop.load(fin);
		} catch(Exception e) {
			e.getStackTrace();
		}
		map = new HashMap();
		
		Enumeration en = prop.keys();
		while(en.hasMoreElements()) {
			String key = (String)en.nextElement();
			String strClass = prop.getProperty(key);
			try {
				Class tmp = Class.forName(strClass);
				Object o = tmp.newInstance();
				map.put(key, o);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String full = req.getRequestURI();
		String domain = req.getContextPath();
		int len = domain.length();
		String real = full.substring(len);
		
		MainController controller = (MainController)map.get(real);
		
		req.setAttribute("isRDR", 0);
		String view = controller.executeC3(req, resp);
		int rdr = (int)req.getAttribute("isRDR");
		if(rdr == 1) {
			try {
				resp.sendRedirect(view);
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return;
		}
		try {
			RequestDispatcher rd = req.getRequestDispatcher(view);
			rd.forward(req, resp);
		} catch(Exception e) {
			e.getStackTrace();
		}
	}
}
