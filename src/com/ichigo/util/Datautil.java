package com.ichigo.util;





import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Datautil {
private static SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm-dd");
public static Date date2data(String s) {
	try {
		return sdf.parse(s);
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
}

public static String date2str(Date d) {
	return sdf.format(d);
	
}

public static java.sql.Date sqldate(Date d){
	return new java.sql.Date(d.getTime());
}
	public void test() {
		Date date = date2data("2012-11-11");
		System.out.println(date);
		
		System.out.println("--------------");
		
		System.out.println(sqldate(date));
	}


}
