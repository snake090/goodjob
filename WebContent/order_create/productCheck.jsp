<%@page import="java.text.DecimalFormat"%>
<%@page import="com.goodjob.dto.Member"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="com.goodjob.dto.Product"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Map<Integer, Product> buyProductMap = (Map<Integer, Product>) session.getAttribute("buyProductMap");
	List<String> errorList = (List<String>) request.getAttribute("errorList");
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日");
	DecimalFormat decimalFormat = new DecimalFormat("#,###");
	Member buyMember = (Member) session.getAttribute("buyMember");
	String noProductErrorMsg = (String) request.getAttribute("noProductErrorMsg");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品入力画面</title>
<style type="text/css">
	td {
		text-align: center;
	}

	.info {
		border: 1px solid black;
		width:300px;
		padding : 20px 30px;
		margin-left: 30px;
	}

</style>
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
<script type="text/javascript">
	function checkList(){
		if (!$("input[type='hidden']").get(0)) {
			alert("商品リストに追加してください。");
			return false;
		}
	}
	function cancelOrder(){
		if(confirm('注文を取り消してメインメニューに戻ります。\nよろしいですか？')){
			window.location.href="/goodJob/orderview/clear.jsp";
		}
	}
</script>
<body>

	<div class="container">

	<h1 style="padding-left: 50px;">商品入力</h1>

	<hr>
		<div align="center">
			<font size="3"><b>商品入力</b>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<c:if test="${buyOrder.shipping_zip_code!=null }"><a onclick="javascript:return checkList()" href="/goodJob/order_create/inputDelivery.jsp"></c:if>住所入力</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<c:if test="${buyOrder.payment_category!=null }"><a onclick="javascript:return checkList()" href="/goodJob/order_create/paymentCheck.jsp"></c:if>支払い選択</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<c:if test="${buyOrder.payment_category!=null&&buyOrder.payment_category!=0 }"><a onclick="javascript:return checkList()" href="/goodJob/OrderCheck"></c:if>注文確認</a></font>
		</div>
	<hr>

	<table>
		<tr>
			<th>
			会員名
			</th>
			<td style="width: 30px"></td>
			<td style="text-align: left;">
			<%=buyMember.getName()%>
			様
			</td>
		</tr>
		<tr>
			<th>
			会社名
			</th>
			<td style="width: 30px"></td>
			<td style="text-align: left;">
			<%=buyMember.getCompany_name()%>
			</td>
		</tr>
		<tr>
			<th>
			会員番号
			</th>
			<td style="width: 30px"></td>
			<td style="text-align: left;">
			<%=buyMember.getMember_number()%>
			</td>
		</tr>
		<tr>
			<th>
				与信額
			</th>
			<td style="width: 30px"></td>
			<td style="text-align: left;">
				<span id="credit"> <%=decimalFormat.format(buyMember.getCredit_amount())%>
				</span> 円
			</td>
		</tr>
	</table>

	<br>

	<div align="center">
		<form method="post" action="/goodJob/ProductSearchServlet">
			商品番号 <input type="text" size="3" name="gou" id="gou" maxlength="3">号
			 <input type="text" size="4" name="page" id="page" maxlength="4">頁
			<input type="text" size="3" name="ban" id="ban" maxlength="3">番
			<input type="submit" class="btn btn-primary" id="addBtn" value="追加">
		</form>
	</div>

	<br>

	<% if (errorList != null) { %>
		<% for (String error : errorList) { %>
			<h4 style="color: red;" class="error"><%= error %></h4>
		<% } %>
	<% } %>

	<% if (noProductErrorMsg != null) { %>
		<h4 style="color: red;" class="error"><%= noProductErrorMsg %></h4>
	<% } %>

	<p>購入商品リスト</p>
		<table class="table table-hover">
			<thead>
				<tr>
					<td>商品番号</td>
					<td>商品名</td>
					<td width="100px">単価（円）</td>
					<td>数量</td>
					<td>価格（円）</td>
					<td>色</td>
					<td>柄</td>
					<td>サイズ</td>
					<td>備考</td>
					<td></td>
				</tr>
			</thead>
			<tbody>
			<% if (buyProductMap != null) { %>
				<% for (Entry<Integer, Product> entry : buyProductMap.entrySet()) { %>
					<% Integer mapNo = (Integer) entry.getKey(); %>
					<% Product product = (Product) entry.getValue(); %>
					<tr>
						<input type="hidden" value="<%= mapNo %>">
						<td><%= product.getProductId() %></td>
						<!-- 商品名 -->
						<td style="text-align: left;">
							<%= product.getProductName() %>
						</td>
						<!-- 単価 -->
						<td id="unitPrice" style="text-align: right;">
							<%= decimalFormat.format(product.getUnitPrice()) %>
						</td>
						<!-- 数量 -->
						<td>
							<input type="number" value="<%= product.getQuantity() %>"
							min="1" id="quantity" class="quantity" style="width: 50px;">
						</td>
						<!-- 価格（円） -->
						<td>
							<p class="price" id="price" style="text-align: right;">
								<%= decimalFormat.format(product.getUnitPrice() * product.getQuantity()) %>
							</p>
						</td>
						<!-- 色配列をからセレクトを生成 -->
						<td id="colors">
							<% if (product.getColors() != null) { %>
							<select name="color" class="color">
								 <% for (String color : product.getColors()) { %>
								 	<% if (product.getSelectedColor().equals(color)) { %>
								 		<option value="<%= color %>" selected><%= color %></option>
								 	<% } else { %>
								 		<option value="<%= color %>"><%= color %></option>
								 	<% } %>
								 <% } %>
							</select>
							<% } %>
						</td>
						<!-- 柄配列をからセレクトを生成 -->
						<td id="patterns">
							<% if (product.getPatterns() != null) { %>
							<select name="pattern" class="pattern">
								 <% for (String pattern : product.getPatterns()) { %>
								 	<% if (product.getSelectedPattern().equals(pattern)) { %>
								 		<option value="<%= pattern %>" selected><%= pattern %></option>
								 	<% } else { %>
								 		<option value="<%= pattern %>"><%= pattern %></option>
								 	<% } %>
								 <% } %>
							</select>
							<% } %>
						</td>
						<!-- サイズ配列をからセレクトを生成 -->
						<td id="sizes">
							<% if (product.getSizes() != null) { %>
							<select name="size" class="size">
								 <% for (String size : product.getSizes()) { %>
								 	<% if (product.getSelectedSize().equals(size)) { %>
								 		<option value="<%= size %>" selected><%= size %></option>
								 	<% } else { %>
								 		<option value="<%= size %>"><%= size %></option>
								 	<% } %>
								 <% } %>
							</select>
							<% } %>
						</td>
						<!-- 備考欄 -->
						<td id="notes">
							<% if (product.getNotes() != null) { %>
								<p style="color: red;"><%= product.getNotes() %></p>
								<p>※ 有効期限 <%= simpleDateFormat.format(product.getExpirationDate()) %></p>
							<% } %>
						</td>
						<!-- 削除ボタン -->
						<td>
							<button value="<%= mapNo %>" class="removeBtn btn btn-danger">削除</button>
						</td>
					</tr>
					<% } %>
					<tr>
						<td colspan="3"></td>
						<td>合計額</td>
						<td><font color="green"><b id="sumPrice">0</b></font> 円</td>
						<td colspan="3"></td>
						<td></td>
						<td></td>
					</tr>
			<% } %>
			</tbody>
		</table>
	<div style="clear: both;">
	<div style="float: left"><input type="button" onclick="cancelOrder()" class="btn btn-danger" id="cancelBtn" value="注文の取り消し"></div>
	<div style="float: right"><a href="/goodJob/InputDeliveryServlet" class="btn btn-primary" id="nextBtn">次へ</a></div>
	</div>
	<!-- <a href="memberCheck.jsp" class="btn btn-warning">戻る</a> -->
	<script type="text/javascript">

		// 画面が生成されたときの処理
		window.onload = function() {
			changeSumPrice();
		}

		// 追加ボタンを押されたときの処理
		$(".addBtn").submit(function() {
			$(".error").remove();
		});

		// 次へボタンを押されたときの処理
		$("#nextBtn").on("click", function() {
			if (!$("input[type='hidden']").get(0)) {
				alert("商品リストに追加してください。");
				return false;
			}
		});

		// 削除ボタンを押されたときの処理
		$(".removeBtn").on("click", function() {
			// 該当する商品を削除する
			$.ajax({
				type: "post",
				url: "/goodJob/ProductRemoveServlet",
				data: {
					"productNo": $(this).val()
				},
				success: function() {
					console.log("success");
				},
				fail: function() {
					console.log("fail");
					return false;
				}
			});

			$(this).parent().parent().fadeOut("slow", function() {
				$(this).remove();
				changeSumPrice();
			});

		});

		// 該当する商品の数量を変えたときの処理
		$(".quantity").on("blur", function() {
			var id = $(this).parent().parent().find("input").val();
			var unitPrice = $(this).parent().parent().find("#unitPrice").text().replace(",", "");
			var quantity = $(this).val();
			var color = $(this).parent().parent().find("#colors").find("select").find("option:selected").val();
			var pattern = $(this).parent().parent().find("#patterns").find("select").find("option:selected").val();
			var size = $(this).parent().parent().find("#sizes").find("select").find("option:selected").val();
			var price = unitPrice * quantity;

			if (quantity.indexOf("-") >= 0) {
				alert("マイナスを入力しないでください");
				$(this).val(quantity.split("-").join(""));
				quantity = $(this).val();
				price = unitPrice * quantity;
			}

			if (quantity == "0") {
				alert("ゼロを入力しないでください。");
				$(this).val("1");
				quantity = $(this).val();
				price = unitPrice * quantity;
			}

			if (!quantity.match("[0-9]")) {
				alert("数字以外入力しないでください。");
				$(this).val("1");
				quantity = $(this).val();
				price = unitPrice * quantity;
			}

			console.log({
				id: id,
				quantity: quantity,
				color: color,
				pattern: pattern,
				size: size
			});

			change(id, quantity, color, pattern, size);
			$(this).parent().parent().find("#price").text(price.toLocaleString());

			changeSumPrice();
		});

		// 該当する商品の色を変化させたときの処理
		$(".color").on("change", function() {
			var id = $(this).parent().parent().find("input").val();
			var quantity = $(this).parent().parent().find("#quantity").val();
			var color = $(this).val();
			var pattern = $(this).parent().parent().find("#patterns").find("select").find("option:selected").val();
			var size = $(this).parent().parent().find("#sizes").find("select").find("option:selected").val();

			console.log({
				id: id,
				quantity: quantity,
				color: color,
				pattern: pattern,
				size: size
			});

			change(id, quantity, color, pattern, size);
		});

		// 該当する商品の柄を変化させたときの処理
		$(".pattern").on("change", function() {
			var id = $(this).parent().parent().find("input").val();
			var quantity = $(this).parent().parent().find("#quantity").val();
			var color = $(this).parent().parent().find("#colors").find("select").find("option:selected").val();
			var pattern = $(this).val();
			var size = $(this).parent().parent().find("#sizes").find("select").find("option:selected").val();

			console.log({
				id: id,
				quantity: quantity,
				color: color,
				pattern: pattern,
				size: size
			});

			change(id, quantity, color, pattern, size);
		});

		// 該当する商品のサイズを変化させたときの処理
		$(".size").on("change", function() {
			var id = $(this).parent().parent().find("input").val();
			var quantity = $(this).parent().parent().find("#quantity").val();
			var color = $(this).parent().parent().find("#colors").find("select").find("option:selected").val();
			var pattern = $(this).parent().parent().find("#patterns").find("select").find("option:selected").val();
			var size = $(this).val();

			console.log({
				id: id,
				quantity: quantity,
				color: color,
				pattern: pattern,
				size: size
			});

			change(id, quantity, color, pattern, size);
		});

		// 該当する商品情報を変化させる処理
		function change(id, quantity, color, pattern, size) {
			$.ajax({
				type: "post",
				url: "/goodJob/ProductChangeServlet",
				data: {
					id: id,
					quantity: quantity,
					color: color,
					pattern: pattern,
					size: size
				},
				success: function() {
					console.log("success");
				},
				fail: function() {
					console.log("fail");
				}
			});
		}

		// 各商品の価格（円）を集積し、合計額に結果を反映させる処理
		function changeSumPrice() {
			var sumPrice = 0;
			var credit = $("#credit").text().replace(/,/g, "");

			$(".price").each(function(index, element) {
				sumPrice += parseInt($(element).text().split(",").join(""));
			});

			console.log(sumPrice);

			if (sumPrice > Number(credit)) {
				$("#sumPrice").text(sumPrice.toLocaleString()).css("color", "red");
			} else {
				$("#sumPrice").text(sumPrice.toLocaleString()).css("color", "green");
			}
		}
	</script>

	</div>

</body>
</html>