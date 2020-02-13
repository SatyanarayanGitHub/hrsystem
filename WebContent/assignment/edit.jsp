<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
				<h4>Edit Job Assignment</h4>
			</div>
			<div id="container_body">
				<form method="POST" action="Controller" class="form-horizontal" role="form">
					<input type="hidden" name="action" value="update" />
					<input type="hidden" name="id" value="${assignment.assignmentId}" />
					<fieldset>
						<legend>Employee Information</legend>
						<div class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-sm-1" for="ssn">SSN:</label>
								<div class="col-sm-4">
									<%-- <input type="text" class="form-control" id="ssn" name="emp_ssn" value="${assignment.ssn }" disabled> --%>
									<select class="form-control" id="emp_ssn" name="emp_ssn" disabled>
										<option value="${assignment.employeeId}" selected>${assignment.ssn }</option>
									</select>
								</div>
							</div>
						</div>
						<div class="detail">
							<div class="col-sm-4">
								<div class="row row_n">
									<label class="col-sm-4" for="firstname">First Name</label>
								</div>
								<div class="row row_n">
									<div class="col-sm-8">
										<input type="text" class="form-control" id="firstname" name="firstname" value="${assignment.firstName }" disabled>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="row row_n">
									<label class="col-sm-4" for="mi">Middle Initial</label>
								</div>
								<div class="row row_n">
									<div class="col-sm-4">
										<input type="text" class="form-control" id="mi" name="mi" value="${assignment.initMiddle }" disabled>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="row row_n">
									<label class="col-sm-4" for="lastname">Last Name</label>
								</div>
								<div class="row row_n">
									<div class="col-sm-8">
										<input type="text" class="form-control" id="lastname" name="lastname" value="${assignment.lastName }" disabled>
									</div>
								</div>
							</div>
						</div>
						<div class="detail">
							<div class="col-sm-4">
								<div class="row row_n">
									<label class="col-sm-4" for="location">Location</label>
								</div>
								<div class="row row_n">
									<div class="col-sm-8">
										<input type="text" class="form-control" id="location" name="location" value="${assignment.location }" disabled>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="row row_n">
									<label class="col-sm-4" for="salarytype ">Salary Type</label>
								</div>
								<div class="row row_n">
									<div class="col-sm-8">
										<input type="text" class="form-control" id="salarytype" name="salarytype" value="${assignment.salaryType}" disabled>
									</div>
								</div>
							</div>
							<div class="col-sm-4"></div>
						</div>
					</fieldset>
					<fieldset>
						<legend>Job Information</legend>
						<div class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-sm-1" for="jobnumber">Job Number:</label>
								<div class="col-sm-4">									
									<select class="form-control" id="sel_jobnumber" name="sel_jobnumber">
										<option value="0">--Select--</option>			
										<option value="${assignment.jobId}" selected>${assignment.jobNumber}</option>
										<c:forEach items="${jobs}" var="job">
											<option value="${job.jobId}">${job.jobNumber}</option>
										</c:forEach>							
									</select>
								</div>
							</div>
						</div>
						<div class="detail">
							<div class="col-sm-4">
								<div class="row row_n">
									<label class="col-sm-4" for="jobname">Job Name</label>
								</div>
								<div class="row row_n">
									<div class="col-sm-8">
										<input type="text" class="form-control" id="jobname" name="jobname" value="${assignment.jobName }" disabled>
									</div>
								</div>
							</div>
							<div class="col-sm-8">
								<div class="row row_n">
									<label class="col-sm-4" for="description">Description</label>
								</div>
								<div class="row row_n">
									<div class="col-sm-8">
										<textarea class="form-control" rows="5" id="description" name="description" disabled>${assignment.description }</textarea>
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<div class="col-sm-6">
						<input type="button" name="updateassignmentbtn" class="col-sm-offset-4 btn btn-default" value="Update" />
						<input type="button" class="col-sm-offset-4 btn btn-default" value="Back" onclick="showAssignmentList()" />
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
<script type="text/javascript" src="<%=contextPath%>/js/hr.assignment.js"></script>
</html>