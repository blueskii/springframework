package com.mycompany.springframework.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class LoginCheckInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		log.info("실행");
		
		try {
			//@LoginCheck가 붙어 있는지 검사
			HandlerMethod handlerMethod = (HandlerMethod) handler;
			LoginCheck loginCheck = handlerMethod.getMethodAnnotation(LoginCheck.class);
			if(loginCheck == null) {
				//@LoginCheck가 붙어있지 않을 경우
				log.info("@LoginCheck가 붙어있지 않음");
			} else {
				//@LoginCheck가 붙어있을 경우
				log.info("@LoginCheck가 붙어 있음");
				
				//로그인 여부를 확인
				HttpSession session = request.getSession();
				String login = (String) session.getAttribute("login");
				if(login == null) {
					//로그인을 하지 않았을 경우
					String contextPath = request.getServletContext().getContextPath();
					response.sendRedirect(contextPath + "/ch02/loginForm");
					return false;
				} else {
					//로그인을 했을 경우
				}
			}
		} catch(Exception e) {
		}
		return true;
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		log.info("실행");
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		log.info("실행");
	}
}
