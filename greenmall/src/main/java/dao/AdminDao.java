package dao;

import org.apache.ibatis.session.SqlSession;

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
	public void on() {
		
		
		session.close();
	}

}
