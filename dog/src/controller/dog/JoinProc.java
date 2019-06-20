package controller.dog;

// 날짜 : 2019/06/19
// 작성자 : 안다예

import javax.servlet.http.*;

import com.oreilly.servlet.MultipartRequest;
import vo.*;
import controller.MainController;
import dao.*;

public class JoinProc implements MainController {

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view ="login.jsp";
	
		//컨트롤러에서 작업처리 성공여부와 관계없이 요청 취소후 요청다시 만들어야함
	
		//파라미터받기
		String mid="";
		String mpw="";
		String mname="";
		String mbirth="";
		String maddr="";
		String mtel="";
		
		mid = req.getParameter("id");
		mpw = req.getParameter("pw");
		mname = req.getParameter("name");
		mbirth = req.getParameter("birth");
		maddr = req.getParameter("addr");
		mtel = req.getParameter("tel");
	
		
		
		
		//데이터 많으르모 vo클래스에 담아서 매개변수 입력하자
		MemberVo vo = new MemberVo();
		vo.setMid(mid);
		vo.setMpw(mpw);
		vo.setMname(mname);
		vo.setMbirth(mbirth);
		vo.setMaddr(maddr);
		vo.setMtel(mtel);
		
		//디비작업하고 결과받기
		MemberDAO mdao = new MemberDAO();
		vo = mdao.addMemb(vo);
		//성공시 처리작업
		int mNo = vo.getMno();
		if(mNo == -1) {
			//회원가입 실패시
			view = "./join.c3";
		}else {
			//회원가입 성공시
			HttpSession session = req.getSession();
			session.setAttribute("MID", vo.getMid());
			view ="./welcome.jsp";	
		}
		return view;
	}

}
