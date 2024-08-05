package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.Basket;
import mybatis.MyBatisSessionFactory;

public class BasketDao {
	private static BasketDao Instance = new BasketDao();

	private BasketDao() {
	}

	public static BasketDao getInstance() {
		return Instance;
	}

	private static SqlSession session = MyBatisSessionFactory.getSession(true);

	public int insert(Basket basket) {
		return session.insert("basketns.insert", basket);
	}
	
	public List<Basket> list(String mId) {
		return session.selectList("basketns.list", mId);
	}

}
