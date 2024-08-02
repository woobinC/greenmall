package service.member;

import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CommandProcess;

public class UserCertifyConfirm implements CommandProcess {

    @Override
    public String requestPro(HttpServletRequest request, HttpServletResponse response) {
        // SMTP 서버 정보 설정
        Properties p = System.getProperties();
        p.put("mail.smtp.starttls.enable", "true");
        p.put("mail.smtp.host", "smtp.naver.com");
        p.put("mail.smtp.auth", "true");
        p.put("mail.smtp.port", "587");
        p.put("mail.smtp.ssl.protocols", "TLSv1.2");

        String mEmail = request.getParameter("mEmail");
        String mId = request.getParameter("mId");
        String myEmail = "pcw614@naver.com";

        // 이메일 인증을 위한 인증 객체 생성
        Authenticator auth = new MyAuth();
        Session session = Session.getDefaultInstance(p, auth);
        MimeMessage mm = new MimeMessage(session);

        try {
            mm.setSentDate(new Date());
            InternetAddress from = new InternetAddress(myEmail);
            mm.setFrom(from);

            InternetAddress to = new InternetAddress(mEmail);
            mm.setRecipient(Message.RecipientType.TO, to);
            mm.setSubject("그린몰 인증메일입니다", "utf-8");

            // 인증 코드 생성
            String authCode = generateAuthCode();
            mm.setText("인증 코드: " + authCode, "utf-8");
            mm.setHeader("content-Type", "text/html");

            javax.mail.Transport.send(mm);
            request.setAttribute("msg", "전송 성공");
            request.setAttribute("mId", mId);
            request.getSession().setAttribute("authCode", authCode); // 인증 코드를 세션에 저장
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("msg", "전송 실패");
        }
        return "userCertifyConfirm";
    }

    // 인증 코드 생성 메서드
    private String generateAuthCode() {
        Random ran = new Random();
        StringBuffer buffer = new StringBuffer();
        for (int i = 0; i < 6; i++) { // 6자리 인증 코드 생성
            if (ran.nextBoolean()) {
                buffer.append((char) (ran.nextInt(10) + '0')); // 숫자
            } else {
                buffer.append((char) (ran.nextInt(26) + 'A')); // 대문자
            }
        }
        return buffer.toString();
    }

    // 이메일 인증을 위한 Authenticator 클래스
    class MyAuth extends Authenticator {
        javax.mail.PasswordAuthentication account;

        public MyAuth() {
            String id = "pcw614";
            String pw = "qkrcjfdn1";
            account = new PasswordAuthentication(id, pw);
        }

        protected PasswordAuthentication getPasswordAuthentication() {
            return account;
        }
    }
}
