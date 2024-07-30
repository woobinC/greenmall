package dao;

import org.apache.ibatis.session.SqlSession;

import dto.FindMember;
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
		System.out.println(mId);
		return (Member) session.selectOne("memberns.select", mId);
	}

	public int insert(Member member) {
		return session.insert("memberns.insert",member);
	}

	public int update(Member member) {
		return session.update("memberns.update",member);
	}

	public int delete(String mId) {
		return session.update("memberns.delete",mId);
	}

	public Member selectEmail(String mName, String mEmail) {
		FindMember fm = new FindMember();
        fm.setmName(mName);
        fm.setmEmail(mEmail);
        System.out.println("selectEmail: " + fm.getmName() + ", " + fm.getmEmail());
		return (Member) session.selectOne("memberns.selectEmail",fm);
	}

	public Member selectTel(String mName, String mTel) {
		FindMember fm = new FindMember();
        fm.setmName(mName);
        fm.setmTel(mTel);
        System.out.println("selectTel: " + fm.getmName() + ", " + fm.getmTel());
		return (Member) session.selectOne("memberns.selectTel",fm);
	}
	
}
