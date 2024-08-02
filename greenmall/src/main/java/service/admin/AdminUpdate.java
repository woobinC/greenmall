package service.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.GoodsDao;
import dto.Goods;
import service.CommandProcess;

public class AdminUpdate implements CommandProcess{

	@Override
		public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		Goods gs = new Goods();
		String real = request.getServletContext().getRealPath("/images/goods");
			int maxSize = 1024 * 1024 * 10; // 10M
			try {
				MultipartRequest mr = new MultipartRequest(request, real, maxSize, "utf-8", new DefaultFileRenamePolicy());
				int pNo = Integer.parseInt(mr.getParameter("pNo"));
				System.out.println(pNo);
				String pImg1 = mr.getFilesystemName("pImg1");
				String pImg2 = mr.getFilesystemName("pImg2");
				int cNum = Integer.parseInt(mr.getParameter("cNum"));
				String pName = mr.getParameter("pName");
				int pPrice = Integer.parseInt(mr.getParameter("pPrice"));
				int pSale  = Integer.parseInt(mr.getParameter("pSale"));
				int pCnt = Integer.parseInt(mr.getParameter("pCnt"));
				gs.setP_No(pNo);
				gs.setP_Img1(pImg1);
				gs.setP_Img2(pImg2);
				gs.setC_Num(cNum);
				gs.setP_Name(pName);
				gs.setP_Price(pPrice);
				gs.setP_Sale(pSale);
				gs.setP_Cnt(pCnt);
				System.out.println(gs);
				
			} catch (IOException e) {
				System.out.println(e.getMessage());
			}
			GoodsDao gd = GoodsDao.getInstance();
			int result = 0; 
			result = gd.update(gs);
			request.setAttribute("result", result);
			return "adminUpdate";
		}

	
}
