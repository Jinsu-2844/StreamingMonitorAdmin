package com.mwstory.streamingmonitor.Interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SessionInterceptor extends HandlerInterceptorAdapter {
    
    
    /*@Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
        System.out.println("SessionInterceptor INIT");
        return true;    
    }*/
	
	@Override 
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	
		super.postHandle(request, response, handler, modelAndView);
		
		System.out.println("-----Interceptor posthandle-------");
	}

	@Override 
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		String id = (String) session.getAttribute("_id");
		System.out.println("-----Interceptor prehandle-------");
		if(id == null){
			response.sendRedirect("logout.do");
			 return false;
		}
	
		return true;

	}
}