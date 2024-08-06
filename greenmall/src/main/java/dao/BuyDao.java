package dao;

import org.apache.ibatis.session.SqlSession;

import dto.Admin;
import dto.Buy;
import mybatis.MyBatisSessionFactory;

public class BuyDao {
	// singleton
	private static BuyDao Instance = new BuyDao();

	private BuyDao() {
	}

	public static BuyDao getInstance() {
		return Instance;
	}

	private static SqlSession session = MyBatisSessionFactory.getSession(true);

	public int insert(Buy buy) {
		return session.insert("buyns.insert", buy);
	}

	public int selectMaxbNum(String mId) {
		return (int) session.selectOne("buyns.selectMaxbNum", mId);
	}


}
