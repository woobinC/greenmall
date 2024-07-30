package service.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import dto.Member;
import service.CommandProcess;

public class WishList implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (session.getAttribute("mId") == null) {
			System.out.println(session.getAttribute("mId"));
			return "notSession";
		} else {
			String mId = (String) session.getAttribute("mId");
			MemberDao md = MemberDao.getInstance();
			Member member = md.select(mId);
			request.setAttribute("member", member);
			return "wishList";
		}
	}

}
