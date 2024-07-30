package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.MemberAddress;
import mybatis.MyBatisSessionFactory;
import service.mypage.Mypage;

public class MemberAddressDao {
	private static MemberAddressDao instance = new MemberAddressDao();
	
	private MemberAddressDao() {}

	public static MemberAddressDao getInstance() {
		return instance;
	}
	
	private static SqlSession session = MyBatisSessionFactory.getSession(true);

	public int insert(MemberAddress memberAddress) {
		return session.insert("memberAddressns.insert", memberAddress);
	}

	public MemberAddress select(String addrNum) {
		return (MemberAddress) session.selectOne("memberAddressns.select", addrNum);
	}

	public List<MemberAddress> list(String mId) {
		return session.selectList("memberAddressns.list",mId);
	}

	public int delete(String addrNum) {
		return session.delete("memberAddressns.delete", addrNum);
	}
	
}
