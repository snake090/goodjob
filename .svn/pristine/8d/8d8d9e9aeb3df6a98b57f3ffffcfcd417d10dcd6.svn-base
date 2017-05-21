<%@page import="com.goodjob.dto.Order"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<String> errorList = (List<String>) request.getAttribute("errorList");
	Order order = (Order) session.getAttribute("order");
	if (order == null) {
		order = new Order();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>届け先入力画面</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://yubinbango.github.io/yubinbango/yubinbango.js" charset="UTF-8"></script>
</head>
<body>
	<div class="container">
		<h1 style="padding-left: 50px;">お届け先</h1>
		<% if (errorList != null) { %>
			<% for (String error : errorList) { %>
				<p style="color: red;"><%= error %></p>
			<% } %>
		<% } %>
		<form class="h-adr" method="post" action="InputDeliveryServlet">

			<div class="form-group">
				<div class="row">
					<div class="col-xs-2">
						<label class="col-2 col-form-label">届け先区分</label>
					</div>
					<div class="col-xs-4">
						<p>
							<input type="radio" name="category" value="1"
							 class="form-check-input" id="category" checked>自宅
							<input type="radio" name="category" value="2" class="form-check-input"
							 id="category"> 他
						</p>
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="row">
					<div class="col-xs-2">
						<label for="zipCode">郵便番号</label>
					</div>
					<div class="col-xs-4">
						<span class="p-country-name" style="display: none;">Japan</span>
						<input type="text"
							class="p-postal-code form-control"
							 name="zipCode" id="address">
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="row">
					<div class="col-xs-2">
						<label for="address">住所</label>
					</div>
					<div class="col-xs-4">
						<input type="text"
							class="p-region p-locality p-street-address form-control"
							 name="address" id="address">
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="row">
					<div class="col-xs-2">
						<label for="building">建物名</label>
					</div>
					<div class="col-xs-4">
						<input type="text" class="p-extended-address form-control" name="building" id="building">
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="row">
					<div class="col-xs-2">
						<label for="name">氏名</label>
					</div>
					<div class="col-xs-4">
						<input type="text" class="p-extended-address form-control" name="name"
						id="name" value="<%= order.getShipping_name() %>">
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="row">
					<div class="col-xs-2">
						<label for="tel">電話番号</label>
					</div>
					<div class="col-xs-4">
						<input type="text" class="p-extended-address form-control" name="tel"
						id="tel" value="<%= order.getShipping_phone_number() %>">
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="row">
					<div class="col-xs-2">
						<label for="other">届先の時</label>
					</div>
					<div class="col-xs-4">
						<input type="text" class="p-extended-address form-control" name="other"
						id="other" value="<%= order.getShipping_if_out() %>">
					</div>
				</div>
			</div>
			<p>
				<input type="submit" value="次へ" class="btn btn-primary">
				<a href="ProductSearchServlet" class="btn btn-warning">戻る</a>
			</p>
		</form>
	</div>
</body>
</html>