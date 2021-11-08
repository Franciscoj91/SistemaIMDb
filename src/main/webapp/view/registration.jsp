<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

		<a class="navbar-brand" href="/">TV Shows</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/registration">Registration<span class="sr-only">(current)</span></a>
				</li>
			</ul>
		</div>

	</nav>

	<div class="container">


		<div class="mt-3 text-center">
			<form:errors path="*" />
		</div>

		<h1>Register...!</h1>

		<form:form modelAttribute="user" action="/registration" method="POST">
			<div class="form-group">
				<form:label path="username">UserName:</form:label>
				<form:input path="username" type="text" class="form-control"
					placeholder="Username" />
			</div>

			<div class="form-group">
				<form:label path="email">Email: </form:label>
				<form:input path="email" class="form-control" placeholder="Email" />
				<small id="emailHelp" class="form-text text-muted">We'll
					never share your password with anybody else </small>
			</div>
			<div class="form-group">
				<form:label path="password">Password: </form:label>
				<form:password path="password" class="form-control"
					placeholder="Password" />
			</div>
			<div class="form-group">
				<form:label path="passwordConfirmation">Password Confirmation: </form:label>
				<form:password path="passwordConfirmation" class="form-control"
					placeholder="Password Confirmation" />
			</div>

			<input type="submit" class="btn btn-primary" value="Register...!">

		</form:form>
	</div>
</body>
</html>