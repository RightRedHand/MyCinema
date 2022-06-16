package com.ichigo.util;

import java.io.IOException;
import java.util.Properties;


/**
 * 以单例的方式创建Env对象
 * 
 * @author james
 *
 */
public class Env extends Properties {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private static Env instance = null;
	
	/**
	 * 单例模式构造器必须私有化
	 */
	private Env() {
		try {
			//			动态加载指定的properties文件，以便通过指定key获取该key对应的值， properties文件中的内容均为字符串
			load(getClass().getResourceAsStream("/db.properties"));
			//load(new FileInputStream("db.properties"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 在该类的外部以静态的方式可以获取Env实例对象
	 * @return
	 */
	public static Env getInstance() {
		
		if(instance == null) {
			instance = new Env();
		}
		
		return instance;
	}
}

