package dao;

import org.apache.ibatis.session.SqlSession;

import dto.Admin;
import mybatis.MyBatisSessionFactory;

public class AdminDao {
	// singleton
	private static AdminDao Instance = new AdminDao();

	private AdminDao() {
	}

	public static AdminDao getInstance() {
		return Instance;
	}

	private static SqlSession session = MyBatisSessionFactory.getSession(true);

	public Admin select(String adminId) {
			return (Admin) session.selectOne("admins.select", adminId);
	}

}
