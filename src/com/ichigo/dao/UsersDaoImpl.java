package com.ichigo.dao;

import com.ichigo.entity.Movie;
import com.ichigo.entity.Users;
import com.ichigo.util.DBUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class UsersDaoImpl implements IUserDao{

    QueryRunner qr = new QueryRunner(DBUtil.getDataSource());

    @Override
    public int regist(Users user) {
        try {
            qr.update("insert into user values(null,?,?,0)",user.getUsername(),user.getPassword());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return 0;
    }

    @Override
    public Users login(String username, String password) {
        try {
            return qr.query("select * from user where username = ? and password = ?",new BeanHandler<Users>(Users.class),username,password);
        } catch (SQLException throwables) {


        }
        return null;
    }

    @Override
    public int change(Users user) {

        return 0;
    }

    @Override
    public int delUsers(int uid) {

        return 0;
    }

    @Override
    public int savemovie(Movie movie) {

        try {
            return qr.update("insert into movie values(null,?,?,?,?)", movie.getMname(), movie.getMprice(), movie.getMdate(), movie.getUid());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return 0;
    }

    @Override
    public List<Movie> selectMovieByUid(int uid) {
        try {
            return qr.query("select * from movie where uid = ?",new BeanListHandler<Movie>(Movie.class),uid);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
}
