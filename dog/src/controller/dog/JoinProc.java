package controller.dog;
/**
 * 
 * 
 * @author	안다예
 * @since	2019.06.19
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.19		JoinProc 클래스 제작		작성자 : 안다예
 * 			2019.06.20		JoinProc 일부 수정			작성자 : 강찬규
 * 			2019.06.19		JoinProc mail 추가		작성자 : 안다예
 */
import javax.servlet.http.*;

import com.oreilly.servlet.MultipartRequest;
import vo.*;
import controller.MainController;
import dao.*;

public class JoinProc implements MainController {

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view ="login.jsp";
	
		// 컨트롤러에서 작업 처리 성공 여부와 관계 없이 요청 취소 후 요청을 다시 만들어야 함
		
		// 파라미터 받기
		String mid = req.getParameter("id");
		String mpw = req.getParameter("pw");
		String mname = req.getParameter("name");
		String mbirth = req.getParameter("birth");
		String maddr = req.getParameter("addr");
		String mtel = req.getParameter("tel");
		String mmail = req.getParameter("mail");

		// 데이터 많음으로 vo클래스에 담아서 매개변수를 입력하자
		MemberVo vo = new MemberVo();
		vo.setMid(mid);
		vo.setMpw(mpw);
		vo.setMname(mname);
		vo.setMbirth(mbirth);
		vo.setMaddr(maddr);
		vo.setMtel(mtel);
		vo.setMail(mmail);
		
		// 디비 작업하고 결과 받기
		MemberDAO mdao = new MemberDAO();
		vo = mdao.addMemb(vo);
		// 성공시 처리 작업
		int mNo = vo.getMno();
		if(mNo == -1) {
			// 회원 가입 실패시
			view = "./join.c3";
		} else {
			// 회원 가입 성공시
			req.setAttribute("isRDR", 1);
			HttpSession session = req.getSession();
			session.setAttribute("SID", vo.getMid());
			view ="./welcome.jsp";
		}
		return view;
	}

}
