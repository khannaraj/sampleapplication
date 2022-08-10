<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Sample Application Application Login Page</title>
	<jsp:include page="decorators/include.jsp" />
</head>
<body>
	<jsp:include page="decorators/header.jsp" >
		  <jsp:param name="login" value="true" />
	</jsp:include>
	<form action='/loginIndex'  >
		<table class="table table-hover table-bordered " role="presentation">
		<tr>
			<td colspan="1" style="text-align:left;font-weight: bold;" >BRIJ Inc PIV Login:</td>
			<td colspan="1" ><button type="submit" class="pivbutton" title="Click here to log in with PIV Card" >Login</button></td>
		</tr>
		</table>
	</form>
		
	<jsp:include page="decorators/footer.jsp" >
		  <jsp:param name="login" value="true" />
	</jsp:include>
	
	<script>
		$.mask.definitions["A"] = "[a-zA-Z0-9-_*&$#@]";
		$(document).ready(function(){
			$('#username').mask('A?AAAAAAAAAAA',{placeholder:""});
		})
	</script>
</body>
</html>