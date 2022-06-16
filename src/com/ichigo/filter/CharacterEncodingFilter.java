package com.ichigo.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * Servlet Filter implementation class CharacterEncodingFilter
 */
@WebFilter(urlPatterns = "/*")
public class CharacterEncodingFilter implements Filter {

    /**
     * Default constructor. 
     */
    public CharacterEncodingFilter() {
    	System.out.println("-------CharacterEncodingFilter-------");
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
    	System.out.println("-------destroy-------");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// place your code here
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		chain.doFilter(request,response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
    	System.out.println("-------init-------");
	}

}
