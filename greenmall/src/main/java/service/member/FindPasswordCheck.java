package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dto.Member;
import service.CommandProcess;

public class FindPasswordCheck implements CommandProcess {

    @Override
    public String requestPro(HttpServletRequest request, HttpServletResponse response) {
        String mPw = request.getParameter("mPw");
        String mId = request.getParameter("mId");
        if (mId != null) {
            MemberDao md = MemberDao.getInstance();
            Member member = new Member(); 
            member.setmId(mId);
            member.setmPw(mPw);
            
            int result = md.updatePw(member);
            request.setAttribute("result", result);
            
        } else {
            request.setAttribute("result", -1); 
        }
        
        return "findPasswordCheck";
    }
}
