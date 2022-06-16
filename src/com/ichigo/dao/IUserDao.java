package com.ichigo.dao;

import com.ichigo.entity.Movie;
import com.ichigo.entity.Users;

import java.util.List;

public interface IUserDao {
    int regist(Users user);

    Users login(String username,String password);

    int change(Users user);

    int delUsers(int uid);

    int savemovie(Movie movie);

    List<Movie> selectMovieByUid(int uid);
}
