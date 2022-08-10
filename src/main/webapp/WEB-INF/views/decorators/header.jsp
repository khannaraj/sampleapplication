<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

	<div class="hidden-print" style="text-align: center; vertical-align: middle;  background-color: #036;display:block;height:35px;"><img 
		src='/resources/images/BRIJ-logo.JPG' style="text-align: center;" 
		alt="BRIJ Inc Logo" >
	</div>

	<table border="0" cellpadding="0" cellspacing="0" role="presentation">
		<tr style="height:100px;" class="hidden-print">
			<td>
				<span style="position:absolute;left:25px;top:5px;color:white;">
					<security:authorize access="isAuthenticated()">
						<a href="#decoratorBody" title="Skip to main content" style="color:white;" >Skip to main content</a>
						<span>|</span>
						<a href='<spring:url value="/search/search.html" />' title="Home Page" style="color:white;" >Home</a><br >
					</security:authorize>
				</span>
			</td>
			<td align="right">
				<security:authorize access="isAuthenticated()">
					<a href='<spring:url value="/logout.html" />'  title="Logout of Sample Application Application"  style="position:absolute;top:5px;right:25px;color:white;font-size:120%;" ><span 
					class="glyphicon glyphicon-log-out"></span>Logout</a>
				</security:authorize>
			</td>
		</tr>
		<tr>
			<td>
				<h3 style="position:absolute;left:25px;top:55px;color:#036;font-size:32px;">Sample Application Application</h3><br/>
				<h4 style="position:absolute;left:25px;top:100px;color:#036;font-size:20px;">Version: <spring:eval expression="@environment.getProperty('application.version')" /></h4>
				
				<span style="position:absolute;right:25px;top:35px;" >
					<a rel="noopener noreferrer" href="https://ecn.brijincus.com/team/APP.aspx" title="How to use Sample Application Application" target="_blank">
						<img src='/resources/images/userguide.jpg' alt="User Guide" style="height:100px;width:100px;" />
					</a>
				</span>
			</td>
		</tr>
	</table>
	<noscript><div id="errors">This application may not work correctly without Javascript.  Please enable Javascript and reload the page.</div></noscript>
	<div class="container-fluid">
		<div class="row" >
			<div class="col-xs-12">
				<c:forEach items="${errors}" var="error">
					<div class="errorblock" >${error}</div>
				</c:forEach>
			</div>
		</div>
		<div class="row" >
			<div class="col-xs-12">
				<c:forEach items="${infos}" var="info">
					<div class="infoblock" >${info}</div>
				</c:forEach>
			</div>
		</div>
	