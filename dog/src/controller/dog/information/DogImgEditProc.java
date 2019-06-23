package controller.dog.information;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import controller.MainController;
import dao.PetInfoDAO;
import vo.PetImgVo;

public class DogImgEditProc implements MainController {

	@Override
	public String executeC3(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/dog/myInfo.c3";
		String url = req.getRequestURL().toString().replace("/dog/information/dogImgEditProc.c3","");
		view = url + view;
		
		req.setAttribute("isRDR", 1);
		
		String web_path = "/upload/";
		String save_path = req.getServletContext().getRealPath(web_path);
		// 파일 관련
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(req, save_path, 1024 * 1024 * 10, "UTF-8",
					new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
	
		long len = 0;
		String oname = "";
		String ssname = "";
		Enumeration en = multi.getFileNames();
		while (en.hasMoreElements()) { // 업로드된 파일의 키값을 알아내고
			String key = (String) en.nextElement();
			// 해당 키값을 가진 파일 이름을 알아낸다. 
			oname  = multi.getOriginalFileName(key);
			// 업로드된 파일의 정보를 알아낸다. 
			ssname = multi.getFilesystemName(key);
			// 파일의 길이 알아내기
			File file = multi.getFile(key);	
			len = file.length();
		}
		 
		int pif_no = Integer.parseInt(multi.getParameter("p_no"));
		
		// vo에 넣고
		PetImgVo vo = new PetImgVo();
		vo.setPif_no(pif_no);
		vo.setPi_rfile(oname);
		vo.setPi_file(ssname);
		vo.setPi_len(len);
		vo.setPi_dir(web_path);
		
		// 디비작업
		PetInfoDAO pdao = new PetInfoDAO();
		int cnt = pdao.insertPetImg(vo);
		
		if(cnt == 0) {
			
		}else {
			
			return view;
		}

		return view;
	}

}
