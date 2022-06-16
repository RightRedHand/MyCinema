package com.ichigo.test;

import com.ichigo.dao.IUserDao;
import com.ichigo.dao.UsersDaoImpl;
import com.ichigo.entity.Users;

public class testdao {

    public void testlogin(){
        IUserDao iUserDao = new UsersDaoImpl();

        Users siyuan = iUserDao.login("siyuan", "1234");

        System.out.println(siyuan);
    }
}
