<%@ page import="fr.imie.UserDTO"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<link href="./uikit-2.15.0/css/uikit.gradient.min.css" rel="stylesheet"
	type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div
		class="uk-panel uk-panel-box uk-panel-header uk-width-1-2 uk-container-center uk-panel-box-secondary">
		<table class="uk-table uk-table-hover uk-table-striped ">
			<tr>
				<th>login</th>
				<th></th>
			</tr>
			<c:forEach items="${users}" var="user">
				<tr>
					<td><c:out value="${user.login }"></c:out> </a>
					<td>
						<div style="display: inline-block;">
							<c:url value="UserForm" var="userEditURL">
								<c:param name="id" value="${user.id}">
								</c:param>
							</c:url>
							<a href="${userEditURL}" class="uk-button">éditer</a>

						</div>
						<div style="display: inline-block;">
							<form method="post">
								<input type="hidden" value="${user.id}" name="userId" />
								<button type="submit" class="uk-button">supprimer</button>
							</form>
						</div>
					</td>
				</tr>

			</c:forEach>
		</table>
	</div>

</body>
</html>