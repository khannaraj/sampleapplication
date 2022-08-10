package com.brijincus.sample.application.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * This application set up the logout response for the caller.
 * 
 * @author Raj Khanna
 * @since 25-APR-2022
 * @version V1.0
 *
 */
@RestController
public class TechRadarLogoutController {

	/**
	 * This method cleans up the session in response to logout.
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = { "/logout" }, method = RequestMethod.GET)
	public ModelAndView logout(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(false);
		SecurityContextHolder.clearContext();
		session = request.getSession(false);
		
		System.out.println("Logging out here");
		if (session != null) {
			session.invalidate();
		}
		for (Cookie cookie : request.getCookies()) {
			cookie.setMaxAge(0);
		}

		return new ModelAndView("login", model);
	}

	/**
	 * This call is made from the 15 minutes time warning from the UI.
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = { "/warning" }, method = RequestMethod.GET)
	public ModelAndView warning(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		return new ModelAndView("warning", model);
	}

	/**
	 * This call is made from the UI to extend the session.
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = { "/extend" }, method = RequestMethod.GET)
	public ModelAndView extend(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		return new ModelAndView("extend", model);
	}
	
}
