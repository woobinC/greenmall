package service.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import dto.Member;
import service.CommandProcess;

public class Mypage implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberDao md = MemberDao.getInstance();
		
		String mId = (String)session.getAttribute("mId");
		Member member = md.select(mId);
		request.setAttribute("member", member);
		return "mypage";
	}

}
