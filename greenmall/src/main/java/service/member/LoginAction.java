package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import dto.Member;
import service.CommandProcess;

public class LoginAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String mId = request.getParameter("mId");
		String password = request.getParameter("password");
		
		MemberDao md = MemberDao.getInstance();
		int result = 0;
		Member member = md.select(mId); 
		if(member == null || "y".equals(member.getmDel())) {
			result = -1;
			request.setAttribute("result", result);
			return "loginForm";
		}else if(!member.getmPw().equals(password)) {
			result = 0;
			request.setAttribute("result", result);
			return "loginForm";
		}else {
			result = 1;
			HttpSession session = request.getSession();
			session.setAttribute("mId", mId);
			request.setAttribute("result", result);
			return "login";
		}
	}

}
