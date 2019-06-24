package controller.dog.visit;
import java.util.ArrayList;

/**
 * @author	강찬규
 * @since	2019.06.19
 * @version	1.0
 * @see
 * 			변경 이력 관리
 * 			2019.06.20		General3 클래스 제작		작성자 : 강찬규
 */
import javax.servlet.http.*;
import dao.*;
import vo.*;
import controller.MainController;

public class VisitProc implements MainController {

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "../welcome.c3";
		req.setAttribute("isRDR", 1);
		String[] pif_name = req.getParameterValues("pif_name");
		String pick_day = req.getParameter("pick_day");
		String start_time = req.getParameter("start_time");
		String end_time = req.getParameter("end_time");
		String reqe = req.getParameter("reqe");
		String ck1 = req.getParameter("ck1");
		String ck2 = req.getParameter("ck2");
		String ck3 = req.getParameter("ck3");
		String ck4 = req.getParameter("ck4");
		String payment = req.getParameter("payment");
		String[] card = req.getParameterValues("card_num");
				
		String id = (String)req.getSession().getAttribute("SID");
		MemberDAO mdao = new MemberDAO();
		PetInfoDAO pdao = new PetInfoDAO();
		MemberVo vo = mdao.idGetData(id);
		String addr = vo.getMaddr();
		
		
//		// pay 테이블에 입력하는 부분
//		// 카드번호 재구성
//		String card_num = "";
//		StringBuffer buff = new StringBuffer();
//		int ren = card.length;
//		for(int i = 0; i < ren; i++) {
//			buff.append(card[i]);
//			if(i != ren-1) {
//				buff.append("-");
//			}
//		}
//		card_num = buff.toString();
//		// pay 테이블에 넣을 데이터 정리
//		
//		// DAO를 이용하여 데이터베이스 처리
		
		
		// reservation 테이블에 입력하는 부분
		// 선택한 반려동물의 데이터를 담은 ArrayList 만들기
		ArrayList<PetInfoVo> list = pdao.idGetPetData(id);
		int len = pif_name.length;
		ArrayList<PetInfoVo> str = new ArrayList<PetInfoVo>();
		for(int i = 0; i < len; i++) {
			String pname = pif_name[i];
			for(int j = 0; j < list.size(); j++) {
				String sname = list.get(j).getP_name();
				if(pname.equals(sname)) {
					str.add(list.get(j));
				}
			}
		}
		// reservation 테이블에 넣을 데이터를 정리
		ArrayList<PetInfoVo> data = new ArrayList<PetInfoVo>();
		for(int i = 0; i < len; i++) { 
			data.add(pdao.petNoGetPetData(str.get(i).getP_no()));
		}
		String start = "2019/07/" + pick_day + " - " + start_time;
		String end = "2019/07/" + pick_day + " - " + end_time;
		if(pick_day.length() == 1) {
			start = "2019/07/0" + pick_day + " - " + start_time;
			end = "2019/07/0" + pick_day + " - " + end_time;
		}
		// DAO를 이용하여 데이터베이스 처리
		ReservationDAO rdao = new ReservationDAO();
		for(int i = 0; i < len; i++) {
			int cnt = rdao.insertReservation(data.get(i), start, end);
			if(cnt != 1) {
				System.out.println("reservation 테이블에 입력 실패");
				break;
			}
		}
		
		return view;
	}

}
