<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="/">TV Shows</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto mb-2 mb-lg-0">
					<li class="nav-item mr-5"><a class="nav-link active"
						aria-current="page" href="/shows/new">Add a New Show</a></li>

					<li class="nav-item">
						<form id="logoutForm" method="POST" action="/logout">
							<input type="hidden" name="${_csrf.parameterName }"
								value="${_csrf.token}" /> <input type="submit" value="Logout"
								class="btn btn text-secondary" />
						</form>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container mt-3">
		<h1>Create a new show</h1>

		<form:errors path="show.*" />

		<form:form modelAttribute="newShow" method="POST" action="/shows/create">
			<div class="form-group row pt-2">
				<form:label path="showTitle"
					class="col-sm-2 col-form-label col-form-label-sm">Show Title</form:label>
				<div class="col-sm-10">
					<form:input type="text" path="showTitle" class="form-control" />
				</div>
			</div>

			<div class="text-center my-2">
				<small><form:errors path="showTitle"></form:errors></small>
			</div>

			<div class="form-group row">
				<form:label path="showNetwork"
					class="col-sm-2 col-form-label col-form-label-sm">Network: </form:label>
				<div class="col-sm-10">
					<form:input type="text" path="showNetwork" class="form-control" />
				</div>
			</div>

			<div class="text-center my-2">
				<small><form:errors path="showNetwork"></form:errors></small>
			</div>

			<div class="tex-center pt-4">
				<input type="submit" value="Create" class="btn btn-lg btn-primary" />

			</div>

		</form:form>

		<div class="mt-5 pb-5">
			<a href="/shows" class="btn btn-dark">Go back</a>
		</div>

	</div>



</body>
</html>