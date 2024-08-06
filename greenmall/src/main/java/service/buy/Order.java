package service.buy;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BasketDao;
import dao.BuyDao;
import dao.DetailOrderDao;
import dao.MemberDao;
import dto.Basket;
import dto.Buy;
import dto.DetailOrder;
import dto.Member;
import service.CommandProcess;

public class Order implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String mId = (String) session.getAttribute("mId");
		int totalPrice = Integer.parseInt(request.getParameter("totalBuyPrice"));
		String bName= request.getParameter("bName");
		String bPostCode= request.getParameter("bPostCode");
		String bAddr= request.getParameter("bAddr");
		String bAddrDe= request.getParameter("bAddrDe");
		String bTel= request.getParameter("bTel");
		String bRequest= request.getParameter("bRequest");
		int bCnt= Integer.parseInt(request.getParameter("bCnt"));
		
		Buy buy = new Buy();
		buy.setmId(mId);
		buy.setTotalPrice(totalPrice);
		buy.setbName(bName);
		buy.setbPostCode(bPostCode);
		buy.setbAddr(bAddr);
		buy.setbAddrDe(bAddrDe);
		buy.setbTel(bTel);
		buy.setbRequest(bRequest);
		buy.setbCnt(bCnt);
		
		BuyDao bd = BuyDao.getInstance();
		
		int result = bd.insert(buy);
		int maxbNum = bd.selectMaxbNum(mId);
		BasketDao bkd = BasketDao.getInstance();
		DetailOrderDao dod = DetailOrderDao.getInstance();
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(mId);
		
		if(result > 0) {
			List<Basket> list = bkd.list(mId);
			for(Basket basket : list) {
				DetailOrder deo = new DetailOrder();
				deo.setbNum(maxbNum);
				deo.setpNo(basket.getpNo());
				deo.setPrice(basket.getcPrice());
				deo.setdCnt(basket.getcCnt());
				int dIn = dod.insert(deo);
				int bDe = bkd.delete(basket.getCartKey());
			}
		}
		List<DetailOrder> dolist = dod.list(maxbNum);
		
		for(DetailOrder d : dolist) {
			System.out.println(d);
		}
		request.setAttribute("dolist", dolist);
		request.setAttribute("member", member);
		
		return "/view/mypage/mypage";
	}

}
