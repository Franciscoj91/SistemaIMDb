<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="/">TV Shows</a>
		<button type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item mr-5"><a class="nav-link" href="/shows/new">Add
						a Show</a></li>
				<li class="nav-item">
					<form id="logoutForm" method="post" action="/logout">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}"> <input type="submit"
							value="Logout" class="btn btn-link text-secondary">
					</form>
				</li>
			</ul>
		</div>
	</nav>

	<div class="container">

		<div class="py-3">
			<h1 class="font-weight-bold">
				Welcome,
				<c:out value="${currentUser.username }"></c:out>
			</h1>
		</div>

		<h2>TV Shows</h2>

		<table class="table table-dark">
			<thead>
				<tr>
					<th scope="col">Show</th>
					<th scope="col">Network</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allShows}" var="show">

					<tr>
						<td scope="row"><a href="/shows/${show.id}"
							class="text-info font-weight-bold">${show.showTitle}</a></td>
						<td>${show.showNetwork}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>