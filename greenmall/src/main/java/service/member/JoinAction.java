package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dto.Member;
import service.CommandProcess;

public class JoinAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String mId = request.getParameter("mId");
		String mPw = request.getParameter("mPw");
		String mName = request.getParameter("mName");
		String mEmail = request.getParameter("mEmail");
		String mTel = request.getParameter("mTel");
		String mPostCode = request.getParameter("mPostCode");
		String mAddr = request.getParameter("mAddr");
		String mAddrDe = request.getParameter("mAddrDe");
		
		Member member = new Member();
		member.setmId(mId);		
		member.setmPw(mPw);
		member.setmName(mName);
		member.setmEmail(mEmail);
		member.setmTel(mTel);
		member.setmPostCode(mPostCode);
		member.setmAddr(mAddr);
		member.setmAddrDe(mAddrDe);
		
		int result = 0;
		MemberDao md = MemberDao.getInstance();
		Member member2 = md.select(mId);
		if(member2 == null) result = md.insert(member);
		else result = -1; // 이미 존재하는 데이터
		
		request.setAttribute("result", result);
		request.setAttribute("mId", mId);
		return "joinOk";
	}

}
