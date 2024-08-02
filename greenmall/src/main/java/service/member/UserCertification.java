package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import dto.Member;
import service.CommandProcess;

public class UserCertification implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String mId = request.getParameter("mId");
		String mName = request.getParameter("mName");
		MemberDao md = MemberDao.getInstance();
		int result = 0;
		Member member = md.select(mId); 
		if(member == null || "y".equals(member.getmDel())) {
			result = -1;
			request.setAttribute("result", result);
			return "findPassword";
		}else if(!member.getmName().equals(mName)) {
			result = 0;
			request.setAttribute("result", result);
			return "findPassword";
		}else {
			result = 1;
			request.setAttribute("member", member);
			request.setAttribute("mId", mId);
			return "userCertification";
		}
	}

}
