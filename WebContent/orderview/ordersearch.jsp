<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String msg = (String)session.getAttribute("msg"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注文受付票検索画面</title>
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
	crossorigin="anonymous">
</script>
<style type="text/css">
container{
	padding : 20px 30px;
}
</style>
</head>
<body>
<div class="container">
	<h1>注文受付票検索</h1>
	<p>検索したい項目を入力してください。<br>複数項目入力すると絞り込み検索を行えます。</p>
	<form name="searchcondition" action="../ordersearch" method="post">
		注文日<br>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="date" name="date_min">
		&nbsp;～&nbsp;
		<input type="date" name="date_max"><br><br>
		担当者名&nbsp;&nbsp;※部分一致<br>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="staff"><br><br>
		企業名&nbsp;&nbsp;※部分一致<br>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="company_name"><br><br>
		会員番号&nbsp;&nbsp;※完全一致<br>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="member_number"><br><br>
		会員名&nbsp;&nbsp;※部分一致<br>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="name"><br><br>
		注文受付票番号&nbsp;&nbsp;※完全一致<br>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="order_id"><br>
	</form><br>
	<% if(msg != null) { %>
		<p style="color:red;"><%= msg %></p>
	<% } %>
	<a href="#" class="btn btn-primary" onclick="document.searchcondition.submit();return false;">検索</a><br><br><br>
	<a href="clear.jsp" class="btn btn-warning">メインメニューに戻る</a>
</div>
</body>
</html>