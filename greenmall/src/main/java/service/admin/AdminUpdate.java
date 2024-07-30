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
		String real = request.getServletContext().getRealPath("/upload");
			int maxSize = 1024 * 1024 * 10; // 10M
			try {
				MultipartRequest mr = new MultipartRequest(request, real, maxSize, "utf-8", new DefaultFileRenamePolicy());
				String pImg1 = mr.getFilesystemName("p_Img1");
				String pImg2 = mr.getFilesystemName("p_Img2");
				int cNum = Integer.parseInt(mr.getParameter("c_Num"));
				String pName = mr.getParameter("p_Name");
				int pPrice = Integer.parseInt(mr.getParameter("p_Price"));
				int pSale  = Integer.parseInt(mr.getParameter("p_Sale"));
				int pCnt = Integer.parseInt(mr.getParameter("p_Cnt"));
				gs.setP_Img1(pImg1);
				System.out.println("1"+gs.getP_Img1());
				gs.setP_Img2(pImg2);
				System.out.println("2"+gs.getP_Img2());
				gs.setC_Num(cNum);
				System.out.println("3"+gs.getC_Num());
				gs.setP_Name(pName);
				System.out.println("4"+gs.getP_Name());
				gs.setP_Price(pPrice);
				System.out.println("5"+gs.getP_Price());
				gs.setP_Sale(pSale);
				System.out.println("6"+gs.getP_Sale());
				gs.setP_Cnt(pCnt);
				System.out.println("7"+gs.getP_Cnt());
	
				
			} catch (IOException e) {
				System.out.println(e.getMessage());
			}
			GoodsDao gd = GoodsDao.getInstance();
			int result = 0; 
			result = gd.update(gd);
			request.setAttribute("result", result);
			return "AdminUpdate";
		}

	
}
