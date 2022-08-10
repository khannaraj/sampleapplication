package com.brijincus.sample.application.config.security;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.AuthenticationCredentialsNotFoundException;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

/**
 * This class is used by spring controller to authenticate and authorize user
 * modified this class to user our Database and defined user roles
 * 
 * @author Raj Khanna
 * @since 25-APR-2022
 * @version V1.0
 * 
 */
@Component
public class ApplicationAuthenticationProvider implements AuthenticationProvider {

	private static final Logger logger = LoggerFactory.getLogger(ApplicationAuthenticationProvider.class);

	/* (non-Javadoc)
	 * @see org.springframework.security.authentication.AuthenticationProvider#authenticate(org.springframework.security.core.Authentication)
	 */
	@Override
	public Authentication authenticate(final Authentication authentication) throws AuthenticationException {
		try {
			final String name = authentication.getName();
			final String password = authentication.getCredentials().toString();
			boolean authFlag =  validate(name, password);

			logger.info("SIS Autehtication Started");
			if (authFlag) {
				final List<GrantedAuthority> grantedAuths = new ArrayList<>();
				String[] roles = {password};
				for (String role:roles) {
					grantedAuths.add(new SimpleGrantedAuthority(role));
				}
				final UserDetails principal = new User(name, password, grantedAuths);
				final Authentication auth = new UsernamePasswordAuthenticationToken(principal, password, grantedAuths);
				logger.debug("Successfully authenticated user " + name);
				
				return auth;
			} else {
				logger.error("Failed to authenticated user " + name);
			}
		} catch (Exception e) {
			throw new AuthenticationCredentialsNotFoundException("Invalid Credantials");
		}
		return null;
	}

	/**
	 * @param name
	 * @param password
	 * @return
	 */
	protected boolean validate(String name, String password) {
		return true;
	}

	/* (non-Javadoc)
	 * @see org.springframework.security.authentication.AuthenticationProvider#supports(java.lang.Class)
	 */
	@Override
	public boolean supports(final Class<?> authentication) {
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}
}