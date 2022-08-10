package com.brijincus.sample.application.config;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 * This class initialize the Spring MVC application.
 * 
 * @author Raj Khanna
 * @since 25-APR-2022
 * @version V1.0
 *
 */
@Component
public class MvcWebApplicationInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	private String fileUploadFolder;

	private int fileUploadMaxSize;

	/**
	 * Default constructor, it sets up the file upload folder and file upload file size.
	 * 
	 * @throws IOException
	 */
	public MvcWebApplicationInitializer() throws IOException {
		super();
		final Properties properties = new Properties();
		try (final InputStream stream =
		           this.getClass().getClassLoader().getResourceAsStream("application.properties")) {
		    properties.load(stream);

			this.fileUploadFolder = properties.getProperty("file.upload.folder");
			this.fileUploadMaxSize = Integer.parseInt(properties.getProperty("file.upload.max.size"));
		}
	}

	/**
	 * Load database and spring security configuration
	 */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.springframework.web.servlet.support.
	 * AbstractAnnotationConfigDispatcherServletInitializer#getRootConfigClasses
	 * ()
	 */
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] { MvcWebApplicationInitializer.class };
	}

	/**
	 * Load spring web configuration
	 */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.springframework.web.servlet.support.
	 * AbstractAnnotationConfigDispatcherServletInitializer#
	 * getServletConfigClasses()
	 */
	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] { SecurityConfig.class };
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.springframework.web.servlet.support.
	 * AbstractDispatcherServletInitializer#getServletMappings()
	 */
	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}

	/* (non-Javadoc)
	 * @see org.springframework.web.servlet.support.AbstractDispatcherServletInitializer#onStartup(javax.servlet.ServletContext)
	 */
	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		super.onStartup(servletContext);
	}

	/* (non-Javadoc)
	 * @see org.springframework.web.servlet.support.AbstractDispatcherServletInitializer#customizeRegistration(javax.servlet.ServletRegistration.Dynamic)
	 */
	@Override
	protected void customizeRegistration(ServletRegistration.Dynamic registration) {
		MultipartConfigElement multipartConfigElement = new MultipartConfigElement(this.fileUploadFolder,
				this.fileUploadMaxSize, this.fileUploadMaxSize * 2, this.fileUploadMaxSize / 2);

		registration.setMultipartConfig(multipartConfigElement);
	}
}
