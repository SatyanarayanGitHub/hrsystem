<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.*"%>
<%
	String contextPath = request.getContextPath();	
%>

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Human Resource System</title>
</head>
<body>

	<div id="wrapper" class="container">
		<div id="top_header">
			<h2 id="Project_header" class="title_color">Human Resource System</h2>
		</div>
		<div id="menu">
			<jsp:include page="../common/menu.jsp"></jsp:include>
		</div>
		<div id="container">
			<div id="container_header">
				<h4>Edit Employee</h4>
			</div>
			<div id="container_body">
				<form method="POST" action="Controller" class="form-horizontal" role="form">
					<input type="hidden" name="action" value="update" />
					<input type="hidden" name="id" value="${employee.employeeId}" />
					<div class="form-group">
						<label class="control-label col-sm-2" for="firstname">First Name:</label>
						<div class="col-sm-6">
							<input id="firstname" name="firstname" type="text" class="form-control" value="${employee.firstName}">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="lastname">Last Name:</label>
						<div class="col-sm-6">
							<input id="lastname" name="lastname" type="text" class="form-control" value="${employee.lastName}">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="initial">Middle Initial:</label>
						<div class="col-sm-1">
							<input id="initial" name="initial" type="text" class="form-control" value="${employee.initMiddle}">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="ssn">SSN:</label>
						<div class="col-sm-6">
							<input id="ssn" name="ssn" type="text" class="form-control" value="${employee.ssn}" disabled>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="sel_loc">Location:</label>
						<div class="col-sm-3">

							<select class="form-control" id="sel_loc" name="location">
								<c:forEach items="${location}" var="name">
									<option value="${name}" ${name == employee.location ? 'selected' : '' }>${name}</option>							
								</c:forEach>
							</select>

						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="salarytype">Salary Type:</label>
						<div class="col-sm-6">
						
							<c:if test="${employee.salaryType == 'Hourly'}" >
								<label class="radio-inline"> <input type="radio" name="salarytype" value="Hourly" checked="checked">Hourly</label> 
								<label class="radio-inline"> <input type="radio" name="salarytype" value="Salaried">Salaried</label>
							</c:if>
							
							<c:if test="${employee.salaryType == 'Salaried' }" >
								<label class="radio-inline"> <input type="radio" name="salarytype" value="Hourly">Hourly</label> 
								<label class="radio-inline"> <input type="radio" name="salarytype" value="Salaried" checked="checked">Salaried</label>
							</c:if>
							
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-6">
							<input type="button" name="updateemployeebtn" class="col-sm-offset-4 btn btn-default" value="Update" />
							<input type="button" class="col-sm-offset-4 btn btn-default" value="Back" onclick="showEmployeeList()" />
						</div>

					</div>

				</form>

			</div>
		</div>
		<div id="bfooter">
			<p>Copyright &copy; 2016 &middot; All Rights Reserved.</p>
		</div>
	</div>

</body>
<link rel="stylesheet" type="text/css" href="<%=contextPath%>/css/bMin.css">
<link rel="stylesheet" type="text/css" href="<%=contextPath%>/css/_main.css">
<script type="text/javascript" src="<%=contextPath%>/js/jMin.js"></script>
<script type="text/javascript" src="<%=contextPath%>/js/bMin.js"></script>
<script type="text/javascript" src="<%=contextPath%>/js/hr.main.js"></script>
<script type="text/javascript" src="<%=contextPath%>/js/hr.employee.js"></script>
</html>