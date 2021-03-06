<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>支払い方法選択画面</title>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
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
	<h1 style="padding-left: 50px;">支払い方法</h1>

		<hr>
			<div align="center">
			<font size="3"><a href="/goodJob/order_create/productCheck.jsp">商品入力</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<a href="/goodJob/order_create/inputDelivery.jsp">住所入力</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<b>支払い選択</b>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<c:if test="${buyOrder.payment_category!=null&&buyOrder.payment_category!=0 }"><a href="/goodJob/OrderCheck"></c:if>注文確認</a></font>
			</div>
		<hr>


		<form method="post" action="/goodJob/PaymentCheckServlet">
			<input type="radio" name="payment" value="1" <c:if test='${buyOrder.payment_category==0||buyOrder.payment_category==1 }'>checked</c:if>>
			給与控除　
			<select name="division">
				<c:forEach begin="1" end="24" var="count" varStatus="status">
					<option value='<c:out value="${count }" />' <c:if test="${buyOrder.division==count }">selected</c:if>>${count }</option>
				</c:forEach>
			</select>
	<p>
		<input type="radio" name="payment" value="2" <c:if test='${buyOrder.payment_category==2 }'>checked</c:if>> 個人振込み 振込元銀行
		<input type="text" name="bank" value="${buyOrder.from_bank }">
	</p>
	<p>
		<div style="clear: both;">
		<div style="float: left"><input type="button" onclick="cancelOrder()" class="btn btn-danger" id="cancelBtn" value="注文の取り消し"></div>
		<div style="float: right"><input type="submit" value="確認する" class="btn btn-primary">
		</div>
		<!-- <a href="order_create/inputDelivery.jsp" class="btn btn-warning">戻る</a> -->
	</p>
	</form>
	</div>
	<script>

		$("form").submit(function() {
			var payment = $("input[name='payment']:checked").val();
			var bank = $("input[name='bank']").val();

			if (payment == "2" && bank == "") {
				alert("銀行名を入力してください。");
				return false;
			}
		});

		$("a").on("click", function() {
			var payment = $("input[name='payment']:checked").val();
			var division = $("select[name='division']").find("option:selected").val();
			var bank = $("input[name='bank']").val();

			if (payment == "1") {
				$.ajax({
					type: "post",
					url: "/goodJob/PaymentCheckServlet",
					data: {
						payment: payment,
						division: division,
						bank: ""
					}
				});
			} else {
				if (bank == "") {
					alert("銀行名を入力してください。");
					return false;
				} else {
					$.ajax({
						type: "post",
						url: "/goodJob/PaymentCheckServlet",
						data: {
							payment: payment,
							division: "",
							bank: bank
						}
					});
				}
			}
		});
	</script>
</body>
</html>