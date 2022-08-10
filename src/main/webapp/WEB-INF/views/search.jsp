<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
       pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en-US">
<head>
       <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
       <title>Sample Application Application Search Page</title>
       <jsp:include page="decorators/include.jsp" />
	   <script type="text/javascript" charset="utf8" src='<spring:url value="/resources/js/jquery.inputmask.bundle.js" />' ></script>
		<style type="text/css">
			.facet-container{
			  width: 330px;
			}
			.right {
			  float: right;
			}
			.left {
			  float: left;
			}
			p {
			  clear: both;
			  padding-top: 1em;
			}
			.facet-list {
			  list-style-type: none;
			  margin: 0;
			  padding: 0;
			  margin-right: 10px;
			  background: #eee;
			  padding: 5px;
			  width: 143px;
			  min-height: 1.5em;
			  font-size: 0.85em;
			}
			.facet-list li {
			  margin: 5px;
			  padding: 5px;
			  font-size: 1.2em;
			  width: 120px;
			}
			.facet-list li.placeholder {
			  height: 1.2em
			}
			.facet {
			  border: 1px solid #bbb;
			  background-color: #fafafa;
			  cursor: move;
			}
			.facet.ui-sortable-helper {
			  opacity: 0.5;
			}
			.placeholder {
			  border: 1px solid orange;
			  background-color: #fffffd;
			}
		</style>
</head>
<body>
	<jsp:include page="decorators/header.jsp" />
	<div class="container-fluid">
		<div class="row" >
			<div class="col-xs-12" style="border: 1px solid" >
				<br /><h4>Adjust Sample Application</h4><br />
				Hello World of new horizons!!
			</div>
		</div>
		<div class="row" >
			<div class="col-xs-12" />
		</div>

	</div>
	<jsp:include page="decorators/footer.jsp" />
    
       <script>
       $(document).ready(function(){
    	   
   	    });
       </script>
</body>
</html>
