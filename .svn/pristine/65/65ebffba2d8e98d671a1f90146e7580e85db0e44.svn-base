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
<body>
	<p>商品確認</p>
	<p>
		会員名:
		<%=buyMember.getName()%>
		様
	</p>
	<p>
		会社名 :
		<%=buyMember.getCompany_name()%></p>
	<p>
		会員番号 :
		<%=buyMember.getMember_number()%></p>
	<p>
		与信額 : <span id="credit"> <%=decimalFormat.format(buyMember.getCredit_amount())%>
		</span> 円
	</p>

	<br>

	<p>
		<form method="post" action="ProductSearchServlet">
			商品番号 <input type="text" size="3" name="gou" id="gou" maxlength="3">号
			 <input type="text" size="4" name="page" id="page" maxlength="4">頁
			<input type="text" size="3" name="ban" id="ban" maxlength="3">番
			<input type="submit" class="btn btn-primary" id="addBtn" value="追加">
		</form>
	</p>

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
	<% if (buyProductMap != null) { %>
		<table class="table table-hover">
			<thead>
				<tr>
					<td>商品番号</td>
					<td>商品名</td>
					<td>単価（円）</td>
					<td>数量</td>
					<td>価格(円)</td>
					<td>色</td>
					<td width="80px">柄</td>
					<td>サイズ</td>
					<td>備考</td>
					<td></td>
				</tr>
			</thead>
			<tbody>
				<% for (Entry<Integer, Product> entry : buyProductMap.entrySet()) { %>
					<% Integer mapNo = (Integer) entry.getKey(); %>
					<% Product product = (Product) entry.getValue(); %>
					<tr>
						<input type="hidden" value="<%= mapNo %>">
						<td><%= product.getProductId() %></td>
						<td><%= product.getProductName() %></td>
						<!-- 単価 -->
						<td id="unitPrice">
							<%= decimalFormat.format(product.getUnitPrice()) %>
						</td>
						<!-- 数量 -->
						<td>
							<input type="number" value="<%= product.getQuantity() %>" min="1" id="quantity" class="quantity">
						</td>
						<!-- 価格（円） -->
						<td>
							<p class="price" id="price">
								<%= decimalFormat.format(product.getUnitPrice() * product.getQuantity()) %>
							</p>
						</td>
						<!-- 色配列をからセレクトを生成 -->
						<td id="colors">
							<% if (product.getColors() != null) { %>
							<select name="color" class="color">
								 <% for (String color : product.getColors()) { %>
								 	<option value="<%= color %>"><%= color %></option>
								 <% } %>
							</select>
							<% } %>
						</td>
						<!-- 柄配列をからセレクトを生成 -->
						<td id="patterns">
							<% if (product.getPatterns() != null) { %>
							<select name="pattern" class="pattern">
								 <% for (String pattern : product.getPatterns()) { %>
								 	<option value="<%= pattern %>"><%= pattern %></option>
								 <% } %>
							</select>
							<% } %>
						</td>
						<!-- サイズ配列をからセレクトを生成 -->
						<td id="sizes">
							<% if (product.getSizes() != null) { %>
							<select name="pattern" class="pattern">
								 <% for (String size : product.getSizes()) { %>
								 	<option value="<%= size %>"><%= size %></option>
								 <% } %>
							</select>
							<% } %>
						</td>
						<!-- 備考欄 -->
						<td id="notes">
							<% if (product.getNotes() != null) { %>
								<p style="color: red;"><%= product.getNotes() %></p>
								<p>※ 有効期限<%= simpleDateFormat.format(product.getExpirationDate()) %></p>
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
			</tbody>
		</table>
	<% } %>

	<a href="InputDeliveryServlet" class="btn btn-primary">次へ</a>
	<a href="memberCheck.html" class="btn btn-warning">戻る</a>
	<script type="text/javascript">

		// 画面が生成されたときの処理
		window.onload = function() {
			changeSumPrice();
		}

		// 追加ボタンを押されたときの処理
		$(".addBtn").submit(function() {
			$(".error").remove();
		});

		// 削除ボタンを押されたときの処理
		$(".removeBtn").on("click", function() {
			$(this).parent().parent().fadeOut("slow", function() {
				$(this).remove();
				changeSumPrice();
			});

			// 該当する商品を削除する
			$.ajax({
				type: "get",
				url: "ProductRemoveServlet",
				data: {
					"productNo": $(this).val()
				},
				success: function() {
					console.log("success");
				},
				fail: function() {
					console.log("failed");
				}
			});
		});

		// 該当する商品の数量を変えたときの処理
		$(".quantity").on("blur", function() {
			var id = $(this).parent().parent().find("input").val();
			var unitPrice = $(this).parent().parent().find("#unitPrice").text().replace(",", "");
			var quantity = $(this).val();
			var color = $(this).parent().parent().find("#colors").find("select").find("option").val();
			var pattern = $(this).parent().parent().find("#pattern").find("select").find("option").val();
			var size = $(this).parent().parent().find("#sizes").find("select").find("option").val();
			var price = unitPrice * quantity;

			change(id, quantity, color, pattern, size);
			$(this).parent().parent().find("#price").text(price.toLocaleString());

			changeSumPrice();
		});

		// 該当する商品の色を変化させたときの処理
		$(".color").on("change", function() {
			var id = $(this).parent().parent().find("input").val();
			var quantity = $(this).parent().parent().find("#quantity").val();
			var color = $(this).val();
			var pattern = $(this).parent().parent().find("#pattern").find("select").find("option").val();
			var size = $(this).parent().parent().find("#sizes").find("select").find("option").val();

			change(id, quantity, color, pattern, size);
		});

		// 該当する商品の柄を変化させたときの処理
		$(".pattern").on("change", function() {
			var id = $(this).parent().parent().find("input").val();
			var quantity = $(this).parent().parent().find("#quantity").val();
			var color = $(this).parent().parent().find("#colors").find("select").find("option").val();
			var pattern = $(this).val();
			var size = $(this).parent().parent().find("#sizes").find("select").find("option").val();

			change(id, quantity, color, pattern, size);
		});

		// 該当する商品のサイズを変化させたときの処理
		$(".size").on("change", function() {
			var id = $(this).parent().parent().find("input").val();
			var quantity = $(this).parent().parent().find("#quantity").val();
			var color = $(this).parent().parent().find("#colors").find("select").find("option").val();
			var pattern = $(this).parent().parent().find("#pattern").find("select").find("option").val();
			var size = $(this).val();

			change(id, quantity, color, pattern, size);
		});

		// 該当する商品情報を変化させる処理
		function change(id, quantity, color, pattern, size) {
			$.ajax({
				type: "post",
				url: "ProductChangeServlet",
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
			var credit = $("#credit").text().replace(",", "");

			$(".price").each(function(index, element) {
				sumPrice += parseInt($(element).text().replace(",", ""));
			});

			if (sumPrice > Number(credit)) {
				$("#sumPrice").text(sumPrice.toLocaleString()).css("color", "red")
			} else {
				$("#sumPrice").text(sumPrice.toLocaleString()).css("color", "green");
			}
		}
	</script>
</body>

</html>