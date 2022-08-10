<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<%
	java.util.Date dt = new java.util.Date();
	java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat("MM/dd/yyyy");
	String date = simpleDateFormat.format(dt);
%>
				<br/>
			</td>
		</tr>
	</table>

	<div id="page" class="hidden-print">
		<footer id="footer">
            <c:if test="${param.login == 'true' }"> 
			<div class="row" style="text-align:center;">
		        <div class="col-xs-4">
		                          <a rel="noopener noreferrer" href="https://ecn.brijincus.com/team/APP_SystemAccess.pdf" title="New to Sample Application Application"  target="_blank">
		                          <img src='/resources/images/access.png' alt="Access request" style="height:66px;width:80px;" />
		                          <h2 class="slide-item-title">
		                             New to Sample Application Application?
		                          </h2>
		                        </a>
		                      <span class="hide-bp3"><p><a rel="noopener noreferrer" href="https://ecn.brijincus.com/team/APP_SystemAccess.pdf" title="Access request"  target="_blank">Access request</a></p></span>
		            
		        </div>
		        <div class="col-xs-4">
		                        <a rel="noopener noreferrer" href="https://ecn.brijincus.com/team/APP.aspx" title="How to use Sample Application" target="_blank">
		                          <img src='/resources/images/userguide.jpg' alt="User Guide" style="height:80px;width:80px;" />
		                          <h2 class="slide-item-title">
		                            How to use Sample Application Application?
		                          </h2>
		                        </a>
		                      <span class="hide-bp3"><p><a rel="noopener noreferrer" href="https://ecn.brijincus.com/team/APP.aspx" title="User Guide"  target="_blank">User Guide</a></p></span>
		        </div>
		        <div class="col-xs-4">
		                        <a href="mailto:admin@brijincus.com?subject=Sample Application Application Issue" title="Email to BRIJ Inc Service Desk">
		                          <img src='/resources/images/question.jpg' alt="Email to BRIJ Inc Service Desk" style="height:80px;width:80px;" />
		                        </a>
		                        <a href="mailto:admin@brijincus.com?subject=Sample Application Application Issue" title="Questions">
		                          <h2 class="slide-item-title">
		                            Questions                 
		                          </h2>
		                        </a>
		                      <span class="hide-bp3"><p><a href="mailto:admin@brijincus.com?subject=Sample Application Application Issue" title="Email to BRIJ Inc Service Desk">admin@brijincus.com</a><br/>BRIJ Inc </p></span>
		        </div>
		    </div>
		    </c:if>

			<div id="region-footer-first">
				<div id="brijincus-footer">
					<div id="brijincus-footer-logo">
						<img src='/resources/images/BRIJ-logo-circular.png' title="BRIJ Inc Seal"
							alt="BRIJ Inc Seal" />
					</div>
					<div id="brijincus-footer-bg-bar"></div>
				</div>
			</div>
		</footer>
	</div><br /><br /><br />
	<div style="text-align:center;width:100%;" >
		<div class="fouo">FOR OFFICIAL USE ONLY (FOUO) - (<%= date %>)</div>
		<div class="card-header" id="headingTwo">
				<button class="btn btn-link mb-1" type="button"
					data-toggle="collapse" data-target="#collapseTwo"
					aria-expanded="true" aria-controls="collapseTwo" >
					Accessibility Statement</button>
		</div>

		<div id="collapseTwo" class="collapse"
			aria-labelledby="headingTwo${loop.index}">
			<div class="card-body">
				<div id="rulesOfBehaviour">		
					<h1>Accessibility Statement</h1>
					<h2>Section 508 of the Rehabilitation Act of 1972 (29 U.S.C. 794d)</h2>
				BRIJ Inc is committed to making
				its electronic and information technologies accessible to
				individuals with disabilities by meeting or exceeding the
				requirements of Section 508 of the Rehabilitation Act (29 U.S.C.
				794d), as amended in 1998. Section 508 is a federal law that
				requires agencies to provide individuals with disabilities equal
				access to electronic information and data comparable to those who do
				not have disabilities, unless an undue burden would be imposed on
				the corporation. The Section 508 standards are the technical requirements
				and criteria that are used to measure conformance within this law.
				More information on Section 508 and the technical standards can be
				found at
				<a href="http://www.section508.gov">www.section508.gov</a>. <br> <br>
				If you have comments and/or questions related to the agency's
				Section 508 program, please contact the Section 508 Coordinator via
				email at <a href="mailto:Section508@brijincus.com">Section508@brijincus.com</a>.
				<br><br> 
				<h2>Disability Accommodations</h2>
				If you have questions about disability related accommodations, please contact 
				<a
						href="mailto:Section508@brijincus.com">Section508@brijincus.com</a>.
					<br>
				</div>
			</div>
		</div>
		
	</div>
