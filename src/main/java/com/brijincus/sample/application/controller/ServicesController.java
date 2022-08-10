package com.brijincus.sample.application.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.brijincus.sample.application.transfer.SearchForm;

/**
 * This controller search the transactions from the database for the input
 * criteria and return list of ESB transactions to the caller.
 * 
 * @author Raj Khanna
 * @since 25-APR-2022
 * @version 1.0
 *
 */
@RestController
@RequestMapping(value = "/search")
public class ServicesController {

	private static final Logger logger = LoggerFactory.getLogger(ServicesController.class);

	@Value("${max.records.count}")
	protected int MAX_RECORD_COUNT;

	@Value("${max.records.count.error}")
	protected String MAX_RECORD_COUNT_ERROR;

	/**
	 * This method place the user to the search screen.
	 * 
	 * @param request
	 * @param model
	 * @return
	 * @throws CloneNotSupportedException 
	 */
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView search(HttpServletRequest request, ModelMap model) throws CloneNotSupportedException {
		String view = "search";
		if (request.getRemoteUser() == null) {
			return new ModelAndView("redirect:/login", model);
		}

		SearchForm searchForm = (SearchForm) request.getSession().getAttribute("searchForm");
		if (searchForm == null) {
			searchForm = new SearchForm();
		}
		System.out.println("Hello We are in the serach");
		model.addAttribute("command", searchForm);
		return new ModelAndView(view, model);
	}

}
