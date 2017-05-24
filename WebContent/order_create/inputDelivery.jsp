<%@page import="com.goodjob.dto.Order"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	List<String> errorList = (List<String>) request.getAttribute("errorList");
	Order order = (Order) session.getAttribute("buyOrder");
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
function cancelOrder(){
	if(confirm('注文を取り消してメインメニューに戻ります。\nよろしいですか？')){
		window.location.href="/goodJob/orderview/clear.jsp";
	}
}
</script>
</head>
<body>
	<div class="container">
		<h1 style="padding-left: 50px;">お届け先</h1>

	<hr>
		<div align="center">
		<font size="3">
		<a href="/goodJob/order_create/productCheck.jsp">商品入力</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<b>住所入力</b>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<c:if test="${buyOrder.payment_category!=null }"><a href="/goodJob/order_create/paymentCheck.jsp"></c:if>支払い選択</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<c:if test="${buyOrder.payment_category!=null&&buyOrder.payment_category!=0 }"><a href="/goodJob/OrderCheck"></c:if>注文確認</a></font>
		</div>
	<hr>


		<% if (errorList != null) { %>
			<% for (String error : errorList) { %>
				<p style="color: red;"><%= error %></p>
			<% } %>
		<% } %>
		<form class="h-adr" method="post" action="/goodJob/InputDeliveryServlet" id="form">

			<div class="form-group">
				<div class="row">
					<div class="col-xs-2">
						<label class="col-2 col-form-label">届け先区分</label>
					</div>
					<div class="col-xs-4">
						<p id="category">
							<input type="radio" name="category" value="1"
							 class="form-check-input" checked>自宅
							<input type="radio" name="category" value="2"
							 class="form-check-input"> 他
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
							maxlength="7" placeholder="ハイフンなしで入力してください。"
							 name="zipCode" id="zipCode" value="${buyOrder.shipping_zip_code }">
					</div>
				</div>
			</div>
			<c:if test="${buyOrder.shipping_address!=null }">
				<c:set var="addr" value="${fn:split(buyOrder.shipping_address,'____') }"></c:set>
			</c:if>
			<div class="form-group">
				<div class="row">
					<div class="col-xs-2">
						<label for="address">住所</label>
					</div>
					<div class="col-xs-4">
						<input type="text"
							class="p-region p-locality p-street-address form-control"
							 name="address" id="address" value="${addr[0] }">
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="row">
					<div class="col-xs-2">
						<label for="building">建物名</label>
					</div>
					<div class="col-xs-4">
						<input type="text" class="form-control"
						name="building" id="building" value="${addr[1] }">
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="row">
					<div class="col-xs-2">
						<label for="name">氏名</label>
					</div>
					<div class="col-xs-4">
						<input type="text" class="form-control" name="name"
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
						<input type="text" class="form-control" name="tel"
						id="tel" value="<%= order.getShipping_phone_number() %>">
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="row">
					<div class="col-xs-2">
						<label for="other">留守の時</label>
					</div>
					<div class="col-xs-4">
						<input type="text" class="form-control" name="other"
						id="other" value="<%= order.getShipping_if_out() %>">
					</div>
				</div>
			</div>
			<div style="clear: both;">
				<div style="float: left"><input type="button" onclick="cancelOrder()" class="btn btn-danger" id="cancelBtn" value="注文の取り消し"></div>
				<div style="float: right"><div><input type="submit" value="次へ" class="btn btn-primary">
			</div>
			<!-- <a href="/goodJob/order_create/productCheck.jsp" class="btn btn-warning">戻る</a> -->
		</div>
		</div>
		</form>
	</div>

	<script>

		$("a").on("click", function() {
			var category = $("#category").find("input[type='radio']:checked").val();
			var address = $("#address").val();
			var zipCode = $("#zipCode").val();
			var building = $("#building").val();
			var name = $("#name").val();
			var tel = $("#tel").val();
			var other = $("#other").val();

			console.log({
				category: category,
				address: address,
				zipCode: zipCode,
				building: building,
				name: name,
				tel: tel,
				other: other
			});

			$.ajax({
				type: "post",
				url: "/goodJob/InputDeliveryServlet",
				data: {
					category: category,
					address: address,
					building: building,
					name: name,
					zipCode: zipCode,
					tel: tel,
					other: other
				},
				success: function() {
					console.log("success");
				},
				failed: function() {
					console.log("failed");
					return false;
				},
				complite: function() {

				}
			});
		});

	</script>
</body>
</html>