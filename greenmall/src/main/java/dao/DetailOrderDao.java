package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.Admin;
import dto.DetailOrder;
import mybatis.MyBatisSessionFactory;

public class DetailOrderDao {
	// singleton
	private static DetailOrderDao Instance = new DetailOrderDao();

	private DetailOrderDao() {
	}

	public static DetailOrderDao getInstance() {
		return Instance;
	}

	private static SqlSession session = MyBatisSessionFactory.getSession(true);

	public Admin select(String adminId) {
		return (Admin) session.selectOne("adminns.select", adminId);
	}

	public int insert(DetailOrder deo) {
		return session.insert("detailOrderns.insert", deo);
	}

	public List<DetailOrder> list(int maxbNum) {
		return session.selectList("detailOrderns.list", maxbNum);
	}

}
