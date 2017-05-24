<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.goodjob.dto.Product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注文確認画面</title>
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
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<script>
	function checkStaff(){
		if(document.getElementById("orderStaff").value==''){
			alert('担当者名を入力してください。');
			return false;
		}
	}
	function cancelOrder(){
		if(confirm('注文を取り消してメインメニューに戻ります。\nよろしいですか？')){
			window.location.href="/goodJob/orderview/clear.jsp";
		}
	}

	function memo(text, key){
		$.ajax({
			type: "post",
			url: "/goodJob/ProductMemo",
			data: {
				mapKey: key,
				pNote: text
			}
		});
	}

</script>

<style type="text/css">
	table, tr, td, th {
		padding: 10px;
	}
	.productList{text-align: center;}
</style>
</head>
<body>

	<div class="container">

	<h1 style="padding-left: 50px;">注文の確認</h1>

	<hr>
		<div align="center">
		<font size="3"><a href="/goodJob/order_create/productCheck.jsp">商品入力</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<a href="/goodJob/order_create/inputDelivery.jsp">住所入力</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<a href="/goodJob/order_create/paymentCheck.jsp">支払い選択</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<b>注文確認</b></font>
		</div>
	<hr>
	<c:if test="${failed!=null }">
		<p align="center"><font color="red">注文登録に失敗しました。</font></p>
	</c:if>
	<br>
	<table>
		<tr style="border-bottom: 1px solid lightgray; text-align: center;">
			<td colspan="4" style="text-align: center"><b>${buyMember.name }</b>&nbsp;&nbsp;&nbsp;( ${buyMember.furigana } )&nbsp;&nbsp;&nbsp;様 </td>
		</tr>
		<tr>
			<th>会社名</th>
			<td>${buyMember.company_name }</td>
			<th>社員番号</th>
			<td>${buyMember.member_number }</td>
		</tr>
		<tr>
			<th>与信額</th>
			<td><fmt:formatNumber value="${buyMember.credit_amount }" /> 円</td>
			<td colspan="2"></td>
		</tr>
		<tr style="border-top: 1px solid gray">
			<th colspan="2">お届け先</th>
			<th>区分</th>
			<td>
				<c:if test="${buyOrder.shipping_category==1 }">自宅</c:if>
				<c:if test="${buyOrder.shipping_category==2 }">他</c:if>
			</td>
		</tr>
		<tr>
			<th>住所</th>
			<td>〒${fn:substring(buyOrder.shipping_zip_code,0,3) }-${fn:substring(buyOrder.shipping_zip_code,3,7) }</td>
			<td colspan="2">${fn:replace(buyOrder.shipping_address, "____", " ") }</td>
		</tr>
		<tr>
			<th>氏名</th>
			<td>${buyOrder.shipping_name }　様</td>
			<th>電話番号</th>
			<td>${buyOrder.shipping_phone_number }</td>
		</tr>
		<c:if test="${buyOrder.shipping_if_out!=null&&buyOrder.shipping_if_out!='' }">
			<tr>
				<th>留守の時</th>
				<td>${buyOrder.shipping_if_out }　様</td>
			</tr>
		</c:if>
		<tr style="border-top: 1px solid gray">
			<th>支払い方法</th>
			<td>
				<c:if test="${buyOrder.payment_category==1 }">給与控除（${buyOrder.division }回）</c:if>
				<c:if test="${buyOrder.payment_category==2 }">個人振込（${buyOrder.from_bank }）</c:if>
			</td>
			<td colspan="2"></td>
		</tr>
	</table>



	<br>
	<h3>商品リスト</h3>
	<table class="table table-hover">
		<thead>
			<tr>
				<th class="productList">商品番号</th>
				<th class="productList">商品名</th>
				<th class="productList">数量</th>
				<th class="productList">価格</th>
				<th class="productList">色</th>
				<th class="productList">柄</th>
				<th class="productList">サイズ</th>
				<th class="productList">補足</th>
			</tr>
		</thead>
		<tbody>
			<!-- map -->
			<c:forEach items="${buyProductMap }" var="product">
				<tr>
					<td class="productList">
						<fmt:parseNumber value="${fn:substring(product.value.productIdString, 0, 3) }"/>号<fmt:parseNumber value="${fn:substring(product.value.productIdString, 3, 7) }"/>頁<fmt:parseNumber value="${fn:substring(product.value.productIdString, 7, 10) }"/>番
					</td>
					<td class="productList">${product.value.productName }</td>
					<td align="right"><fmt:formatNumber value="${product.value.quantity }" /></td>
					<td align="right"><fmt:formatNumber value="${product.value.price }" /></td>
					<td class="productList">${product.value.selectedColor }</td>
					<td class="productList">${product.value.selectedPattern }</td>
					<td class="productList">${product.value.selectedSize }</td>
					<td class="productList">
					<input type="text" name="pNote" maxlength="50" value="${product.value.notes }" onblur="memo(this.value, '${product.key }')">
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<hr>
	<p>小計　　<fmt:formatNumber value="${sumPrice }" />円（税込）</p>
	<c:if test="${buyOrder.payment_category==1&&buyOrder.division!=1 }">
	<p>手数料　<fmt:formatNumber value="${commission }" />円（３％）</p>
	</c:if>
	<p>合計　　<fmt:formatNumber value="${totalPrice }" />円</p>

	<c:if test="${buyMember.credit_amount<totalPrice }">	<!-- 与信額が合計より少ない場合　合計額の変数名必要 -->
	<p><font color="red"><b>お客様の与信額以上になります。担当者に確認してください。</b></font></p>
	</c:if>
	<form action="OrderCheck" method="post" onsubmit="return checkStaff()">
	<p>担当者名　<input type="text" name="orderStaff" id="orderStaff"></p>
	<br><br>
	<!-- <p><a href="productCheck.html" class="btn btn-primary">内容修正</a></p> -->
	<div align="center">
		<input type="submit" value="注文確定" class="btn btn-primary" style="width: 200px">
		<input type="button" style="width: 200px" onclick="cancelOrder()" class="btn btn-danger" id="cancelBtn" value="注文の取り消し">
		</div>
	<br><br>
	</form>

	</div>

</body>
</html>