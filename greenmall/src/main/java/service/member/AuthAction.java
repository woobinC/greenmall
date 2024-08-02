package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CommandProcess;


public class AuthAction implements CommandProcess{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String inputCode = request.getParameter("inputCertify");
        String storedCode = (String) request.getSession().getAttribute("authCode");
        String mId = request.getParameter("mId");
        System.out.println(storedCode);
        if (storedCode != null && storedCode.equals(inputCode)) {
        	request.setAttribute("mId", mId);
            return ("findPasswordReset"); // 성공 페이지로 리다이렉트
        } else {
            request.setAttribute("errorMessage", "잘못된 인증번호입니다. 다시 입력해주세요.");
            return "userCertifyConfirm";
        }
	}
}
