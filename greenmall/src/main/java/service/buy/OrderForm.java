package service.buy;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BasketDao;
import dao.MemberDao;
import dto.Basket;
import dto.Member;
import service.CommandProcess;

public class OrderForm implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String mId = (String) session.getAttribute("mId");
		int totalGoodsCnt = 0;
		int totalGoodsPrice = 0;
		
		BasketDao bd = BasketDao.getInstance();
		List<Basket> list = bd.list(mId);
		for(Basket b : list) {
			totalGoodsCnt += b.getcCnt();
			totalGoodsPrice += b.getcPrice();
		}
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(mId);
		
		request.setAttribute("list", list);
		request.setAttribute("member", member);
		request.setAttribute("totalGoodsCnt", totalGoodsCnt);
		request.setAttribute("totalGoodsPrice", totalGoodsPrice);
		return "orderForm";
	}

}
