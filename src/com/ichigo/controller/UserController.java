package com.ichigo.controller;

import com.ichigo.dao.IUserDao;
import com.ichigo.dao.UsersDaoImpl;
import com.ichigo.entity.Movie;
import com.ichigo.entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/UserServlet")
public class UserController extends BaseServlet{
    IUserDao iUserDao = new UsersDaoImpl();

    protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Users user = iUserDao.login(username,password);

        if (user != null ){
            HttpSession session = request.getSession();
            session.setAttribute("u",user);
//            request.getRequestDispatcher("MyCinema/").forward(request,response);
            List<Movie> movies = iUserDao.selectMovieByUid(user.getUid());
            session.setAttribute("list",movies);


            response.sendRedirect("movie.jsp");




        }else {
            response.getWriter().append("loginfailed");
        }

    }

    protected void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        iUserDao.regist(new Users(-1,username,password,0));

        request.getRequestDispatcher("MyCinema/login.jsp").forward(request,response);

    }

    protected void choosemovie1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String movietime = request.getParameter("movie");
        Movie movie = new Movie();
        movie.setMdate(movietime);
        movie.setMprice("35");
        movie.setMname("我和我的家乡");
        Users u = (Users) request.getSession().getAttribute("u");

        if (u != null){
            movie.setUid(u.getUid());
        }

        iUserDao.savemovie(movie);
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("u");

        List<Movie> movies = iUserDao.selectMovieByUid(user.getUid());
        session.setAttribute("list",movies);

        response.sendRedirect("movie.jsp");

    }
    protected void choosemovie2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String movietime = request.getParameter("movie");
        Movie movie = new Movie();
        movie.setMdate(movietime);
        movie.setMprice("35");
        movie.setMname("中国女排");
        Users u = (Users) request.getSession().getAttribute("u");

        if (u != null){
            movie.setUid(u.getUid());
        }

        iUserDao.savemovie(movie);
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("u");

        List<Movie> movies = iUserDao.selectMovieByUid(user.getUid());
        session.setAttribute("list",movies);

        response.sendRedirect("movie.jsp");

    }
    protected void choosemovie3(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String movietime = request.getParameter("movie");
        Movie movie = new Movie();
        movie.setMdate(movietime);
        movie.setMprice("35");
        movie.setMname("姜子牙");
        Users u = (Users) request.getSession().getAttribute("u");

        if (u != null){
            movie.setUid(u.getUid());
        }

        iUserDao.savemovie(movie);
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("u");

        List<Movie> movies = iUserDao.selectMovieByUid(user.getUid());
        session.setAttribute("list",movies);

        response.sendRedirect("movie.jsp");

    }


}
