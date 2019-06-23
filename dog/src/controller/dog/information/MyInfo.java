package controller.dog.information;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.MainController;
import dao.PetInfoDAO;
import vo.PetImgVo;
import vo.PetInfoVo;

public class MyInfo implements MainController{

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		
		String view = "information/myInfo.jsp"; 
		String mid = (String)req.getSession().getAttribute("SID");
		
		// 펫 정보 출력하기
		PetInfoDAO pdao = new PetInfoDAO();
		ArrayList<PetInfoVo> list = pdao.idGetPetData(mid);

		// 이미지 출력
		for(PetInfoVo vo : list) {
			List<PetImgVo> img_list = pdao.selectPetImg(vo.getP_no());
			vo.setImg_list(img_list);
		}
		
		req.setAttribute("LIST", list);
		
		return view;
	}
	
}
