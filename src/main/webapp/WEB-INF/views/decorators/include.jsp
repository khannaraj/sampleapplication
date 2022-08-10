<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<link rel="stylesheet" href='/resources/css/bootstrap.css' type="text/css" title="default" />
	<link rel="stylesheet" type="text/css" href='/resources/css/jquery.dataTables.min.css' />
	<link rel="stylesheet" type="text/css" href='/resources/css/dataTables.bootstrap.min.css' />
	<link rel="stylesheet" href='/resources/css/jquery-ui.css' />
	<link rel="stylesheet" type="text/css" href='/resources/css/buttons.dataTables.min.css' />
	<script type="text/javascript" charset="utf8" src='/resources/js/jquery-1.12.4.js' ></script>
    <script type="text/javascript" charset="utf8" src='/resources/js/jquery.dataTables.min.js' ></script>
    <script type="text/javascript" charset="utf8" src='/resources/js/dataTables.bootstrap.min.js' ></script>
    <script type="text/javascript" src='/resources/js/jquery-ui.js' ></script>
    <script type="text/javascript" src='/resources/js/bootstrap.min.js' ></script>
    <script type="text/javascript" src='/resources/js/buttons.print.min.js' ></script>
    <script type="text/javascript" src='/resources/js/dataTables.buttons.min.js' ></script>
    <script type="text/javascript" src='/resources/js/jquery.maskedinput.js' ></script>
	<script type="text/javascript" charset="utf8" src='/resources/js/graphite.js' ></script>
	<link rel="stylesheet" href='/resources/css/sis.css' type="text/css" title="default" />
	<script type="text/javascript" charset="utf8" src='/resources/js/misc.js' ></script>
	<link rel="icon" href="favicon.ico">
	
	<security:authorize access="isAuthenticated()">
		<c:if test="${param.warning == null || param.warning != 'true' }"> 
		<script language="javascript" type="text/javascript">
			var url='<spring:url value="/warning" />';
			window.setTimeout('logoffMethod(url)', <spring:eval expression="@environment.getProperty('application.timeout')" /> * 60 * 1000);
		</script>
		</c:if>
	</security:authorize>
	