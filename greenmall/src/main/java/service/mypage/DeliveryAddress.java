package service.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberAddressDao;
import dao.MemberDao;
import dto.Member;
import dto.MemberAddress;
import service.CommandProcess;

public class DeliveryAddress implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberDao md = MemberDao.getInstance();
		MemberAddressDao mad = MemberAddressDao.getInstance();
		
		String mId = (String)session.getAttribute("mId");
		Member member = md.select(mId);
		List<MemberAddress> list = mad.list(mId);
		
		request.setAttribute("list", list);
		request.setAttribute("member", member);
		return "deliveryAddress";

	}

}
