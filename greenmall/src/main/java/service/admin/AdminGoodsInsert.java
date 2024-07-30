package service.admin;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import dao.GoodsDao;
import dto.Goods;
import service.CommandProcess;

public class AdminGoodsInsert implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		String real = request.getServletContext().getRealPath("/upload");
		int maxSize = 1024 * 1024 * 10; // 10M
		try {
			MultipartRequest mr = new MultipartRequest(request, real, maxSize, "utf-8", new DefaultFileRenamePolicy());
			String pImg1 = mr.getFilesystemName("pImg1");
			String pImg2 = mr.getFilesystemName("pImg2");
			int cNum = Integer.parseInt(mr.getParameter("cNum"));
			String pName = mr.getParameter("pName");
			int pPrice = Integer.parseInt(mr.getParameter("pPrice"));
			int pSale  = Integer.parseInt(mr.getParameter("pSale"));
			int pCnt = Integer.parseInt(mr.getParameter("pCnt"));
			Goods goods = new Goods();
//	파일명이 한글인 경우 맥은 한글이 안됨, 파일명을 날자 또는 UUID로 변경
			goods.setP_Img1(pImg1);
			goods.setP_Img2(pImg2);
			goods.setC_Num(cNum);
			goods.setP_Name(pName);
			goods.setP_Price(pPrice);
			goods.setP_Sale(pSale);
			goods.setP_Cnt(pCnt);
			GoodsDao gd = GoodsDao.getInstance();
			result = gd.insert(goods);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		request.setAttribute("result", result);
		System.out.println("result = "+result);
		return "adminGoodsInsert";
	}

}
