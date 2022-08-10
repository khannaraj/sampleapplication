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
	
<body onload="closeThisWindow()">
<script language="javascript" type="text/javascript">
function closeThisWindow() {
	var url='<spring:url value="/warning" />';
	window.opener.clearTimeout(window.opener.logoffTimer);
	window.opener.setTimeout('logoffMethod(url)', <spring:eval expression="@environment.getProperty('application.timeout')" /> * 60 * 1000);
	window.close();
}
</script>

</body>
</html>