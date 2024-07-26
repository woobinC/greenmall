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
		System.out.println(member.getmDel());
		if(member == null || member.getmDel().equals("y"))
			result = -1;
		else if(member.getmPw().equals(password)) {
			HttpSession session = request.getSession();
			session.setAttribute("mId", mId);
			result = 1;
		}
		request.setAttribute("result", result);
		return "main";
	}

}
