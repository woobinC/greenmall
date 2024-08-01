package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		return (Member) session.selectOne("memberns.selectEmail",fm);
	}

	public Member selectTel(String mName, String mTel) {
		FindMember fm = new FindMember();
        fm.setmName(mName);
        fm.setmTel(mTel);
		return (Member) session.selectOne("memberns.selectTel",fm);
	}

	public List<Member> list(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("memberns.list", map);
	}

	public int getTotal() {
		return (int) session.selectOne("memberns.getTotal");
	}

	public int deleteMember(String mId) {
		return session.delete("memberns.deleteMember",mId);
	}

	public int updatePw(Member member) {
		return session.update("memberns.updatePw",member);
	}
	
}
