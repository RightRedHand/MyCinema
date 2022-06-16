package com.ichigo.util;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

public class DBUtil {

	//	声明一个DruidDataSource连接池数据源对象
	private static DruidDataSource dataSource = null;
	
	static {
		
		Properties p = new Properties();

		try {
			//p.load(DruidDBUtil.class.getResourceAsStream("/data.properties"));
			p.load(DBUtil.class.getResourceAsStream("/db.properties"));
			
			//	通过DruidDataSourceFactory的createDataSource（properties）创建一个DruidDataSource数据源对象
			dataSource = (DruidDataSource) DruidDataSourceFactory.createDataSource(p);
			
			//	如果属性名不一致，可以手动设置连接字符串
			dataSource.setUrl(Env.getInstance().getProperty("url"));
			dataSource.setDriverClassName(Env.getInstance().getProperty("driver"));
			dataSource.setUsername(Env.getInstance().getProperty("user"));
			dataSource.setPassword(Env.getInstance().getProperty("pass"));
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 得到DataSource对象
	 * 
	 * @return
	 */
	public static DataSource getDataSource() {
		return dataSource;
	}

	public static Connection getConnection(){
		try {
			return dataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}
}
