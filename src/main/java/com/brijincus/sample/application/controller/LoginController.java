package com.brijincus.sample.application.controller;

import java.security.Principal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.brijincus.sample.application.transfer.SearchForm;


/**
 * This controller is used in response to login request.
 * 
 * @author Raj Khanna
 * @since 25-APR-2022
 * @version V1.0
 *
 */
@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	/**
	 * The first page URL. This controller method sets up the login page for the
	 * user.
	 * 
	 * @param request
	 * @param model
	 * @param principal
	 * @return
	 * @throws ServletException
	 */
	@GetMapping("/login")
	public String index4(HttpServletRequest request, ModelMap model, Principal principal) throws ServletException {
		model.addAttribute("command", new SearchForm());
		return "login";
	}

	/**
	 * This is the submission method of the login page receiving the data from the URLs.
	 * 
	 * @param request
	 * @param model
	 * @param principal
	 * @return
	 * @throws ServletException
	 * @throws CloneNotSupportedException 
	 */
	@GetMapping("/loginIndex")
	public ModelAndView index(HttpServletRequest request, ModelMap model, Principal principal) throws ServletException, CloneNotSupportedException {
		logger.debug("loginIndex - Enter");
		if (request.getRemoteUser() != null) request.logout();
		request.login("user", "password");

		SearchForm searchForm = new SearchForm();
		model.addAttribute("command", searchForm);
		return new ModelAndView("search", model);
	}

	/**
	 * Display the search  page to the user.
	 * 
	 * @param model
	 * @param principal
	 * @return
	 */
	protected String showSearchPage(ModelMap model, Principal principal) {
		return "search";
	}

}
