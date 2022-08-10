<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en-US">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Sample Application Application</title>
	<jsp:include page="decorators/include.jsp" >
		  <jsp:param name="warning" value="true" />
	</jsp:include>
</head>
<body>
	
	Your session has been
	inactive for an extended period of time. For your protection, you are
	about to be automatically logged out of Sample Application Application. If you would like to
	continue using Sample Application Application, please click continue below to extend your
	session.
	<a id="focus" href="extend">Continue</a>

</body>
</html>