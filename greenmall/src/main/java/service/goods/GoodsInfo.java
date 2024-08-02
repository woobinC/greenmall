package service.goods;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.GoodsDao;
import dto.Goods;
import service.CommandProcess;

public class GoodsInfo implements CommandProcess {


	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		int p_No = Integer.parseInt(request.getParameter("p_No"));
		
		// 상세페이지
		GoodsDao gd = GoodsDao.getInstance();
		Goods gs = gd.select_no(p_No); gs.setP_No(p_No);
		p_No=gs.getP_No();

		int salePrice = gs.getP_Price()- gs.getP_Sale()* gs.getP_Price()/100 ;
		
		
		request.setAttribute("salePrice",salePrice);
		request.setAttribute("goods",gs);
	
		
		return "goodsInfo";
	}

}
