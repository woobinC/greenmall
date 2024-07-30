package service.display;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import dto.Member;
import service.CommandProcess;

public class Main implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String mId = (String)session.getAttribute("mId");
		if(mId != null) {
			MemberDao md = MemberDao.getInstance();
			Member member = md.select(mId);
			request.setAttribute("member", member);
		}
		return "main";
	}

}
