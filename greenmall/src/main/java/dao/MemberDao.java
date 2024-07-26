package dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import dto.Member;
import mybatis.MyBatisSessionFactory;

public class MemberDao {
	private static MemberDao instance = new MemberDao();
	
	private MemberDao() {}

	public static MemberDao getInstance() {
		return instance;
	}
	
	private static SqlSession session = MyBatisSessionFactory.getSession(true);
	
	public Member select(String mId) {
		return (Member) session.selectOne("memberns.select", mId);
	}

	public int insert(Member member) {
		return session.insert("memberns.insert",member);
	}
	
}
