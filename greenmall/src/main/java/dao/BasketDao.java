package dao;

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

}
